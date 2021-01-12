local animated_sprite_data = require("engine/render/animated_sprite_data")
local sprite_data = require("engine/render/sprite_data")

-- visuals common to both cartridges
-- require visual_titlemenu/ingame_addon for data add-on directly on this table
-- we recommend requiring the add-on in main, so each cartridge can require the correct
--  add-on once and for all
-- for utests, require the add-on for the matching cartridge (if both work as with emerald,
--  pick any) just after bustedhelper (even before requiring
--  visual_common itself!) so you get the minimum
--  required to define visual data (basically new_struct in class.lua)
--  and at the same time make sure visual add-on data is ready for tricky modules
--  that need it at require time because they define outer scope variables
--  relying on them (e.g. stage_state.spawn_object_callbacks_by_tile_id and
--    tile_test_data.mock_raw_tile_collision_data)
-- be careful, as even if a module doesn't seem to use visual data, it may indirectly require
--  stage_state or tile_test_data and therefore require the add-on to avoid error at require time
-- in addition, modules like emerald find their sprite data
--  in both add-ons at different locations, and therefore should not require add-on themselves
--  and let the higher-level modules do it
local visual = {
  -- emerald color palettes (apply to red emerald sprite to get them all)
  emerald_colors = {
    -- light color, dark color
    {colors.red, colors.dark_purple},
    {colors.peach, colors.orange},
    {colors.pink, colors.dark_purple},
    {colors.indigo, colors.dark_gray},
    {colors.blue, colors.dark_blue},
    {colors.green, colors.dark_green},
    {colors.yellow, colors.orange},
    {colors.orange, colors.brown},
  }
}

local sprite_data_t = {
  -- COMMON INITIAL SPRITES
--#if mouse
  cursor = sprite_data(sprite_id_location(9, 0), nil, nil, colors.pink),
--#endif

  -- ANIMATION SPRITES
  emerald_pick_fx1 = sprite_data(sprite_id_location(12, 0), nil, vector(4, 4), colors.pink),
  emerald_pick_fx2 = sprite_data(sprite_id_location(13, 0), nil, vector(4, 4), colors.pink),
  emerald_pick_fx3 = sprite_data(sprite_id_location(14, 0), nil, vector(4, 4), colors.pink),
  emerald_pick_fx4 = sprite_data(sprite_id_location(15, 0), nil, vector(4, 4), colors.pink),
}

visual.sprite_data_t = sprite_data_t

-- ANIMATIONS
-- the pick action is in-game only, but since it is a sparkle it is convenient to liven up
--  the titlemenu as well (e.g. on the emblem or emeralds)
visual.animated_sprite_data_t = {
  emerald_pick_fx = {
    -- manual construction via sprite direct access appears longer than animated_sprite_data.create in code,
    --  but this will actually be minified and therefore very compact (as names are not protected)
    ["once"] = animated_sprite_data(
      {
        sprite_data_t.emerald_pick_fx1,
        sprite_data_t.emerald_pick_fx2,
        sprite_data_t.emerald_pick_fx3,
        sprite_data_t.emerald_pick_fx4
      },
      5,
      2  -- anim_loop_modes.freeze_last (just to sport forgotten fx clear easily)
    )
  },
}

return visual
