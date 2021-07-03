pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
-- picosonic data: pico island
-- region (2, 1) by leyn

-- Import latest spritesheet. Open data with pico8 -run for it to run automatically on launch.
import "spritesheet_stage_edition.png"

-- we only need __map__, but we kept __gfx__ only to visualize tiles when editing
-- (and __gff__ because it's not too big)
__gfx__
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00700700eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00077000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00077000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00700700eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeebbbb3bbbbbbbbbbbeeeeeeeeeeeeeeee17c0cc70eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeebbb303bbbb3bb0bbeeeeeeeeeeeeeeee1770c773eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee3b300033b30b3003eeeeeeeeeeeeeeee1713c710eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee0300400030030400eeeeeeeeeeeeeeeed1107113eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee4004444000000444eeeeeeeeeeeeeeeed1d371d3eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee4444444444004494eeeaeeeeeeeeeeeecdd37dc0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee4449444444044494eaeaeeaeeeeeeeeeccd0ddc0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeee4449444444444444baebeebeeeeeeeee7cc0dc70eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
44444444eaeaeeeeeeeeaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaebeeeaeeeeeeeeeeeeeeeeeeeeeeeeeeeee
44449444babaeabeeaeebeebeeaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeebaeabbbabbeeeeeeeeeeeeeeeeeeeeeeeeeaeab
44444494bbbababbbababbbbeebeeaeeeeeeeebeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeaeebbabab3babbbeaeeeeeeeeeeeeeeeeeeaeeebbab
44949444bbbbbbbbabbbbbbababbeaaeebeaeebeeaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeaaebbabbbbbbb3bbbbbbaeeeeeeeeeeeeeeeeeeaeabbbbb
44499444b3babbb3bbbbabbababbb3ababbababaeaeeeeaeeeeeaeeeeeeeeeeeeeeeeeeeeaeeeeaeba3bbbabbb3bab3bb3bababbeaeeeeeeeeeeeeaeabbab3bb
44949944b3bb3bb3bb3ba3bbb3bbb3b3b3bbbbbababaebaeeeaebeeaeeeeeeeeeeeeeeeeeabeababbb3bbbbbbb3bbbbbb3babbbbbaeaeeeeeeeeaeabbbbab3bb
44949944bbbb3bbbbb3bb3b3bbb3b3bbb3bb3bb3bbbabbabababbabbbaeeaeeeeeeaeeabbabbabbbbb3bbbbbbbbbbb3bb3bbb3bbbbbaeeaeeaeeabbbb3bbbb3b
44449444bb3bbbbb3bbbb3bbbbb3bbbbbbbb3bb3bb3abbbbbb3bbbbbbabaaeaeeaeaababbbbbabbbbbbb3b3bbbbbbbbbbbbbbbbb3ababbaeeabbaba3b3b3bb3b
44949444bbbbbbbbbbbbbbbbbbbb3bbbb3bbbbbbbbbbbb3bbbbbbb3bbababbabbabbababb3bbbbbbeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
44999444bb0bb3b3bb3bb0bbbbb303bbb3b3bb3bb3bb3b3bb3b3bbbbb3bbbbabbabbbbbbbbbb3b3beeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
449944443003b030b30b30033b300033bbbbbb3bb3bbbbbbbbb3bb3bb3bbbbbbbbbb3b3bb3bb3bbbeeee999aaa7777a9eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
49494944004030003003040003004000bbbb0bbbbbb0bbbb3bbbb33bbbbb3b3bbbbbbb3bb33bbbb3eeee444999aa7aa9eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
44499444044400440000044440044440b03b03bbbb30b30b033b303bbbbbbb3bbb3bbbbbb303b330eeee44999aa777a9eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
44999444444444444400449444444444000b00b03b00b00003033003bbbbbbbbbb3bbbbb30033030eeeeeeddddddddeeeeeeeeeeeeeaeeeeeeeeeaeeeeeeeeee
44994944444944444404449444494444040300300300304040003040b3b3bbbbbbbb3b3b30400000eeeeed66777766deeaeeeeaeeaeaeeaeeeaeaaeeeeeeeeee
444949444444444444444444444944444440040000440444404004403bb3bb3bb3bb3bb304400404eeeeeeddddddddeeebeebeaebaebeebeeabeabebeeeeeeee
49499444eeeeeeebbeeeeeee4444444494444444bb3bbbb33bbbbbbb0b30b30bb3bb03b03bbbb3bbeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444449999494444
44949444eeeeeeabbaeeeeee4449444494944444bbbb3b300bb3b3b30030b00bb03b030003b3bbbbeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949999444444
49949944eeeeeeabbaeeeeee4444494444444444b3bb3b0403b333b040003003b003000440b3bb3beeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4344999994494444
44949494eeeeeeb33beeeeee4444494994444444b33bbb0440303030440400403000404440bbb33beeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4b34394999494444
44999944eeeeeebeebeeeeee44444449949444443003b304400000004444444004044444403b3003eeee999aaa7777a9eeeeeeeeeeeeeeee3bb4b94999994444
49994934eeeeeebeebeeeeee44449499994444440403300444040404444494440444444440033040eeee444999aa7aa9eeeeeeeeeeeeeeeebbbb3999999944b3
b39933b3eeeeeeeeeeeeeeee44449499494944444440304444444444444494444449444444030444eeee44999aa777a9eeeeeeeeeeeeeeeeb33bb939993b43bb
bb93bbbbeeeeeeeeeeeeeeee44449449494944444444004444444444444444444444444444004444eeeeeeedd766deeeeeeeeeeeeeeeeeeebb33b3b3393b3bbb
0eeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeee0eeeeeeee0444444444444444eeeeeeeeeeeeeed67dddeeeeeeeeeeeeeeeeeeeebb3b3bbbbb3bbb3b
40eeeeee40eeeeeeeeeeeeeeeeeeeeeeeeeeee04eeeeee04eeeeeee4e04944444444944e4eeeeeeeeeeeed6ddeeeeeeeeeeeeeeeeeeeeeeeb3bb33bbb333bb3b
444eeeee4440eeeeeeeeeeeeeeeeeeeeeeee0044eeeee444eeeeeee4e04944444944440e4eeeeeeeeeeeee55dddeeeeeeeeeeeeeeeeeeeee03b3bbbbb3b3b3b0
4940eeee44440eeeeeeeeeeeeeeeeeeeeee04444eeee0494eeeeee04ee044944449440ee40eeeeeeeeeeeee55ddddeeeeeeeeeeeeeeeeeeeb03bbb333bbbbbb0
44440eee4944400eeeeeeeeeeeeeeeaee0444944eee04494eeeeee04eee0444444940eee40eeeeeeeeeeeeeeeedd6deeeeeeeeeeeeeeeeeeb333bbbbb33b30bb
494944ee449444400eeeeeeeeeeeaea004444994ee449444eeeeee44eee0449444440eee40eeeeeeeeeeeeeeed77deeeeeeeeeeeeeeeeeeeb3bbb3bb30033bbb
4449440e44944944440eeeeeeeee303b44944494e0444494eeeee044eeee44944944eeee440eeeeeeeeeeeed77ddeeeeeeeeeeeeeeeeeeee3bb330bbbb3b33bb
444444404444444444440eeeebebbb3b4444444404444444eeeee044eeee04444440eeee444eeeeeeeeeeed6ddeeeeeeeeeeeeeeeeeeeeeebbbbb0bbb33bb3bb
444444404444444444440eeeeee044444444444404444444eeee0444eeeee494440eeeee4440eeeeeeeeeeeeeeeeeeee4444444444444444e3bbbbb3bbbb3bbe
4494440e44444444440eeeeeeeeee00494494444e0449494eeee4444eeeee044440eeeee4944eeeeeeeeeeeeeeeeeeee0449444449444444eeba3b3e3bb3e3b3
449940ee499449400eeeeeeeeeeeeee044444944ee444494eee04494eeeeee4444eeeeee49440eeeeeeeeeeeeeeeeeee0449494449444940e3b3e3ee3bb3eebb
44444eee4494440eeeeeeeeeeeeeeeeee0044994eee04444eee04494eeeeee0444eeeeee44440eeeeeeeeeeeeeeeeeee4449494444444940ebb3eeeeeabbeea3
4940eeee44440eeeeeeeeeeeeeeeeeeeeee04494eeee0494ee044444eeeeee0440eeeeee494440eeeeeeeeeeeeeeeeee0444494444440944ebbeeeeee3b3ee3e
440eeeee4400eeeeeeeeeeeeeeeeeeeeeeee0444eeeee444e0444494eeeeeee44eeeeeee4449440eeeeeeeeeeeeeeeee0044444400000440eabbeeeeee3eeeee
44eeeeee40eeeeeeeeeeeeeeeeeeeeeeeeeeee04eeeeee04e4449444eeeeeee44eeeeeee4949444eeeeeeeeeeeeeeeee0000040000e00000ee3beeeeeeeeeeee
0eeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeee004444444eeeeeee44eeeeeee44444440eeeeeeeeeeeeeeeee00000000ee00000eeebbeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeee77dded777deeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee99000000eeeeeeeed6d949eeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeedd77d1dd777ddeeeeeeeeeeeeeeeeeeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee99aa9000499eeeeeeed6d99aeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee7d1111dddd77d1eeeeeeeeeeeeeeeeeeeeeee00eeeeeeeeeeeeeeeeeeeeeeeeeeeee9aa9a94049aa9eeeeeed7d99aeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeed11111dddd7d111eeeeeeeeeeeeeeeeeeeeee00eeeeeeeeeeeeeeeeeeeeeeeeeeee9aa9aa94049aaa9eeeeed7da9aeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee111117ddddd1111eeeeeeeeeeeeeeeeeeeee040eeeeeeeeeeeeeeeeeeeeeeeeeeee9a9aaa94049aaa9eeeeed7daa7eeeeeeeeeeeeeeeeee
eeeeeeaeeaeeeeeee111d777dddddd11eeeeeeeeeeeeeeeeeeeee004eeeeeeeeeeeeeeeeeeeeeeeeeeee9a9aa994004999eeeeeed7d7a7eeeeeeeeeeeeeeeeee
eeaeaebeebeaeaeee11ddd77710d1111eeeeeeeeeeeeeeeeeeee0440eeeeeeeeeeeeeeeeeeeeeeeeeeeee99999403344eeeeeeeed6d777eeeeeeeeeeeeeeeeee
ababbbbbbbbbbabae0ddddd711111111eeeeeeeeeeeeeeeeeeee0444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee449aa934eeeeeeeed6d7a7eeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee7dddddd1110110eeeeeeeeeeeeeeeeeeee04444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee49aaaa94eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee1dd1dd107777ddeeeeeeeeeeeeeeeeeeee04944eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee3bb99bb3eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee1d1ddd0dd7777deeeeeeeeeeeeeeeeeee044444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4b9aa9b4eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeee111d77dddd7777eeeeeeeeeeeeeeeeeee044444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4b9aa9b4eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeedd7d11dd7eeeee11d777777d7777deeeeeeeeeeeeeeeee0449494eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee49aaaa94eeeeeeeeeeeeebbbeeeeeeeeeeeeeeee
eedd777ddd7d11eeeed77777777d7dddeeeeeeeeeeeeeeeee0449444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee3bb99bb3eeeeeeeeeeeebabbeeeeeeeeeeeeeeee
ee1ddd77d0dd111eed77777777d1d111eeeeeeeeeeeeeeee04944444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4b9aa9b4eeeeeeeeeebbbbbeeeeeeeeeeeeeeeee
ee11dd7dd011111ed777777777111111eeeeeeeeeeeeeeee04444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4b9aa9b4eeeeeeeeebbabbbeeeeeeeeeeeeeeeee
ee17dddd101dd11edd7777777d111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee7a7d6d49aaaa94beeeeeeebaabbeeeeeeeeeeeeeeeeeee
edd777dd0dd77dd1dddddddddd111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee777d6d3bb99bb3bbeeeeebbbbbbbeeeeeeeeeeeeeeeeee
ddd7777d1ddddd11ddd1dddddd111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee7a7d7d4b9449b4bbbeeebbabbbbbeeeeeeeeeeeeeeeeee
dddd77d11ddd1111ddd7dddddd111110eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee7aad7d49b44b94bbbbebbbbbbbbeeeeeeeeeeeeeeeeeee
dddddd111ddd1111ddd7dddddd111110eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeea9ad7d04bbbb40babbbbbbbb3eeeeeeeeeeeeeeeeeeeee
ddddd1111ddd1111ddddddddd111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeea99d7d049bb940bbabb3bbbbbbeeeeeeeeeeeeeeeeeeee
ddddd11111d11110ddddddddd111101eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeea99d6d00433400bbbbb33bebbeeeeeeeeeeeeeeeeeeeee
111d11110110110eddddddddd111101eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee949d6d0a4334a0bbbabbbbbee33e33eeeeeeeeeeeeeeee
e1111dd10dd777dedddddddd1111101eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444444999494444bbbbbbbbe333333333eebbbbbbeeeeee
ee11d77ddd77777ddddddddd11111011eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444494994444444bbbbabbb33333bbbbbbbbbbaabbbeeee
ee1d7777ddd7777d1ddddddd11111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee444449499444444433bbabbbbb3bbabbabbbbebbbbbbbeee
eedd777d10dddd1101dddddd11111111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44444449994944443bbbb3bbbb3bbabbbbbbbbebbbbbbbee
edddd7dd10ddd111e111dddd11110111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444444999444444bb3bbbbbbabbbbbbbbebbbbbbbebbbbe
dddddd1110ddd111e111ddd111100111eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949499944444bb3bbb3bbbbbbbebbbbebbeeeeeeeeee
ddddd11110dd1111eee0111111011110eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949499494444abbbbb33bbbbbbbebbbbeeeeeeeeeeee
dd1111110011011eeeee00000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949999494444bbbbbbbbbbbbb33eeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeee5d5eeeeeeeeeeaaaaaaaaaaaaaaa9eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee30bbebe44444444ababb3bbbbb33bbbbeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeeeeeaaaaaaaaaaaaaaa94eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee3bebeeb349444444bba33bbbbabbb3333bbeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeeee9a9a9a9a9a9aaa9940eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeebeb33b3e44444494bbbbbbbbbbbabb33333bbeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeee9a9a9a9a9a9aaa94400eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeb3e33eb44494444b3abba3bbbbbabb333333beeeeeeeeee
eeeea994eeeeeeeeeeed65eeeeee999999999999aa944400eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee03bb03b44494444b00bb00bbbbbbbbbe33333beeeeeeeee
eeeaaaa94eeeeeeeeeed65eeeee99999999999aa99444000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee3beb3ebe44444494b00bb00bbbbbbbab3333b33beeeeeeee
eeaaaaaaa999eeeeeeed65eeee9999999999aa9449444400eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeb3b33eb3449444443b0330b33b3bbbbbb33bee3beeeeeeee
eaaaaaaaaaaa999eeeed65eee4949494999a944444444000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeebeebee444444440b0330b0eeebbebbbbeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeee949494449a99494444444440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee77778ee4444444444444444eeeeebbbbbeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeee99444449a9944444444444440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee7777788e0449449949944444eeeeeebbbbaeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeee44449a994444444444994440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee2288822e0449444994444000eeeeeeeebbbbeeeeeeeeeeee
eeeeeeeeeeeeeeeeee4499994444494444944494444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee28882ee4444444999444044eeeeeeeeebbbeeeeeeeeeeee
eeeeeeeeeeeeeeeea9994494499449444494444440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee282eee0444499444444444eeeeeeeeebbbbeeeeeeeeeee
eeeeeeeeeeee99994494444444944444449444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee2eeee0444444444444440eeeeeeeeeebbaeeeeeeeeeee
eeeeeeee44994494449444444494444444444400eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee004499440e004440eeeeeeeeeeebaeeeeeeeeeee
eeee44994444444444444444444444444440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0049eeeeeee000eeeeeeeeeeeeeeeeeeeeeeeee
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000434340000000000000000000004141414141414141414141414141414141414141414141414141212180808000414040414141414141410000000041414141414141414141414101010000414141414141414141414141000041418080
0000000000000000000000000000000000000000000000000000000000000000414141410000410000008080800100004141414100004100000000800080000041414141000000000000018080800000414141410000000000004141808080804040404043430000000080418080800041414141434300000000004040008000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb00000000000000000000004e4d393a3335374c4d4e4c4e5e5f5e5f5e5f5e5f5e5f535453545354535453545354535457463c3d0000000000000000000040780000000000000000774000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb0000000000000000003e3f4544444445454244444246446e6f6e6f6e6f6e6f6e6f5e5f5e5f5e5f5e5f5e5f5e5f5e5fdadb59463c3d000000000000000040000000000000000000004000000000000000000000
0000000000000000000000000000252525000000000000000000000000000000000000000000000000000000bb000000000000003e3f45585354535453545354535453546e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5f535457463c3d00000000000040690000000000000000666800000000000000000000
0000000000000000000000000051232423520000000000000000000000000000000000000000000000000000bb00000000003e3f49585354dadb5e5f5e5f5e5f5e5f5e5f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6e5e5f535457463c3d0000000075790000000000000000767800000000000000000000
b100000000000000000000000000fbfcfc0000000000000000004da0a14d4ca0a14d4e4a4b4c4ea0a14e4c4dcb4e4d4e3e3f45585354dadb5e5f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6f6e6f5e5f535457443c3d000000673c3d000000000065680000000000000000000000
c100000000000000000000000000000000000000000038393a3b4945434542444943424246494945424145434649494649585354dadb5e5f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6f6e6f6e6f5e5f535457463c3d4e7759463c3d4d636440780000000000000000000000
d14e4ea0a14c0000000000000000000000000000005141424358ebeb53545354535453545354535453545354535453545354dadb5e5f6e6e6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6f6e6f6e6f6e6f5e5f5354574446494543425559585354000000000000000000000000
454243424346313335370000000000000000000000007c7d7c7d7c7ddadb5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f6e6f6e6f6e6f6e6f6e6f6f6e6f6e6f6e6f6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6f6e6f6e6f6e6f6e6f5e5f5354535453545354dadbdadbeaea3c3d0000000000000000
535453545354574243425200000000000000000000000000000000007ceb6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6f6e6f6e6f6e6f6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6e6f6e6f6e6f6e6f6e6f6e6f5e5fdadbdadbdadbdadbdadbeaea44483c3d4ca0a14e4e4d
5e5fdadbdadb53545354000000000000000000000000000000000000007c6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6f6e6f6f6e6f6e6f6e6f6f6e6f6e6f6e6f6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5fdadbdadbdadbdadbeaeaeb575944444245464242
6e6f5e5f7c7d7c7d7c7d00000000000000000000000000000000000000007e7f7e6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6f6e6f6e6f6e6f6f6e6f6e6f6e6f6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5f5e5f5e5f5e5feaea53545354535453545354
6e6f6e6f00000000000000000000000000000000000000000000000000000000007e7f7e7f6e6f6e6f6e6f6e6f6e49466f6e6f6e6f6e49467e7f7e7f7e7f7e7f7e7f7e7f7e7f7e7f7e7f6e6f7e7f6e6f6e6f6f6e49466e6f6e6f6f6e49466e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6feaea5e5f5e5f5e5f5e5f5e5f
6e6f6e6f0000000000000000000000000000000000000000000000000000000000000000007e7f7e7f7e7f7e7f7e7c7d7e7f7e7f7f7e7c7d0000000000000000000000000000000000007e7f000057587e7f7f7e7c7d7e7f7e7f7f7e7c7d7e7feaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea6e6f6e6f6e6f6e6f6e6f
6e6f6e6f00000000000000000000000000fa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c7d00000000000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea6e6f6e6f6e6f6e6f6e6f
6e6f6e550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea6e6f6e6f6e6f6e6f6e6f
6e55587d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea6e6f6e6f6e6f6e6f6e6f
6e7c7d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea00006f6e6e6f6e6f6e6f6e6f
7f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec000000000000000000000000000000000000000000b0b10000000000000000000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea0000666f6e6e6f6e6f6e6f6e6f
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaabac00000000000000000000000000004e4d4c4e4c4ec0c100004d4c4d4d4c4d000000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea0000000000766f6e6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb00000000000000000000000000005142414342444545585251594642444442520000000000000000000000eaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea0000000065306f6e6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb00000000000000000000000000000053545354535453540000535453545354ad4c4e4da0a14c4da0a14d4eeaeaeaeaeaeaeaeaeaeaeaeaeaeaeaea4d4c6364eb406f6e6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb000000000000000000000000000000dadbdadbdadb5e5f00005e5fdadbdadb46494945424145434649494649434542494546494345454145454642434455eb30406f6e6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb000000000000000000000000000000dadbdadbdadb6e6f00006e6f5e5fdadb535453545354535453545354535453545354535453545354535453545354535440406e6f6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb000000000000000000000000000000dadbdadb5e5f6e6f00006e6f6e6f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f50406e6f6e6f6e6f6e6f6e6f
000000000000000000000000000000000000000000000000000000000000000000004e4d4c4d4c4d000000000000000000000000bb0000000000000000004e4d4c4d4d4edadbdadb6e6f6e6f00006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
000000000000000000000000000000000000000000000000000000000000000000514244464646463c3d00000000000000000000bb000000000000000066424446464355dadb5e5f6e6f0000000000006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
0000000000000000000000000000000000000000000000000000000000000000000053545354535457463c3d0000000000000000bb000000000000000076535453545354dadb6e6f6e6f0000000000006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000dadbdadbdadbdadb57463c3d000000000000bb0000000000000065ebdadbdadbdadb5e5f6e6f6e6f0000000000006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000dadbdadbdadbdadbdadb57463c3d4d4d4c4dcb4d4e4c4e4c63645354dadbdadb5e5f6e6f6e6f6e6f0000fa0000006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000dadbdadbdadbdadbdadbdadb5746444748484847474747486f54dadbdadb5e5f6e6f6e6f6e6f6e6f0000000000006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
4e4d4c4e4c4e4c4d38393a3b520000000000000000004e4e4d4e4d4e4d4d4e4c4a4bdadbdadbdadb5e5f5e5f5e5fdadbda59466e6f6e6f6e6f4955dbdadb5e5f6e6f6e6f6e6f6e6f6e6f00004a4b00006e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
45494649554349434649425836363636363636393a3b484847484748484747474847dadb5e5f5e5f6e6f6e6f6e6f5e5fdadb3059466e6f495530dadb5e5f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
