-- main source file to run a unit test in pico8
-- this is really useful for data tests and pico8 fixed-point math tests,
--  otherwise busted tests should be enough
-- each utest should be put inside the src/utests folder with the name utest{something}.lua

local unittest = require("engine/test/unittest")
local utest_manager, unit_test = unittest.utest_manager, unittest.unit_test
local gamestate_proxy = require("application/gamestate_proxy")
-- tag to add require for pico8 utests files (should be in utests/)
--[[add_require]]

--#if log
local logging = require("engine/debug/logging")
logging.logger:register_stream(logging.console_log_stream)
--#endif

function _init()
  -- require all gamestate modules needed for the utest (currently only dummy states)
  gamestate_proxy:require_gamestates()

  utest_manager:run_all_tests()
end
