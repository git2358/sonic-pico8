require("bustedhelper")
local sprite_data = require("engine/render/sprite_data")
local animated_sprite_data = require("engine/render/animated_sprite_data")
local animated_sprite = require("engine/render/animated_sprite")

describe('animated_sprite', function ()

  local spr_data1 = sprite_data(sprite_id_location(1, 0), tile_vector(1, 2), vector(4, 6))
  local spr_data2 = sprite_data(sprite_id_location(2, 0), tile_vector(1, 2), vector(4, 6))
  local anim_spr_data = animated_sprite_data({spr_data1, spr_data2}, 10, true)

  describe('_init', function ()
    it('should init a sprite with all parameters', function ()
      local anim_spr = animated_sprite(anim_spr_data)
      assert.are_same({anim_spr_data, 1, 0},
        {anim_spr.data, anim_spr.current_step, anim_spr.local_frame})
    end)
    it('should init a sprite with looping false by default', function ()
      local anim_spr_data = animated_sprite_data({spr_data1, spr_data2}, 2)
      assert.is_false(anim_spr_data.looping)
    end)
  end)

  describe('_tostring', function ()

    it('should return a string describing data, current step and local frame', function ()
      local anim_spr = animated_sprite(anim_spr_data)
      anim_spr.current_step = 2
      anim_spr.local_frame = 5
      assert.are_equal("animated_sprite(animated_sprite_data([2 sprites], 10, true), 2, 5)", anim_spr:_tostring())
    end)

  end)

end)
