require("bustedhelper")
require("engine/core/math")

describe('almost_eq', function ()
  it('2.506 ~ 2.515', function ()
    assert.is_true(almost_eq(2.506, 2.515))
  end)
  it('2.505 ~! 2.516', function ()
    assert.is_false(almost_eq(2.505, 2.516))
  end)
  it('-5.984 ~ -5.9835 with eps=0.001', function ()
    assert.is_true(almost_eq(-5.984, -5.9835, 0.001))
  end)
  it('-5.984 !~ -5.9828 with eps=0.001', function ()
    assert.is_false(almost_eq(-5.984, -5.9828, 0.001))
  end)
  it('(-5.984, ) !~ -5.9828 with eps=0.001', function ()
    assert.is_false(almost_eq(-5.984, -5.9828, 0.001))
  end)

  it('vector(2.50501 5.8) ~ vector(2.515 5.79)', function ()
    assert.is_true(almost_eq(vector(2.50501, 5.8), vector(2.515, 5.79)))
  end)
  it('vector(2.505 5.8) !~ vector(2.515 5.788)', function ()
    assert.is_false(almost_eq(vector(2.505, 5.8), vector(2.515, 5.788)))
  end)
  it('vector(2.505 5.8) ~ vector(2.5049 5.799) with eps=0.001', function ()
    assert.is_true(almost_eq(vector(2.505, 5.8), vector(2.5049, 5.799), 0.001))
  end)
  it('vector(2.505 5.8) !~ vector(2.5047 5.789) with eps=0.001', function ()
    assert.is_false(almost_eq(vector(2.505, 5.8), vector(2.5047, 5.789), 0.001))
  end)

  it('should fail when comparing non-number, non-vector types', function ()
    assert.has_error(function ()
        almost_eq("text", 68)
      end,
      "almost_eq cannot compare text and 68")
  end)

end)

describe('tile_vector', function ()

  describe('_init', function ()
    it('should create a new tile vector with the right coordinates', function ()
      local loc = tile_vector(2, -6)
      assert.are_same({2, -6}, {loc.i, loc.j})
    end)
  end)

  describe('_tostring', function ()
    it('should return a string representation with the right coordinates', function ()
      local tile_vec = tile_vector(2, -6)
      assert.are_equal("tile_vector(2, -6)", tile_vec:_tostring())
    end)
  end)

  describe('__eq', function ()
    it('should return true if tile vectors have the same coordinates', function ()
      local tile_vec1 = tile_vector(1, -4)
      local tile_vec2 = tile_vector(1, -4)
      assert.is_true(tile_vec2:__eq(tile_vec1))
    end)
    it('should return false if tile vectors have different coordinates', function ()
      local tile_vec1 = tile_vector(1, -4)
      local tile_vec2 = tile_vector(1, -5)
      assert.is_false(tile_vec2:__eq(tile_vec1))
    end)
  end)

end)

describe('sprite_id_location', function ()

  describe('_tostring', function ()
    it('should return a string representation with the right coordinates', function ()
      local sprite_id_loc = sprite_id_location(2, -6)
      assert.are_equal("sprite_id_location(2, -6)", sprite_id_loc:_tostring())
    end)
  end)

  describe('__eq', function ()
    it('should return true if sprite locations have the same coordinates', function ()
      local sprite_id_loc1 = sprite_id_location(1, -4)
      local sprite_id_loc2 = sprite_id_location(1, -4)
      assert.is_true(sprite_id_loc2:__eq(sprite_id_loc1))
    end)
    it('should return false if sprite locations have different coordinates', function ()
      local sprite_id_loc1 = sprite_id_location(1, -4)
      local sprite_id_loc2 = sprite_id_location(1, -5)
      assert.is_false(sprite_id_loc2:__eq(sprite_id_loc1))
    end)
    it('should return false when comparing with a tile_vector with same coordinates', function ()
      local sprite_id_loc = sprite_id_location(1, -4)
      local tile_vec = tile_vector(1, -4)
      assert.is_false(sprite_id_loc:__eq(tile_vec))
      assert.is_false(tile_vec:__eq(sprite_id_loc))  -- check both senses
    end)
  end)

  describe('to_sprite_id', function ()
    it('(2 2) => 34', function ()
      assert.are_equal(34, sprite_id_location(2, 2):to_sprite_id())
    end)
    it('(15 1) => 31', function ()
      assert.are_equal(31, sprite_id_location(15, 1):to_sprite_id())
    end)
  end)

end)

describe('location', function ()

  describe('_tostring', function ()
    it('should return a string representation with the right coordinates', function ()
      local loc = location(2, -6)
      assert.are_equal("location(2, -6)", loc:_tostring())
    end)
  end)

  describe('__eq', function ()
    it('should return true if locations have the same coordinates', function ()
      local loc1 = location(1, -4)
      local loc2 = location(1, -4)
      assert.is_true(loc2:__eq(loc1))
    end)
    it('should return false if locations have different coordinates', function ()
      local loc1 = location(1, -4)
      local loc2 = location(1, -5)
      assert.is_false(loc2:__eq(loc1))
    end)
    it('should return false when comparing with a tile_vector with same coordinates', function ()
      local loc = location(1, -4)
      local tile_vec = tile_vector(1, -4)
      assert.is_false(loc:__eq(tile_vec))
      assert.is_false(tile_vec:__eq(loc))  -- check both senses
    end)
    it('should return false when comparing with a sprite_id_location with same coordinates', function ()
      local loc = location(1, -4)
      local sprite_id_loc = sprite_id_location(1, -4)
      assert.is_false(loc:__eq(sprite_id_loc))
      assert.is_false(sprite_id_loc:__eq(loc))  -- check both senses
    end)
  end)

  describe('to_topleft_position', function ()
    it('(1 2) => (8 16)', function ()
      assert.are_equal(vector(8, 16), location(1, 2):to_topleft_position())
    end)
  end)

  describe('to_center_position', function ()
    it('(1 2) => (12 20)', function ()
      assert.are_equal(vector(12, 20), location(1, 2):to_center_position())
    end)
  end)

end)

describe('vector', function ()

  describe('_init', function ()
    it('should create a new vector with the right coordinates', function ()
      local vec = vector(2, -6)
      assert.are_same({2, -6}, {vec.x, vec.y})
    end)
  end)

  describe('_tostring', function ()
    it('should return a string representation with the right coordinates', function ()
      local vec = vector(2, -6)
      assert.are_equal("vector(2, -6)", vec:_tostring())
    end)
  end)

  describe('__eq', function ()
    it('should return true if vectors have the same coordinates', function ()
      local vec1 = vector(1, -4)
      local vec2 = vector(1, -4)
      assert.is_true(vec2:__eq(vec1))
    end)
    it('should return false if vectors have different coordinates', function ()
      local vec1 = vector(1, -4)
      local vec2 = vector(1, -5)
      assert.is_false(vec2:__eq(vec1))
    end)
  end)

  describe('almost_eq', function ()
    it('vector(2.50501 5.8) ~ vector(2.515 5.79) (static version)', function ()
      -- due to precision issues, 2.505 !~ 2.515 with default eps=0.01!
      assert.is_true(vector.almost_eq(vector(2.50501, 5.8), vector(2.515, 5.79)))
    end)
    it('vector(2.50501 5.8) ~ vector(2.515 5.79)', function ()
      assert.is_true( vector(2.50501, 5.8):almost_eq(vector(2.515, 5.79)))
    end)
    it('vector(2.505 5.8) !~ vector(2.515 5.788)', function ()
      assert.is_false(vector(2.505, 5.8):almost_eq(vector(2.515, 5.788)))
    end)
    it('vector(2.505 5.8) ~ vector(2.5049 5.799) with eps=0.001', function ()
      assert.is_true( vector(2.505, 5.8):almost_eq(vector(2.5049, 5.799), 0.001))
    end)
    it('vector(2.505 5.8) !~ vector(2.5047 5.789) with eps=0.001', function ()
      assert.is_false(vector(2.505, 5.8):almost_eq(vector(2.5047, 5.789), 0.001))
    end)
  end)

  describe('__add', function ()
    it('(3 2) + (5 3) => (8 5)', function ()
      assert.are_equal(vector(8, 5), vector(3, 2) + vector(5, 3))
    end)
  end)

  describe('add_inplace', function ()
    it('(3 2):add_inplace((5 3)) => in-place (8 5)', function ()
      local v = vector(3, 2)
      v:add_inplace(vector(5, 3))
      assert.are_equal(vector(8, 5), v)
    end)
  end)

  describe('__sub', function ()
    it('(3 2) - (5 3) => (-2 -1)', function ()
      assert.are_equal(vector(-2, -1), vector(3, 2) - vector(5, 3))
    end)
  end)

  describe('sub_inplace', function ()
    it('(3 2):sub_inplace((5 3)) => in-place (-2 -1)', function ()
      local v = vector(3, 2)
      v:sub_inplace(vector(5, 3))
      assert.are_equal(vector(-2, -1), v)
    end)
  end)

  describe('__unm', function ()
    it('- (5 -3) => (-5 3)', function ()
      assert.are_equal(vector(-5, 3), - vector(5, -3))
    end)
  end)

  describe('__mul', function ()
    it('(3 2) * -2 => (-6 -4)', function ()
      assert.are_equal(vector(-6, -4), vector(3, 2) * -2)
    end)
    it('4 * (-3 2) => (-12 8)', function ()
      assert.are_equal(vector(-12, 8), 4 * vector(-3, 2))
    end)
    it('(-3 2) * (-12 8) => assert', function ()
      assert.has_error(function ()
          local _ = vector(-3, 2) * vector(-12, 8)
        end,
        "vector multiplication is only supported with a scalar, tried to multiply vector(-3, 2) and vector(-12, 8)")
    end)

    it('(3 2):mul_inplace(-2) => in-place (-6 -4)', function ()
      local v = vector(3, 2)
      v:mul_inplace(-2)
      assert.are_equal(vector(-6, -4), v)
    end)
    it('(-3 2):mul_inplace((-12 8)) => assert', function ()
      assert.has_error(function ()
          vector(-3, 2):mul_inplace(vector(-12, 8))
        end,
        "vector multiplication is only supported with a scalar, tried to multiply vector(-3, 2) and vector(-12, 8)")
    end)
  end)

  describe('__div', function ()
    it('(3, 2) / -2 => (-1.5, -1)', function ()
      assert.are_equal(vector(-1.5, -1), vector(3, 2) / -2)
    end)
    it('4 / (-3, 2) => assert', function ()
      assert.has_error(function ()
         local _ = 4 / vector(-3, 2)
        end,
        "vector division is only supported with a scalar as rhs, tried to multiply 4 and vector(-3, 2)")
    end)
    it('(-3 2) / (-3, 2) => assert', function ()
      assert.has_error(function ()
         local _ = vector(-3, 2) / vector(-3, 2)
        end,
        "vector division is only supported with a scalar as rhs, tried to multiply vector(-3, 2) and vector(-3, 2)")
    end)
    it('(-3 2) / 0 => assert', function ()
      assert.has_error(function ()
          local _ = vector(-3, 2) / 0
        end,
        "cannot divide vector vector(-3, 2) by zero")
    end)

    it('(3 2):div_inplace(-2) => in-place (-6 -4)', function ()
      local v = vector(3, 2)
      v:div_inplace(-2)
      assert.are_equal(vector(-1.5, -1), v)
    end)
    it('(-3 2):div_inplace(-3, 2) => assert', function ()
      assert.has_error(function ()
         local _ = vector(-3, 2):div_inplace(vector(-3, 2))
        end,
        "vector division is only supported with a scalar as rhs, tried to multiply vector(-3, 2) and vector(-3, 2)")
    end)
    it('(-3 2):div_inplace(0) => assert', function ()
      assert.has_error(function ()
          vector(-3, 2):div_inplace(0)
        end,
        "cannot divide vector vector(-3, 2) by zero")
    end)
  end)

  describe('zero()', function ()
    it('should be vector(0, 0)', function ()
      assert.are_equal(vector(0, 0), vector.zero())
    end)
    it('should be mutable', function ()
      local z = vector.zero()
      z.x = 5
      assert.are_equal(5, z.x)
    end)
  end)

  describe('is_zero()', function ()
    it('vector.zero() is zero', function ()
      assert.is_true(vector.zero():is_zero())
    end)
    it('(0 0) is zero', function ()
      assert.is_true(vector(0, 0):is_zero())
    end)
    it('(2 3) is not zero', function ()
      assert.is_false(vector(2, 3):is_zero())
    end)
  end)

  describe('sqr_magnitude', function ()
    it('(4 3) => 25', function ()
      assert.are_equal(25, vector(4, 3):sqr_magnitude())
    end)
    it('(-4 3) => 25', function ()
      assert.are_equal(25, vector(-4, 3):sqr_magnitude())
    end)
    it('(9 -14.2) => 282.64', function ()
      assert.is_true(almost_eq(vector(9, -14.2):sqr_magnitude(), 282.64))
    end)
    it('(0 0) => 0', function ()
      assert.are_equal(0, vector.zero():sqr_magnitude())
    end)
  end)

  describe('magnitude', function ()
    it('(4 3) => 5', function ()
      assert.is_true(almost_eq(vector(4, 3):magnitude(), 5))
    end)
    it('(-4 3) => 5', function ()
      assert.is_true(almost_eq(vector(-4, 3):magnitude(), 5))
    end)
    it('(9 -14.2) => 16.811900547', function ()
      assert.is_true(almost_eq(vector(9, -14.2):magnitude(), 16.811900547))
    end)
    it('(0 0) => 0', function ()
      assert.are_equal(0, vector.zero():magnitude())
    end)
  end)

  describe('normalized', function ()
    it('(1 -1) => (0.707... -0.707...)', function ()
      assert.is_true(vector(1, -1):normalized():almost_eq(vector(0.707, -0.707)))
    end)
    it('(4 3) => (0.8 0.6)', function ()
      assert.is_true(vector(4, 3):normalized():almost_eq(vector(0.8, 0.6)))
    end)
    it('(0 0) => (0 0)', function ()
      assert.is_true(vector.zero():normalized():almost_eq(vector.zero()))
    end)
  end)

  describe('normalize', function ()
    it('(1 -1) => (0.707... -0.707...) in place', function ()
      local v = vector(1, -1)
      v:normalize()
      assert.is_true(v:almost_eq(vector(0.707, -0.707)))
    end)
    it('(4 3) => (0.8 0.6) in place', function ()
      local v = vector(4, 3)
      v:normalize()
      assert.is_true(v:almost_eq(vector(0.8, 0.6)))
    end)
    it('(0 0) => (0 0) in place', function ()
      local v = vector(0, 0)
      v:normalize()
      assert.are_equal(vector(0, 0), v)
    end)
  end)

  describe('with_clamped_magnitude', function ()
    it('(1 -1).with_clamped_magnitude(1) => (0.707... -0.707...)', function ()
      assert.is_true(vector(1, -1):with_clamped_magnitude(1):almost_eq(vector(0.707, -0.707)))
    end)
    it('(4 3).with_clamped_magnitude(10) => (4 3)', function ()
      assert.is_true(vector(4, 3):with_clamped_magnitude(10):almost_eq(vector(4, 3)))
    end)
    it('(4 3).with_clamped_magnitude(5) => (4 3)', function ()
      assert.is_true(vector(4, 3):with_clamped_magnitude(5):almost_eq(vector(4, 3)))
    end)
    it('(4 3).with_clamped_magnitude(0) => (0 0)', function ()
      assert.is_true(vector(4, 3):with_clamped_magnitude(0):almost_eq(vector(0, 0)))
    end)
    it('(0 0).with_clamped_magnitude(5) => (0 0)', function ()
      assert.is_true(vector(0, 0):with_clamped_magnitude(5):almost_eq(vector(0, 0)))
    end)
  end)

  describe('clamp_magnitude', function ()
    it('(4 -3).clamp_magnitude(2) => (1.6 -1.2)', function ()
      local v = vector(4, -3)
      v:clamp_magnitude(2)
      assert.is_true(v:almost_eq(vector(1.6, -1.2)))
    end)
    it('(4 3).clamp_magnitude(10) => (4 3)', function ()
      local v = vector(4, 3)
      v:clamp_magnitude(10)
      assert.is_true(v:almost_eq(vector(4, 3)))
    end)
    it('(4 3).clamp_magnitude(5) => (4 3)', function ()
      local v = vector(4, 3)
      v:clamp_magnitude(5)
      assert.is_true(v:almost_eq(vector(4, 3)))
    end)
    it('(4 3).clamp_magnitude(0) => (0 0)', function ()
      local v = vector(4, 3)
      v:clamp_magnitude(0)
      assert.is_true(v:almost_eq(vector(0, 0)))
    end)
    it('(0 0).clamp_magnitude(5) => (0 0)', function ()
      local v = vector(0, -0)
      v:clamp_magnitude(5)
      assert.is_true(v:almost_eq(vector(0, 0)))
    end)
  end)

  describe('with_clamped_magnitude_cardinal', function ()
    it('(1 -1).with_clamped_magnitude_cardinal(1) => (1 -1)', function ()
      assert.is_true(vector(1, -1):with_clamped_magnitude_cardinal(1):almost_eq(vector(1, -1)))
    end)
    it('(4 -3).with_clamped_magnitude_cardinal(2) => (2 -2)', function ()
      assert.is_true(vector(4, -3):with_clamped_magnitude_cardinal(2):almost_eq(vector(2, -2)))
    end)
    it('(-4 2).with_clamped_magnitude_cardinal(3) => (-3 3)', function ()
      assert.is_true(vector(-4, 2):with_clamped_magnitude_cardinal(3):almost_eq(vector(-3, 2)))
    end)
    it('(4 -8).with_clamped_magnitude_cardinal(3 5) => (3 -5)', function ()
      assert.is_true(vector(4, -8):with_clamped_magnitude_cardinal(3, 5):almost_eq(vector(3, -5)))
    end)
    it('(0 0).with_clamped_magnitude_cardinal(5) => (0 0)', function ()
      assert.is_true(vector(0, 0):with_clamped_magnitude_cardinal(5):almost_eq(vector(0, 0)))
    end)
  end)

  describe('clamp_magnitude_cardinal', function ()
    it('(4 -3).clamp_magnitude_cardinal(2 6) => (2, -3)', function ()
      local v = vector(4, -3)
      v:clamp_magnitude_cardinal(2, 6)
      assert.is_true(v:almost_eq(vector(2, -3)))
    end)
    it('(4 3).clamp_magnitude_cardinal(10) => (4 3)', function ()
      local v = vector(4, 3)
      v:clamp_magnitude_cardinal(10)
      assert.is_true(v:almost_eq(vector(4, 3)))
    end)
    it('(-4 3).clamp_magnitude_cardinal(5 1) => (-4 1)', function ()
      local v = vector(-4, 3)
      v:clamp_magnitude_cardinal(5, 1)
      assert.is_true(v:almost_eq(vector(-4, 1)))
    end)
    it('(-4 -3).clamp_magnitude_cardinal(2) => (-2 -2)', function ()
      local v = vector(-4, -3)
      v:clamp_magnitude_cardinal(2)
      assert.is_true(v:almost_eq(vector(-2, -2)))
    end)
    it('(0 0).clamp_magnitude_cardinal(5) => (0 0)', function ()
      local v = vector(0, 0)
      v:clamp_magnitude_cardinal(5)
      assert.is_true(v:almost_eq(vector(0, 0)))
    end)
  end)

  describe('mirror_x', function ()
    it('(1 -3).mirror_x() => (-1, -3)', function ()
      local v = vector(1, -3)
      v:mirror_x()
      assert.are_equal(vector(-1, -3), v)
    end)
  end)

  describe('mirror_y', function ()
    it('(1 -3).mirror_y() => (1, 3)', function ()
      local v = vector(1, -3)
      v:mirror_y()
      assert.are_equal(vector(1, 3), v)
    end)
  end)

  describe('? rotate_90_cw', function ()
    it('(1 -3).rotated_90_cw() => (3, 1)', function ()
      assert.are_equal(vector(3, 1), vector(1, -3):rotated_90_cw())
    end)
  end)

  describe('? rotate_90_cw_inplace', function ()
    it('(1 -3).rotate_90_cw_inplace() => (3, 1)', function ()
      local v = vector(1, -3)
      v:rotate_90_cw_inplace()
      assert.are_equal(vector(3, 1), v)
    end)
  end)

  describe('? rotated_90_ccw', function ()
    it('(1 -3).rotated_90_ccw() => (-3, -1)', function ()
      assert.are_equal(vector(-3, -1), vector(1, -3):rotated_90_ccw())
    end)
  end)

  describe('? rotate_90_ccw_inplace', function ()
    it('(1 -3).rotate_90_ccw_inplace() => (-3, -1)', function ()
      local v = vector(1, -3)
      v:rotate_90_ccw_inplace()
      assert.are_equal(vector(-3, -1), v)
    end)
  end)

end)
