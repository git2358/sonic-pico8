-- base class is used across three cartridges, but ingame has the most info,
--  bustedhelper_ingame in particular requires resources/visual_ingame_addon
--  so it's more convenient to just require that for the tests
require("test/bustedhelper_ingame")

local base_stage_state = require("ingame/base_stage_state")

local location_rect = require("engine/core/location_rect")
local sprite_data = require("engine/render/sprite_data")

-- same remark as for bustedhelper, we just pick picosonic_app_ingame for convenience
local picosonic_app = require("application/picosonic_app_ingame")
local camera_class = require("ingame/camera")
local player_char = require("ingame/playercharacter")
local visual = require("resources/visual_common")
local tile_repr = require("test_data/tile_representation")
local tile_test_data = require("test_data/tile_test_data")

describe('base_base_stage_state', function ()

  describe('init', function ()

    it('should initialize members', function ()
      local state = base_stage_state()
      assert.are_same({
          camera_class(),
          {},
        },
        {
          state.camera,
          state.palm_tree_leaves_core_global_locations,
        })
    end)

  end)

  describe('(with instance)', function ()

    local state

    before_each(function ()
      local app = picosonic_app()
      state = base_stage_state()
      -- no need to register gamestate properly, just add app member to pass tests
      state.app = app
    end)

    -- camera

    describe('set_camera_with_origin', function ()

      it('should set the pico8 camera so that it is centered on the camera position, with origin (0, 0) by default', function ()
        state.camera:init_position(vector(24, 13))
        state:set_camera_with_origin()
        assert.are_same(vector(24 - 128 / 2, 13 - 128 / 2), vector(pico8.camera_x, pico8.camera_y))
      end)

      it('should set the pico8 camera so that it is centered on the camera position, with custom origin subtracted', function ()
        state.camera:init_position(vector(24, 13))
        state:set_camera_with_origin(vector(10, 20))
        assert.are_same(vector(24 - 128 / 2 - 10, 13 - 128 / 2 - 20), vector(pico8.camera_x, pico8.camera_y))
      end)

    end)

    describe('(region at (2, 3))', function ()

      setup(function ()
        stub(base_stage_state, "get_region_topleft_location", function (self)
          return location(2, 3)
        end)
      end)

      teardown(function ()
        base_stage_state.get_region_topleft_location:revert()
      end)

      describe('global_to_region_location', function ()
        it('global loc (2, 4) - (2, 3) => (0, 1)', function ()
          assert.are_equal(location(0, 1), state:global_to_region_location(location(2, 4)))
        end)
      end)

      describe('region_to_global_location', function ()
        it('region loc (0, 1) + (2, 3) => (2, 4)', function ()
          assert.are_equal(location(2, 4), state:region_to_global_location(location(0, 1)))
        end)
      end)

    end)

    describe('spawn_player_char', function ()

      setup(function ()
        stub(player_char, "spawn_at")
      end)

      teardown(function ()
        player_char.spawn_at:revert()
      end)

      before_each(function ()
        -- clear count before test as entering stage will auto-spawn character once
        player_char.spawn_at:clear()

        -- dummy data for test to work
        state.curr_stage_data = {
          spawn_location = location(5, 47)
        }
      end)

      it('should spawn the player character at the stage spawn location', function ()
        state:spawn_player_char()

        local player_char = state.player_char
        assert.is_not_nil(player_char)

        local spawn_position = state.curr_stage_data.spawn_location:to_topleft_position()

        assert.spy(player_char.spawn_at).was_called(1)
        assert.spy(player_char.spawn_at).was_called_with(match.ref(state.player_char), spawn_position)
      end)

    end)

    describe('is_tile_in_area', function ()

      it('should return true for tile in one of the entrance areas', function ()
        -- this depends on stage_data[1].loop_entrance_areas content and
        --  location_rect:contains correctness
        assert.is_true(state:is_tile_in_area(location(4, 4),
          {location_rect(0, 0, 2, 2), location_rect(4, 4, 6, 6)}))
      end)

      it('should return false for tile not in any of the entrance areas', function ()
        -- this depends on stage_data[1].loop_entrance_areas content and
        --  location_rect:contains correctness
        assert.is_true(state:is_tile_in_area(location(5, 5),
          {location_rect(0, 0, 2, 2), location_rect(4, 4, 6, 6)}))
      end)

    end)

    describe('is_tile_in_loop_entrance', function ()

      before_each(function ()
        -- customize loop areas locally. We are redefining a table so that won't affect
        --  the original data table in stage_data.lua. To simplify we don't redefine everything,
        --  but if we need to for the tests we'll just add the missing members
        state.curr_stage_data = {
          loop_entrance_areas = {location_rect(1, 0, 3, 4)}
        }
      end)

      -- we wrote those tests before extracting is_tile_in_area and it's simpler
      --  to test result than stubbing is_tile_in_area with a dummy function anyway,
      --  so we keep direct testing despite overlapping is_tile_in_area utests above

      it('should return true for tile in one of the entrance areas, but not the top-left corner reserved to trigger', function ()
        assert.is_true(state:is_tile_in_loop_entrance(location(2, 0)))
      end)

      it('should return false for tile just on the top-left corner entrance trigger (and not inside another area excluding trigger)', function ()
        assert.is_false(state:is_tile_in_loop_entrance(location(1, 0)))
      end)

      it('should return false for tile not in any of the entrance areas', function ()
        assert.is_false(state:is_tile_in_loop_entrance(location(0, 0)))
      end)

    end)

    describe('is_tile_in_loop_exit', function ()

      before_each(function ()
        -- customize loop areas locally. We are redefining a table so that won't affect
        --  the original data table in stage_data.lua. To simplify we don't redefine everything,
        --  but if we need to for the tests we'll just add the missing members
        state.curr_stage_data = {
          loop_exit_areas = {location_rect(-1, 0, 0, 2)}
        }
      end)

      it('should return true for tile in one of the exit areas, but not the top-right corner reserved to trigger', function ()
        assert.is_true(state:is_tile_in_loop_exit(location(0, 1)))
      end)

      it('should return false for tile just on the top-right corner exit trigger (and not inside another area excluding trigger)', function ()
        assert.is_false(state:is_tile_in_loop_exit(location(0, 0)))
      end)

      it('should return false for tile not in any of the exit areas', function ()
        assert.is_false(state:is_tile_in_loop_exit(location(0, -1)))
      end)

    end)

    describe('set_camera_with_region_origin', function ()

      setup(function ()
        stub(base_stage_state, "set_camera_with_origin")
      end)

      teardown(function ()
        base_stage_state.set_camera_with_origin:revert()
      end)

      after_each(function ()
        base_stage_state.set_camera_with_origin:clear()
      end)

      it('should call set_camera_with_origin with current region topleft xy', function ()
        state.loaded_map_region_coords = vector(2, 1)

        state:set_camera_with_region_origin()

        assert.spy(state.set_camera_with_origin).was_called(1)
        assert.spy(state.set_camera_with_origin).was_called_with(match.ref(state), vector(tile_size * map_region_tile_width * 2, tile_size * map_region_tile_height * 1))
      end)

    end)


    -- region helpers

    describe('get_region_topleft_location', function ()

      it('region (0, 0) => (0, 0)', function ()
        state.loaded_map_region_coords = vector(0, 0)
        assert.are_same(location(0, 0), state:get_region_topleft_location())
      end)

      it('region (0.5, 1) => (64, 32)', function ()
        state.loaded_map_region_coords = vector(0.5, 1)
        assert.are_same(location(64, 32), state:get_region_topleft_location())
      end)

    end)


    -- render


    describe('render_environment_midground', function ()

      setup(function ()
        tile_test_data.setup()

        stub(base_stage_state, "set_camera_with_region_origin")
        stub(base_stage_state, "render_environment_midground_static")
        stub(base_stage_state, "render_environment_midground_waterfall")
      end)

      teardown(function ()
        base_stage_state.set_camera_with_region_origin:revert()
        base_stage_state.render_environment_midground_static:revert()
        base_stage_state.render_environment_midground_waterfall:revert()
      end)

      after_each(function ()
        pico8:clear_map()

        base_stage_state.set_camera_with_region_origin:clear()
        base_stage_state.render_environment_midground_static:clear()
        base_stage_state.render_environment_midground_waterfall:clear()
      end)

      it('should call set_camera_with_region_origin, render_environment_midground_static, render_environment_midground_waterfall', function ()
        state:render_environment_midground()

        assert.spy(base_stage_state.set_camera_with_region_origin).was_called(1)
        assert.spy(base_stage_state.set_camera_with_region_origin).was_called_with(match.ref(state))

        assert.spy(base_stage_state.render_environment_midground_static).was_called(1)
        assert.spy(base_stage_state.render_environment_midground_static).was_called_with(match.ref(state))

        assert.spy(base_stage_state.render_environment_midground_waterfall).was_called(1)
        assert.spy(base_stage_state.render_environment_midground_waterfall).was_called_with(match.ref(state))
      end)

    end)

    describe('(with tile_test_data)', function ()

      setup(function ()
        stub(base_stage_state, "set_color_palette_for_waterfall_animation")
        stub(base_stage_state, "set_camera_with_region_origin")
        stub(base_stage_state, "set_camera_with_origin")
        stub(sprite_data, "render")
        stub(_G, "spr")
        stub(_G, "map")
        stub(_G, "set_unique_transparency")
      end)

      teardown(function ()
        tile_test_data.teardown()

        base_stage_state.set_color_palette_for_waterfall_animation:revert()
        base_stage_state.set_camera_with_region_origin:revert()
        base_stage_state.set_camera_with_origin:revert()
        sprite_data.render:revert()
        spr:revert()
        map:revert()
        set_unique_transparency:revert()
      end)

      before_each(function ()
        -- 2 midground tiles on screen, 1 outside when camera is at (0, 0)
        mock_mset(0, 0, tile_repr.spring_up_repr_tile_id)
        mock_mset(3, 0, tile_repr.spring_up_repr_tile_id)
        mock_mset(9, 0, tile_repr.spring_up_repr_tile_id)
        -- 1 undefined tile onscreen (it's foreground hiding leaf in PICO-8,
        --  but what matters here is that midground flag is not set)
        mock_mset(5, 0, 46)
        -- foreground tile to test foreground layer
        mock_mset(0, 1, tile_repr.grass_top_decoration1)

        state.curr_stage_data = {
          loop_exit_areas = {location_rect(-1, 0, 0, 2)},
          loop_entrance_areas = {location_rect(1, 0, 3, 4)},
          goal_x = 3000
        }

        -- palm tree example to demonstrate extra foreground
        state.palm_tree_leaves_core_global_locations = {
          location(10, 2)
        }
      end)

      after_each(function ()
        pico8:clear_map()

        base_stage_state.set_color_palette_for_waterfall_animation:clear()
        base_stage_state.set_camera_with_region_origin:clear()
        base_stage_state.set_camera_with_origin:clear()
        sprite_data.render:clear()
        spr:clear()
        map:clear()
        set_unique_transparency:clear()
      end)

      it('render_environment_midground_static should call set_unique_transparency and map for all midground sprites', function ()
        -- note that we reverted to using map for performance, so this test doesn't need to be
        --  in the tile test data setup context anymore
        state.camera:init_position(vector(0, 0))
        state.loaded_map_region_coords = vector(0, 0)

        state:render_environment_midground_static()

        assert.spy(set_unique_transparency).was_called(1)
        assert.spy(set_unique_transparency).was_called_with(colors.pink)

        assert.spy(map).was_called(1)
        assert.spy(map).was_called_with(0, 0, 0, 0, map_region_tile_width, map_region_tile_height, sprite_masks.midground)
      end)

      it('render_environment_midground_waterfall should call set_color_palette_for_waterfall_animation and map for all waterfall sprites', function ()
        -- note that we reverted to using map for performance, so this test doesn't need to be
        --  in the tile test data setup context anymore
        state.camera:init_position(vector(0, 0))
        state.loaded_map_region_coords = vector(0, 0)

        state:render_environment_midground_waterfall()

        assert.spy(base_stage_state.set_color_palette_for_waterfall_animation).was_called(1)
        assert.spy(base_stage_state.set_color_palette_for_waterfall_animation).was_called_with(match.ref(state))

        assert.spy(map).was_called(1)
        assert.spy(map).was_called_with(0, 0, 0, 0, map_region_tile_width, map_region_tile_height, sprite_masks.waterfall)
      end)

      it('(ingame state) render_environment_foreground should call spr on tiles present on screen', function ()
        -- simulate an ingame state
        state.type = ':stage'

        -- this test was copy-pasted from render_environment_midground
        state.camera:init_position(vector(0, 0))
        state.loaded_map_region_coords = vector(2, 1)

        state:render_environment_foreground()

        -- we can't check call order, but set camera methods should be called consistently with map!
        assert.spy(base_stage_state.set_camera_with_region_origin).was_called(1)
        assert.spy(base_stage_state.set_camera_with_region_origin).was_called_with(match.ref(state))

        assert.spy(map).was_called(2)

        assert.spy(map).was_called_with(0, 0, 0, 0, map_region_tile_width, map_region_tile_height, sprite_masks.foreground)

        assert.spy(base_stage_state.set_camera_with_origin).was_called(1)
        assert.spy(base_stage_state.set_camera_with_origin).was_called_with(match.ref(state))

        local area = state.curr_stage_data.loop_entrance_areas[1]
        -- (2, 1) comes from state.loaded_map_region_coords
        assert.spy(map).was_called_with(area.left - 2 * 128, area.top - 1 * 32,
          tile_size * area.left, tile_size * area.top,
          area.right - area.left + 1, area.bottom - area.top + 1,
          sprite_masks.midground)

        assert.spy(sprite_data.render).was_called(3)
        -- top
        assert.spy(sprite_data.render).was_called_with(match.ref(visual.sprite_data_t.palm_tree_leaves_top), vector(8 * 10, 8 * 2))
        -- right
        assert.spy(sprite_data.render).was_called_with(match.ref(visual.sprite_data_t.palm_tree_leaves_right), vector(8 * 11, 8 * 2))
        -- left (right flipped x)
        assert.spy(sprite_data.render).was_called_with(match.ref(visual.sprite_data_t.palm_tree_leaves_right), vector(8 * 10, 8 * 2), true)
      end)

      it('(non-ingame state) render_environment_foreground should call spr on tiles present on screen', function ()
        -- simulate a non-ingame state
        state.type = ':stage_clear'

        -- this test was copy-pasted from render_environment_midground
        state.camera:init_position(vector(0, 0))
        state.loaded_map_region_coords = vector(2, 1)

        state:render_environment_foreground()

        -- we can't check call order, but set camera methods should be called consistently with map!
        assert.spy(base_stage_state.set_camera_with_region_origin).was_called(1)
        assert.spy(base_stage_state.set_camera_with_region_origin).was_called_with(match.ref(state))

        assert.spy(map).was_called(1)

        assert.spy(map).was_called_with(0, 0, 0, 0, map_region_tile_width, map_region_tile_height, sprite_masks.foreground)
      end)

    end)  -- (with tile_test_data)

  end)  -- (with instance)

end)
