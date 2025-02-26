local postprocess = require("engine/render/postprocess")
local label = require("engine/ui/label")
local overlay = require("engine/ui/overlay")
local rectangle = require("engine/ui/rectangle")

local stage_data = require("data/stage_data")
local stage_intro_data = require("data/stage_intro_data")
local base_stage_state = require("ingame/base_stage_state")
local camera_class = require("ingame/camera")
local player_char = require("ingame/playercharacter")
local visual_stage = require("resources/visual_stage")
local ui_animation = require("ui/ui_animation")

local stage_intro_state = derived_class(base_stage_state)

stage_intro_state.type = ':stage_intro'

function stage_intro_state:init()
  base_stage_state.init(self)

  -- stage id
  self.curr_stage_id = 1

  -- data
  self.curr_stage_data = stage_data[1]

  -- render

  -- create camera, but wait for player character to spawn before assigning it a target
  -- see on_enter for how we warp it to a good place first
  self.camera = camera_class()

  self.overlay = overlay()
  self.postproc = postprocess()
end

function stage_intro_state:on_enter()
  -- like the original stage_state, we need to have collision masks in builtin spritesheet
  -- in v3, the builtin contains *only* collision masks so we must reload the *full* spritesheet
  --  for stage intro, hence reload memory length 0x2000
  -- alternatively, like stage clear, we could have a custom intro cinematics that doesn't use physics
  --  at all, and so no tile collision data is needed and we can just set intro spritesheet as built-in data
  local runtime_data_path = "data_stage"..self.curr_stage_id.."_intro.p8"
  reload(0x0, 0x0, 0x2000, runtime_data_path)

  -- Reduced version of Sonic sprite copy, copied from stage_state:reload_runtime_data
  --  We know Sonic doesn't spin dash during the intro, so storing the main sprites in general memory will be enough
  -- Copy the first 8 rows = 4 double rows at once
  reload(0x4b00, 0x400, 0x1000, "data_stage_sonic.p8")

  self.camera:setup_for_stage(self.curr_stage_data)

  -- for now, just hardcode region loading/coords to simplify, as we know the intro
  -- only takes place in the region (0, 1)
  reload(0x2000, 0x2000, 0x1000, self:get_map_region_filename(0, 1))
  self.loaded_map_region_coords = vector(0, 1)

  self:spawn_player_char()
  self.camera.target_pc = self.player_char

  self.app:start_coroutine(self.show_stage_splash_async, self)
end

-- never called, we directly load ingame cartridge
--[[
function stage_intro_state:on_exit()
  -- clear all coroutines
  self.app:stop_all_coroutines()

  -- clear object state vars
  self.overlay:clear_drawables()

  -- reinit camera offset for other states
  camera()
end
--]]


-- setup

function stage_intro_state:update()
  self.player_char:update()
  self.camera:update()
  -- self:check_reload_map_region()
end

function stage_intro_state:render()
  -- no need to floor camera position like stage_state, since we don't really move on X
  visual_stage.render_background(self.camera.position)
  self:render_stage_elements()
  self:render_overlay()
  self.postproc:apply()
end

-- render the stage elements with the main camera:
-- - environment
-- - player character
function stage_intro_state:render_stage_elements()
  self:render_environment_midground()
  self:render_player_char()
  self:render_environment_foreground()
end

-- render the player character at its current position
function stage_intro_state:render_player_char()
  self:set_camera_with_origin()

  self.player_char:render()
end

-- render the title overlay with a fixed ui camera
function stage_intro_state:render_overlay()
  camera()
  self.overlay:draw()
end

function stage_intro_state:show_stage_splash_async()
  -- fade in
  for i = 5, 0, -1 do
    self.postproc.darkness = i
    yield_delay_frames(6)
  end

  self.app:yield_delay_s(stage_intro_data.show_stage_splash_delay)

  -- init position y is -height so it starts just at the screen top edge
  local banner = rectangle(vector(9, -106), 32, 106, colors.red)
  self.overlay:add_drawable("banner", banner)

  -- banner text accompanies text, and ends at y = 89, so starts at y = 89 - 106 = -17
  local banner_text = label("pico\nsonic", vector(16, -17), colors.white)
  self.overlay:add_drawable("banner_text", banner_text)

  -- make banner enter from the top
  ui_animation.move_drawables_on_coord_async("y", {banner, banner_text}, {0, 89}, -106, 0, 9)

  local zone_rectangle = rectangle(vector(128, 45), 47, 3, colors.black)
  self.overlay:add_drawable("zone_rect", zone_rectangle)

  local zone_label = label(self.curr_stage_data.title, vector(129, 43), colors.white)
  self.overlay:add_drawable("zone", zone_label)

  -- make text enter from the right
  ui_animation.move_drawables_on_coord_async("x", {zone_rectangle, zone_label}, {0, 1}, 128, 41, 14)

  -- keep zone displayed for a moment
  yield_delay_frames(101)

  -- make banner exit to the top
  ui_animation.move_drawables_on_coord_async("y", {banner, banner_text}, {0, 89}, 0, -106, 8)

  -- make text exit to the right
  ui_animation.move_drawables_on_coord_async("x", {zone_rectangle, zone_label}, {0, 1}, 41, 128, 14)

  self.overlay:remove_drawable("banner")
  self.overlay:remove_drawable("banner_text")
  self.overlay:remove_drawable("zone")

  -- splash is over, load ingame cartridge and give control to player
  -- prefer passing basename for compatibility with .p8.png
  load('picosonic_ingame')

--[[#pico8
  assert(false, "could not load picosonic_ingame")
--#pico8]]
end

return stage_intro_state
