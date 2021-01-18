local stage_data = require("data/stage_data")
-- visual requires ingame add-on to have access to spring sprite data
local visual = require("resources/visual_common")

local spring = new_class()

-- direction       directions     direction of the spring (where character should bounce)
-- location        tile_location  global location of the spring on the map
-- extended_timer  float          > 0 if the spring is currently extended
--                                time until the extension ends (seconds)
function spring:init(direction, global_loc)
  self.direction = direction
  self.global_loc = global_loc
  self.extended_timer = 0
end

--#if tostring
function spring:_tostring()
 return "spring("..joinstr(', ', self.direction, self.global_loc)..")"
end
--#endif

function spring:extend()
  -- if spring was already extended, simply reset the timer
  -- collision mask doesn't change anyway
  self.extended_timer = stage_data.spring_extend_duration
end

function spring:update()
  -- update timer
  -- no need to do anything else, other methods will check if timer > 0
  --  to know if spring is extended or not
  if self.extended_timer > 0 then
    self.extended_timer = self.extended_timer - delta_time60
    if self.extended_timer <= 0 then
      self.extended_timer = 0
    end
  end
end

function spring:get_pivot()
  return self.global_loc:to_topleft_position() + visual.sprite_data_t.spring.pivot
end

-- render the spring at its current global location
function spring:render()
  if self.extended_timer > 0 then
    visual.sprite_data_t.spring_extended:render(self:get_pivot())
  else
    visual.sprite_data_t.spring:render(self:get_pivot())
  end
end

return spring
