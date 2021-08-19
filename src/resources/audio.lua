--#if game_constants
--(when using replace_strings with --game-constant-module-path [this_data.lua], all namespaced constants
-- below are replaced with their values (as strings), so this file can be skipped)

local audio = {}

audio.sfx_ids = {
  -- builtin_data_titlemenu and builtin_data_stage_clear only
  menu_select = 50,
  menu_confirm = 51,

  -- builtin_data_stage_clear only
  menu_swipe = 52,
  got_all_emeralds = 56,

  -- builtin_data_ingame only
  jump = 55,
  spring_jump = 56,
  roll = 57,
  brake = 58,
  -- because it plays on 4th channel over low-volume bgm,
  --  pick emerald jingle is considered an sfx
  pick_emerald = 59,
  goal_reached = 60,
  spin_dash_rev = 61,
  spin_dash_release = 62
}

audio.jingle_ids = {
  -- builtin_data_stage_clear only (overlaps stage bgm in builtin_data_ingame.p8)
  stage_clear = 0,
}

audio.music_ids = {
  -- builtin_data_titlemenu only (overlaps stage bgm in builtin_data_ingame.p8)
  title = 0,
}

--(game_constants)
--#endif

return audio
