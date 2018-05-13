require("debug")
flow = require("flow")
titlemenu = require("titlemenu")
credits = require("credits")
stage = require("stage")
input = require("input")


-- pico-8 functions must be placed at the end to be parsed by p8tool

function _init()
  input.toggle_mouse(true)

  flow:add_gamestate(titlemenu.state)
  flow:add_gamestate(credits.state)
  flow:add_gamestate(stage.state)
  flow:query_gamestate_type(titlemenu.state.type)
end

function _update60()
  flow:update()
end

function _draw()
  flow.current_gamestate:render()
end
