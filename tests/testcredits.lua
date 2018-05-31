require("bustedhelper")
require("game/application/gamestates")
credits = require("game/menu/credits")

describe('credits.state', function ()

  describe('type', function ()
    it('should be gamestate_types.credits', function ()
      assert.are_equal(gamestate_types.credits, credits.state.type)
    end)
  end)

  describe('on_enter', function ()
    pending('should ...', function ()
    end)
  end)

  describe('on_exit', function ()
    pending('should ...', function ()
    end)
  end)

  describe('update', function ()
    pending('should ...', function ()
    end)
  end)

  describe('render', function ()

    local print_stub

    setup(function ()
      print_stub = stub(api, "print")
    end)

    teardown(function ()
      print_stub:revert()
    end)

    after_each(function ()
      print_stub:clear()
    end)

    it('should print "credits state" in white', function ()
      credits.state:render()
      assert.are_equal(colors.white, pico8.color)
      assert.spy(print_stub).was_called(1)
      assert.spy(print_stub).was_called_with("credits state", 4*11, 6*12)
    end)


  end)

end)
