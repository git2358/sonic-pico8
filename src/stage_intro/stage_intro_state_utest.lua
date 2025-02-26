require("test/bustedhelper_stage_intro")
require("common_stage_intro")
require("resources/visual_ingame_addon")  -- stage_intro mostly uses ingame visuals

local stage_intro_state = require("stage_intro/stage_intro_state")

local coroutine_runner = require("engine/application/coroutine_runner")
local postprocess = require("engine/render/postprocess")
local overlay = require("engine/ui/overlay")

local picosonic_app = require("application/picosonic_app_stage_intro")
local stage_data = require("data/stage_data")
local stage_intro_data = require("data/stage_intro_data")
local base_stage_state = require("ingame/base_stage_state")
local camera_class = require("ingame/camera")
local player_char = require("ingame/playercharacter")
local visual_stage = require("resources/visual_stage")

describe('stage_intro_state', function ()

  describe('static members', function ()

    it('type is ":stage_intro"', function ()
      assert.are_equal(':stage_intro', stage_intro_state.type)
    end)

  end)

  describe('(with instance)', function ()

    local state

    before_each(function ()
      local app = picosonic_app()
      state = stage_intro_state()
      -- no need to register gamestate properly, just add app member to pass tests
      state.app = app
    end)

    describe('init', function ()

      setup(function ()
        spy.on(base_stage_state, "init")
      end)

      teardown(function ()
        base_stage_state.init:revert()
      end)

      after_each(function ()
        base_stage_state.init:clear()
      end)

      it('should call base constructor', function ()
        assert.spy(base_stage_state.init).was_called(1)
        assert.spy(base_stage_state.init).was_called_with(match.ref(state))
      end)

      it('should initialize members', function ()
        assert.are_same({
            ':stage_intro',
            stage_data[1],
            camera_class(),
            overlay(),
            postprocess(),
          },
          {
            state.type,
            state.curr_stage_data,
            state.camera,
            state.overlay,
            state.postproc,
          })
      end)

    end)

    describe('on_enter', function ()

      setup(function ()
        stub(camera_class, "setup_for_stage")
        stub(_G, "reload")
        stub(stage_intro_state, "spawn_player_char")
        stub(picosonic_app, "start_coroutine")
      end)

      teardown(function ()
        camera_class.setup_for_stage:revert()
        reload:revert()
        stage_intro_state.spawn_player_char:revert()
        picosonic_app.start_coroutine:revert()
      end)

      after_each(function ()
        camera_class.setup_for_stage:clear()
        reload:clear()
        stage_intro_state.spawn_player_char:clear()
        picosonic_app.start_coroutine:clear()
      end)

      it('should call setup_for_stage on camera with current stage data', function ()
        state:on_enter()

        assert.spy(camera_class.setup_for_stage).was_called(1)
        assert.spy(camera_class.setup_for_stage).was_called_with(match.ref(state.camera), state.curr_stage_data)
      end)

      it('should hardcode set loaded_map_region_coords', function ()
        state:on_enter()

        assert.are_equal(vector(0, 1), state.loaded_map_region_coords)
      end)

      it('should call reload for stage tiles, Sonic main sprites (general memory storage) and stage1, map 01 (hardcoded)', function ()
        state:on_enter()

        assert.spy(reload).was_called(3)
        assert.spy(reload).was_called_with(0x0, 0x0, 0x2000, "data_stage1_intro.p8")
        assert.spy(reload).was_called_with(0x4b00, 0x400, 0x1000, "data_stage_sonic.p8")
        assert.spy(reload).was_called_with(0x2000, 0x2000, 0x1000, "data_stage1_01.p8")
      end)

      it('should call spawn_player_char', function ()
        state:on_enter()

        assert.spy(stage_intro_state.spawn_player_char).was_called(1)
        assert.spy(stage_intro_state.spawn_player_char).was_called_with(match.ref(state))
      end)

      it('should assign spawned player char to camera target', function ()
        assert.are_equal(state.player_char, state.camera.target_pc)
      end)

      it('should call start_coroutine_method on show_stage_splash_async', function ()
        state:on_enter()

        assert.spy(picosonic_app.start_coroutine).was_called(1)
        assert.spy(picosonic_app.start_coroutine).was_called_with(match.ref(state.app), stage_intro_state.show_stage_splash_async, match.ref(state))
      end)

    end)

    describe('update', function ()

      setup(function ()
        stub(player_char, "update")
        stub(camera_class, "update")
      end)

      teardown(function ()
        player_char.update:revert()
        camera_class.update:revert()
      end)

      after_each(function ()
        player_char.update:clear()
        camera_class.update:clear()
      end)

      it('should update player character, camera', function ()
        state.player_char = player_char()

        state:update()

        assert.spy(player_char.update).was_called(1)
        assert.spy(player_char.update).was_called_with(match.ref(state.player_char))

        assert.spy(camera_class.update).was_called(1)
        assert.spy(camera_class.update).was_called_with(match.ref(state.camera))
      end)

    end)

    describe('render', function ()

      setup(function ()
        stub(visual_stage, "render_background")
        stub(stage_intro_state, "render_stage_elements")
        stub(stage_intro_state, "render_overlay")
      end)

      teardown(function ()
        visual_stage.render_background:revert()
        stage_intro_state.render_stage_elements:revert()
        stage_intro_state.render_overlay:revert()
      end)

      after_each(function ()
        visual_stage.render_background:clear()
        stage_intro_state.render_stage_elements:clear()
        stage_intro_state.render_overlay:clear()
      end)

      it('should call render_background, render_stage_elements, render_overlay', function ()
        state:render()
        assert.spy(visual_stage.render_background).was_called(1)
        assert.spy(visual_stage.render_background).was_called_with(state.camera.position)
        assert.spy(stage_intro_state.render_stage_elements).was_called(1)
        assert.spy(stage_intro_state.render_stage_elements).was_called_with(match.ref(state))
        assert.spy(stage_intro_state.render_overlay).was_called(1)
        assert.spy(stage_intro_state.render_overlay).was_called_with(match.ref(state))
      end)

    end)

    describe('render_overlay', function ()

      setup(function ()
        stub(overlay, "draw")
      end)

      teardown(function ()
        overlay.draw:revert()
      end)

      after_each(function ()
        overlay.draw:clear()
      end)

      it('should reset camera', function ()
        state:render_overlay()
        assert.are_same(vector.zero(), vector(pico8.camera_x, pico8.camera_y))
      end)

      it('should call overlay:draw', function ()
        state:render_overlay()
        assert.spy(overlay.draw).was_called(1)
        assert.spy(overlay.draw).was_called_with(match.ref(state.overlay))
      end)

    end)

    describe('show_stage_splash_async', function ()

      local corunner

      before_each(function ()
        corunner = coroutine_runner()
        corunner:start_coroutine(stage_intro_state.show_stage_splash_async, state)
      end)

      -- this coroutine become more complex, so only test it doesn't crash
      it('show_stage_splash_async should not crash', function ()
        -- a time long enough to cover initial delay then full animation
        for i = 1, stage_intro_data.show_stage_splash_delay * state.app.fps - 1 + 160 do
          corunner:update_coroutines()
        end
      end)

    end)

  end)  -- (with instance)

end)
