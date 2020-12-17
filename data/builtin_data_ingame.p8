pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
-- this is the built-in data cartridge
-- for the ingame cartridge

-- the collision masks at the top will be overwritten by runtime sprites
--  via reload
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000777700000000000000000000000000000000000000000000000000000000000000000000000000000000777777000000000000000000000000000077
00700700777777777777777700000000000000000000000000000000000000000000000000000000000000007777777777770000000000000000000000007777
00077000777777777777777777770000000000000000000000000000000000000000000000000000000077777777777777777700000000000000000000777777
00077000777777777777777777777777777777770000000000000000000000000000000000000000777777777777777777777777000000000000000077777777
00700700777777777777777777777777777777777777000000000000000000000000000000007777777777777777777777777777770000000000007777777777
00000000777777777777777777777777777777777777777777777777000000000000000077777777777777777777777777777777777700000000777777777777
00000000777777777777777777777777777777777777777777777777777700000000777777777777777777777777777777777777777777000077777777777777
70000000700000000000000000000000000000070000000700000007777777777777777770000000000000000000000000007777777777770000000000000000
77000000770000000000000000000000000000770000007700000007077777777777777070000000000000000000000000007777777777770000000000000000
77700000777700000000000000000000000077770000077700000007077777777777777070000000000077777777777700007777777777770000000000000000
77770000777770000000000000000000000777770000777700000077007777777777770077000000000077777777777700007777777777770000000000000000
77777000777777700000000000000000077777770007777700000077000777777777700077000000000077777777777700007777777777770000000000000000
77777700777777777000000000000007777777770077777700000077000777777777700077000000000077777777777700007777777777770000000000000000
77777770777777777770000000000777777777770777777700000777000077777777000077700000000077777777777700007777777777770000000000000000
77777777777777777777700000077777777777777777777700000777000077777777000077700000000077777777777700007777777777770000000000000000
77777777777777777777700000077777777777777777777700007777000007777770000077770000000000000000007700000000000000000000000000000000
77777770777777777770000000000777777777770777777700007777000007777770000077770000000000000000777700000000000000000000000000000000
77777700777777777000000000000007777777770077777700077777000000777700000077777000000000000077777700000000000000000000000000000000
77777000777777700000000000000000077777770007777700077777000000777700000077777000000000777777777700000000000000000000000000000000
77770000777770000000000000000000000777770000777700777777000000777700000077777700000077777777777700007777000000000000000000000000
77700000777700000000000000000000000077770000077707777777000000077000000077777770007777777777777700007777000000000000000000000000
77000000770000000000000000000000000000770000007707777777000000077000000077777770777777777777777700007777000000000000000000000000
70000000700000000000000000000000000000070000000777777777000000077000000077777777777777777777777700007777000000000000000000000000
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
49499444eeeeeeebbeeeeeee4444444494444444bb3bbbb33bbbbbbb0b30b30bb3bb03b03bbbb3bbeeeeeeeeeeeeeeeed7dd11ddd71eeeee4444449999494444
44949444eeeeeeabbaeeeeee4449444494944444bbbb3b300bb3b3b30030b00bb03b030003b3bbbbeeeeeeeeeeeeeeee777dd1ddd711eeee4444949999444444
49949944eeeeeeabbaeeeeee4444494444444444b3bb3b0403b333b040003003b003000440b3bb3beeeeeeeeeeeeeeee7777dd1d7d111eee4344999994494444
44949494eeeeeeb33beeeeee4444494994444444b33bbb0440303030440400403000404440bbb33beeeeeeeeeeeeeeeedd777dd0dd1111ee4b34394999494444
44999944eeeeeebeebeeeeee44444449949444443003b304400000004444444004044444403b3003eeee999aaa7777a9ddd7dd101111111e3bb4b94999994444
49994934eeeeeebeebeeeeee44449499994444440403300444040404444494440444444440033040eeee444999aa7aa9dd1dd1101ddd111ebbbb3999999944b3
b39933b3eeeeeeeeeeeeeeee44449499494944444440304444444444444494444449444444030444eeee44999aa777a97ddd1111dd77ddd1b33bb939993b43bb
bb93bbbbeeeeeeeeeeeeeeee44449449494944444444004444444444444444444444444444004444eeeeeeedd766deee77ddd0ddd7777dd1bb33b3b3393b3bbb
0eeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeee0eeeeeee404444444444444444eeeeeeeeeeeeed67dddeeee77ddd0ddddd7ddd1bb3b3bbbbb3bbb3b
40eeeeee40eeeeeeeeeeeeeeeeeeeeeeeeeeee04eeeeee04eeeeeee4e04944444444944e4eeeeeeeeeeeed6ddeeeeeee777dd1ddddddd111b3bb33bbb333bb3b
444eeeee4440eeeeeeeeeeeeeeeeeeeeeeee0044eeeee444eeeeeee4e04944444944440e4eeeeeeeeeeeee55dddeeeee77dd11ddddd1111103b3bbbbb3b3b3b0
4940eeee44440eeeeeeeeeeeeeeeeeeeeee04444eeee0494eeeeee04ee044944449440ee40eeeeeeeeeeeee55ddddeeedd11111ddd011111b03bbb333bbbbbb0
44440eee4944400eeeeeeeeeeeeeeeaee0444944eee04494eeeeee04eee0444444940eee40eeeeeeeeeeeeeeeedd6dee1111111ddd011111b333bbbbb33b30bb
494944ee449444400eeeeeeeeeeeaea004444994ee449444eeeeee44eee0449444440eee40eeeeeeeeeeeeeeed77deee1111111dd1011111b3bbb3bb30033bbb
4449440e44944944440eeeeeeeee303b44944494e0444494eeeee044eeee44944944eeee440eeeeeeeeeeeed77ddeeee11111011d10111103bb330bbbb3b33bb
444444404444444444440eeeebebbb3b4444444404444444eeeee044eeee04444440eeee444eeeeeeeeeeed6ddeeeeee111000011000000ebbbbb0bbb33bb3bb
444444404444444444440eeeeee044444444444404444444eeee0444eeeee494440eeeee4440eeee777ddd11111111114444444444444444e3bbbbb3bbbb3bbe
4494440e44444444440eeeeeeeeee00494494444e0449494eeee4444eeeee044440eeeee4944eeeedddddd11111111110449444449444444eeba3b3e3bb3e3b3
449940ee499449400eeeeeeeeeeeeee044444944ee444494eee04494eeeeee4444eeeeee49440eeeddddd111110111110449494449444940e3b3e3ee3bb3eebb
44444eee4494440eeeeeeeeeeeeeeeeee0044994eee04444eee04494eeeeee0444eeeeee44440eeedddd1111101111114449494444444940ebb3eeeeeabbeea3
4940eeee44440eeeeeeeeeeeeeeeeeeeeee04494eeee0494ee044444eeeeee0440eeeeee494440eedddd1111001111110444494444440944ebbeeeeee3b3ee3e
440eeeee4400eeeeeeeeeeeeeeeeeeeeeeee0444eeeee444e0444494eeeeeee44eeeeeee4449440e1dd11110011111100044444400000440eabbeeeeee3eeeee
44eeeeee40eeeeeeeeeeeeeeeeeeeeeeeeeeee04eeeeee04e4449444eeeeeee44eeeeeee4949444e11111100111111000000040000e00000ee3beeeeeeeeeeee
0eeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeee004444444eeeeeee44eeeeeee44444440000000000000000ee00000000ee00000eeebbeeeeeeeeeee
eeeeeeccceeeeeeeeeeeeccceeeeeeeeeeeeeccceeeeeeeeeeeeeeccceeeeeeeeeeecccceeeeeeeeeeeecccceeeeeeeeeeeecccceeeeeeeeeeeeeeecccceeeee
eeeeeccccceeceeeeeeeccccceeceeeeeeeeccccceeceeeeeeeeeccccceeceeeeeecccccceceeeeeeeecccccceceeeeeeeecccccceceeeeeeeeeeeeeccccceee
eeeeeecffcccceeeeeeeecffcccceeeeeeeeecffcccceeeeeeeeeecffcccceeeeeeeeccfccceeeeeeeeeeccfccceeeeeeeeeeccfccceeeeeeeeeeeeeccccccee
eeeeeccfcc7ccceeeeeeccfcc7ccceeeeeeeccfcc7ccceeeeeeeeccfcc7ccceeeeeccccfc7cceeeeeeeccccfc7cceeeeeeeccccfc7cceeeeee77eeccffccccce
eeeeccccc770cceeeeeccccc770cceeeeeeccccc770cceeeeeeeccccc770cceeeeccccccc71ceeeeeeccccccc71ceeeeeeccccccc71ceeeee7777cccfc7ccc77
eeecccccc770ceeeeecccccc770ceeeeeecccccc770ceeeeeeecccccc770ceeeecccccccc70ceeeeecccccccc70ceeeeecccccccc70ceeeeeee7ffccc707ccee
eeeeeeccff77f0eeeeeeeccff77f0eeeeeeeeccff77f0eeeeeeeeeccff77f0eeeeeecccff77f0eeeeeeecccff77f0eeeeeeecccff77f0eeeee7eecfccf07c67e
eeeeeccccfffeeeeeeeeccccfffeeeeeeeeeccccfffeeeeeeeeeeccccfffeeeeeeecccc7fffeeeeeeeecccccff7eeeeeeeecccccfffeeeeeeeeecccccffff0ee
eeeeccc99ccfeeeeeeecffcff6eeeeeeeeecffccfee56eeeeee777fccfeeeeeeeeccc9777eeeeeeeeeccccffe777eeeeeeccccffee7eeeeeeeeeeecf9effeeee
eeeeeeef77ff66eeeeefeecffeeeeeeee77feccff9966ee8ee7770ccff66eeeeeeee9f07eeeeeeeee6ceccfff770eeeeeeceecffe777eeeeeeeeeccffeeeeeee
eeeeeecc777f56eeee770ccc7feeeeee707ecccffeeeee88eee7ececff56eeeeeeeecccf111eeeeee66ccccf1eeee20eee07ccccf770eeeeeeeececcceeeeeee
eeeeeece0711eeeeee777ec887eeeeeee7eececcccc78780e002661cccee80eeeeeececce61eeeeeeeececeee172700eee087eee1eeeeeeeeeeeeeecceeeeeee
eeeeeeeeece1eeeeeee7e260887eeeeeee02611eeec7870e0262611ec78780eeee87ccce0262eeeee86cceeee77200eeee088eeee16eeeeeeeeeeee6ceeeeeee
eeeeeeeee7e7eeeeeeee022000788eeee02261eeeee8880e022eeeee78780eeee088eeeee0222eee6886eeeeee200eeeeee078eee626220eeeeeeee2ceeeeeee
eeeeeeee0878022eeeee0022eee00eee062eeeeeeeee00eeeeeeeeee8870eeeee0877eeeeee00eee860eeeeeee00eeeeeeee00eee02600eeeeeeee06c7eeeeee
eeeeeeee07888022eeeee00600eeeeee22eeeeeeeeeeeeeeeeeeeeee000eeeeeee08888eeeeeeeee00eeeeeeeeeeeeeeeeeeeeeeee00eeeeeeeeee0277eeeeee
eeeeecccceeeeeeeeeeeeecccceeeeeeeeeeecccceeeeeeeeeeeeecccceeeeeeeeeeeeedeee11111eeeeeeee99000000eeeeeeeeeeeeeeeeeeeeee0288eeeeee
eeeeeecffcceceeeeeeeecccccceceeeeeeeeecffcceceeeeeeeecccccceceeeeeeeedddeee11dddeeeeee99aa9000499eeeeeeeeeeeeeeeeeeeeee0870eeeee
eeeeeeecffccceeeeeeeeecffcccceeeeeeeeeecffccceeeeeeeeecffcccceeeeeeeedddeedddd77eeeee9aa9a94049aa9eeeeeeeeeeeeeeeeeeeeee780eeeee
eeeeccccccc7cceeeeeeeccfccc7cceeeeeeccccccc7cceeeeeeeccfccc7cceeeeeee1ddedddddd7eeee9aa9aa94049aaa9eeeeeeeeeeeeeeeeeeeee080eeeee
eeeccccccc770ceeeeeecccccc770ceeeeeccccccc770ceeeeeecccccc770ceeeeeee111edddddddeeee9a9aaa94049aaa9eeeeeeeeeeeeeeeeeeeeee0eeeeee
eeeeeccccc770ceeeeeccccccc770ceeeeeeeccccc770ceeeeeccccccc770ceeeeeee11dedddddd1eeee9a9aa994004999eeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeecccff77f0eeeeeeecccff77f0eeeeeeecccff77f0eeeeeeecccff77f0eeeeee1ddeddd1d11eeeee99999403344eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeec9cc70cfffeeeeeee9c888cfffeeeeeec9cc702f2feeeeeee9cc70cfffeeeeeeeddd7e1d11111eeeeeeee449aa934eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eee9ff77756e2eeeeee9f888856eeeeeeee9ff77752e22eeeee9ff777e6eeeeeeeeedd77ee1111111ddddddd49aaaa94eeeeeeeeeeeeeeee1110110111dd1111
ee7ecc77766220eeee228887766eeeeeeeee11777662222eee221177766eeeeeeeedddd7ee111117e1dddddd3bb99bb3eeeeeeeeeeeeeeeedd1111011ddddd11
e777cccff1e260eee22888cffeeeeee2ee87e11ffeee280ee228e11ffeeeeeeeeeddddddeee11d77e011dddd4b9aa9b4eeeeeeeeeeeeeeee7dd11101dddd77d1
087cccece16220ee222ccee11eeee2e2088111ecccee780e22211eecceeeeee2edddddddeeeed777ee1111dd4b9aa9b4eeeeeeeeeeeeeeeedd1110011ddddd11
0888eeeee6820eee22eeeeee1eeee2220887eeeeeec7870e22eeeeeceeeee2e2edddddddeeedd777eee1111d49aaaa94eeeeeeeeeeeeebbb1111101111dd1110
08878eeee8880eee2eeee871eeee222e08822eeeee7880ee2eeeee77eeee2222edddddddeedd7777eeee11113bb99bb3eeeeeeeeeeeebabb1111101101111000
e07782eeee80eeeee2ee8877222222eee02222eeee8880eee2eee0887822222eeddddd11eddd7777eeeee0114b9aa9b4eeeeeeeeeebbbbbe111100110110000e
ee0888222eeeeeeeeeee82227222eeeeee0222222ee80eeeeeeee08788822eeeed111111eddddd77eeeeee004b9aa9b4eeeeeeeeebbabbbe11100010000000ee
eeeeccccceeeeeeeeeeecccceeeeeeeeeeeeccecceeeeeeeeeee2222eeeeeeeeeeeeeee8eeeeeeeeeeeeeeee49aaaa94beeeeeeebaabbeee177011111ddd11ee
eecccccccceeeeeeeeccccccceeeeeeeeeceeccecceeeeeeee278227cceeeeeeeeeeee0e82eeeeeeeeeeeeee3bb99bb3bbeeeeebbbbbbbee7777d11dd777ddde
eccccccc7cceeeeeeccccfccceeeeeeeececccccccceeeeee28777ccceceeeeeeeecccfee82eeeeeeeeeeeee4b9449b4bbbeeebbabbbbbee77777ddd77777ddd
eccccc777cceeeeecccccfc7cceeeeeeecccccccccceeeeee8ee777fcceeeeeeeccc007fe77eeeeeeeeeeeee49b44b94bbbbebbbbbbbbeee777777ddd77777dd
ccccccc777cceeeececcccc70ceeeeee27cfcccccccceeee8eefffcccceceeeeccc7777f7782eeeeeeeeeeee04bbbb40babbbbbbbb3eeeee7777777dddd7ddd1
ccccccc7cccceeeeecccccc70ceeeeee22c7cfccffcceeeee0f77ffccccceeeeccccccff7722eeeeeeeeeeee049bb940bbabb3bbbbbbeeee777777771dddd111
cccccccccccceeeecccccff77f0eeeee2277ffcccccceeeeeec07cccccceeeeeccffccfc7c22eeeeeeeeeeee00433400bbbbb33bebbeeeee7777777d11111101
cccccccccccceeeececcccfffee8eeee2877f7777ccceeeeeec07ccccceceeeeccccccccfc72eeeeeeeeeeee0a4334a0bbbabbbbbee33e3377777dd111110011
ccccccccccceeeeeeeccf777ee8eeeeee77ef700ccceeeeeeecc7cfccccceeeeecccccccccceeeee4444444999494444bbbbbbbbe333333333eebbbbbbeeeeee
ecccccccccceeeeeececcc77782eeeeee28eefccceeeeeeeeeecccfcccceeeeeecccccccceceeeee4444494994444444bbbbabbb33333bbbbbbbbbbaabbbeeee
eecccccccceeeeeeeecc722872eeeeeeee28e0eeeeeeeeeeeeeccccccceeeeeeeeccecceeceeeeee444449499444444433bbabbbbb3bbabbabbbbebbbbbbbeee
eeeecccceeeeeeeeeeee2222eeeeeeeeeeee8eeeeeeeeeeeeeeecccceeeeeeeeeeeccecceeeeeeee44444449994944443bbbb3bbbb3bbabbbbbbbbebbbbbbbee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444444999444444bb3bbbbbbabbbbbbbbebbbbbbbebbbbe
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949499944444bb3bbb3bbbbbbbebbbbebbeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949499494444abbbbb33bbbbbbbebbbbeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4444949999494444bbbbbbbbbbbbb33eeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeee5d5eeeeeeeeeeaaaaaaaaaaaaaaa9eeeeee56deeeeeeeeeeeeeed65eeeeeee30bbebe44444444ababb3bbbbb33bbbbeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeeeeeaaaaaaaaaaaaaaa94ed6566666666666ee6666666666656de3bebeeb349444444bba33bbbbabbb3333bbeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeeee9a9a9a9a9a9aaa9940d656000000000005500000000000656dbeb33b3e44444494bbbbbbbbbbbabb33333bbeeeeeeeeeee
eeeeeeeeeeeeeeeeeeed65eeeeeee9a9a9a9a9a9aaa94400d656d944dc49d91551d944dc49d9656deb3e33eb44494444b3abba3bbbbbabb333333beeeeeeeeee
eeeea994eeeeeeeeeeed65eeeeee999999999999aa944400d65694cdc0ca9a155194cdc0ca9a656de03bb03b44494444b00bb00bbbbbbbbbe33333beeeeeeeee
eeeaaaa94eeeeeeeeeed65eeeee99999999999aa99444000d656dcacac75471551dcacac7547656d3beb3ebe44444494b00bb00bbbbbbbab3333b33beeeeeeee
eeaaaaaaa999eeeeeeed65eeee9999999999aa9449444400d6569ac7ca7a7a15519ac7ca7a7a656db3b33eb3449444443b0330b33b3bbbbbb33bee3beeeeeeee
eaaaaaaaaaaa999eeeed65eee4949494999a944444444000d6564c000c094715514c000c0947656deebeebee444444440b0330b0eeebbebbbbeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeee949494449a99494444444440ed656c0ca7a77701551c0ca7a7770656de77778ee4444444444444444eeeeebbbbbeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeee99444449a9944444444444440eed65649a04f4977155149a04f4977656d7777788e0449449949944444eeeeeebbbbaeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeee44449a994444444444994440eeeed6569afaf00a7a15519afaf00a7a656d2288822e0449444994444000eeeeeeeebbbbeeeeeeeeeeee
eeeeeeeeeeeeeeeeee4499994444494444944494444eeeeed656dcafaf05071551dcafaf0507656de28882ee4444444999444044eeeeeeeeebbbeeeeeeeeeeee
eeeeeeeeeeeeeeeea9994494499449444494444440eeeeeed65690cdf09a5d155190cdf09a5d656dee282eee0444499444444444eeeeeeeeebbbbeeeeeeeeeee
eeeeeeeeeeee99994494444444944444449444444eeeeeeed656dc09d9d9d61551dc09d9d9d6656deee2eeee0444444444444440eeeeeeeeeebbaeeeeeeeeeee
eeeeeeee44994494449444444494444444444400eeeeeeeed60d777777777775577777777777d06deeeeeeee004499440e004440eeeeeeeeeeebaeeeeeeeeeee
eeee44994444444444444444444444444440eeeeeeeeeeeeed6000000000000ee0000000000006deeeeeeeeee0049eeeeeee000eeeeeeeeeeeeeeeeeeeeeeeee
__gff__
0041414141414141414141414141414141414141414141414141414141410000414141434341414141414141410000004141414141414141414141414141414141414141414141414141616180808000414040414141414141414040414141414545454343434343454541414141414145455149434343434545414141418080
0000000000000000000000000000000000000000000000000000000000000000000000000000000041418080800000000000000000000000414141800080414100000000000000000000008080804141000000000000000000004141808080804040404043430000000080418080800041414141434300000000004040008000
__map__
000000000000000000006e6f6e6f6e6f6e6f6f6e6f6e6f6e6f6e6f6e6f6e49466e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f497e7f7e7f7e7f7e7f7e7f7e7f7e7f7e7f7e7f7e7f000000000000000000007c7d7c7d7c7d7c7d1e1f1e1f1e1f1e1f5e5f5e5f5f
000000000000000000006e6f6e6f6e6f6e6f6f585945434443454244455554307e7f7e7f7e7f7e7f7e7f7e7f7e2e6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6f6f6e6f6e6f6e6f6e6f6e6f44417000000000000000000000000000000000000000000000000000000000000000000000000000007c7d5e5f5e5f5e5f6e6f6e6f6f
000000000000000000006e6f6e6f6e6f6e6f6f7c7d7c7d535453545354531f40000000000000000000000000002e6e6f6e6f6e6f6e6f6f584345436e6f6e6f6e6f6e6f6e6e6f6e6f6e6f520000000000000000000000000000000000000000000000000000000000000000000000000000000000516e6f6e6f6e6f7e7f7e7f7f
000000000000000000006e6f6e6f6e6f6e6f6f2e0000001e1f1e1f1e1f1e1f504d4e7a4c4e00000000000000000057464344464344425853547c7d002e2e2e6e6f6e6f6e6f2e2e2e2e2e000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e7f7e7f7e7f0000000000
000000000000000000006e6f6e6f6e6f6e6f6e2e0000005e5f5e5f5e5f5e5f6e48454645415200000000000000002f2f2f2f2f2f2f2f307d70000000002e2e2e2e2e2e2e2e2e000000000000000000000000000000007a0000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000006e6f6e6f6e6f6e6f6e2e0000516e6f6e6f6e6f6e6f49582f2f2f7d0000004d4c000000002f2f2f2f2f2f2f2f70000000000000002e2e2e2e2e2e2e000000000000000000000000000000005c5d0000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000006e6f6e6f6e6f6e6f6f2e0000007e7f7f7e7e7f6f582f2f2f2f7d000000514342520000007c7d2f2f7c7d7c7d000000000000000000000000000000000000000000004e4d4d4c4d4e5c5d4e6c6d4d00000000000000000000000000004d4e7a4c4d00000000000000004e4e4c4d4e4c4d4d4c00000000
000000000000000000006e6f6e6f6e6f6e6f6f2e0000000000000000007f7c7c7d7c7d00000000007c7d0000000000007c7d00000000000000000000000000000000000000000000000000514241424441564146424445483c3d0000000000000000000000514344454943520000000000005142414643424246464352000000
000000000000000000006e6f6e6f6e6f6e6f6f2e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000535453545354535453542f5759425200000000000000000000005354305354000000000000000040407172007374404000000000
000000000000000000006e6f6e6f6e4543444352000000000000000000000000000000000000000000000000000000000000000000000000004d4e000000004d4e4d38393434343d000000001e1f1e1f1e1f1e1f1e1f5e5f7c7d000000000000000000000000757c7d7c70000000000000000040680000000000674000000000
000000000000000000004542444558535453544c4e7a4d4c4d000000000000000000000000000000000000000000000000000000004e4d4c5147493132323b4745444644454342463c3d4d4c1e1f1e1f1e1f1e1f5e5f6e6f00000000000000000000000000000000000000000000000000000040780000000000774000000000
0000000000000000000030535453541e1f1e1f5642454344555200000000000000000000000000000000004d4d000000004c393a3b49444644555357454442585354535453545354594542561e1f1e1f5e5f5e5f6e6f7f7e00000000000000000000000000000000000000000000000000000040000000000000004000000000
00000000000000000000401e1f1e1f1e1f1e1f535453545354004d4e00000000000000000000000000005143463132323b4749455554535453545354535453541e1f1e1f1e1f1e1f1e1f1e1f5e5f5e5f6e6f6e6f7e7f000000000000000000000000000000000000000000000000000000000067690000000000664000000000
00000000000000000000401e1f1e1f1e1f1e1f1e1f1e1f7c7d514142520000000000000000000000000000535459454542555354531f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f5e5f6e6f6e6f7f7e7f7e0000000000000000000000000000000000000000000000000000000000000077790000000000766800000000
000000000000000000007c7d7c7d7c7d7c7d1f1e1f1e7d0000007c7d0000000000000000000000000000007c2f53545354301e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f1e1f5e5f6e6f7f7e7e7f00000000000000000000005c5d00004d4c000000000000000000000000000051313335377561624c6364407800000000
0000000000000000000000000000000000007c1e1f7d000000000000000000000000000000004e4d000000007c5e5f5e5f505e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f6e6f7f7e0000000000000000000000005c5d006c6d005143463c3d000000005c5d0000000000000057444447474955595854533c3d000000
000000000000000000000000000000000000007c7d0000000000000000000000000000000051424152000000006e6f6e6f6e6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f7e7f000000000000000000004c5c5d4e6c6d4c6c6d4c4e1e1f59483c3d00006c6d00000000000000535453595854535453544059483c3d4c
00000000000000000000000000000000000000000000000000000000000000000000000000007c7d00000000007e7e7f7e7f7e7f7e7f7f7e7e7e7f7e7e7f7f7e7f7e7e7f7e7f7e7f00000000000000000000005142434649434646474848481e1f1e57594546434549434631330000001e1f1e1f1e1f1e1f1e1f404057444243
00000000000000000000000000000000000000000000000000000000000000004a4b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d4c00007c7d7c402f2f2f576e6f6e5e5f5e5f5e5f5e5f5e5f5e5f57555200005e5f5e5f5e5f5e5f5e5f50505e5f5e5f
0000000000000000000000000000000000000000000000000000000000000051434252000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051434152000000004071727374596e6f6e6f6e6f6e6f6e6f6e6f6e6f7c7d0000516e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000007c7d000000000000000000000000004c4e5c5d4e4c5c5d4e4c4c000000000000000000000000000000000000000000007c7d00000000006800000000677e7f7f7e7f7f7e7e7e7f7e7f7e7f00000000002e2e2e2e2e2e2e2e2e2e2e2e6e6f6e6f
00000000000000000000000000000000000000000000000000000000000000000000000000000000004e4c38393a3b47484847484847484748473133000000000000000000000000000000000000000000000000000000780000000077000000000000000000000000000000000000000000000000000000000000002e2e2e2e
00000000000000000000000000000000000000000000000000000000000000000000000000000000514346474849414343445556434649424143414252000000000000000000000000000000000000000000000000000069000000006600000000000000000000000000000000000000000000000000000000000000002e2e2e
00000000000000000000000000004c4e0000000000000000000000000000004c4c4e4d4a4b4e4d4c4d535457585354535453545354535453545e5f7d000000000000000000000000000000004d4c5c5d4e4d4e000000007900000000760000000000000000000000000000000000004e4c000000000000000000000000002e2e
4d000000004c0000000038393a3b45463c3d00000000000000000000000066564142434142414346555e5f5e5f5e5f5e5f5e5f5e5f5e5f5e5f6e6f0000000000000000000000000000000051434455434441463133353740616263644000000000000000000000000000000000005144463c3d0000000000000000000000002e
483132323b473132323b45424155535457463c3d000000000000000000007653545354535453545e5f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f7f7e00000000000000000000000000004e4e4d53545354535430574447474748495853543c3d00000000006570000000000000000000535457463c3d4d4e5c5d00004d4e4c4e4c
41434649414243444558535453541e1f535457443c3d0000000000000065401e1f1e1f1e1f5e5f6e6f6e6f7e7f7e7f7e7f2e2e2e2e2e2e2e2e000000000000000000000000000000514149561e1f1e1f1e1f40301e5945445854401e1f42463c3d4d636470000000000000000000001e1f535459434245424152514441454645
535453545354535453541e1f1e1f1e1f1e1f535459463c3d000000636440401e1f1e1f5e5f6e6f6e6f6e6f0000000000002e2e2e2e2e2e2e2e00000000000000000000000000004e4e301e1f1e1f1e1f1e1f40401e545354531f505e5f5e5f59454455700000004c4e4d4c4d4e4a4b1e1f1e1f535430307c7d00003053545354
5e5f5e5f5e5f5e5f5e5f5e5f5e5f1e1f1e1f5e5f53545741424341584050505e5f5e5f6e6f6e6f6e6f6e6f00000000004d2e2e2e2e2e2e2e2e4d00000000000000000000003e3f4749401e1f1e1f1e1f1e1f50501e1f1e1f1e1f7e7f7e7f7e000000000000006556444246555644451e1f1e1f1e1f407d00000000401e1f1e1f
6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5f535453545354506e6f6e6f6e6f6e6f6e6f6e6f6e6f00007a005148474748484748474748313335374e4d4c4d4c3e3f47495830505e5f5e5f5e5f5e5f6e6f5e5f1e1f1e1f000000000000004d4c4d63643053545354535453541e1f1e1f1e1f400000000000401e1f1e1f
6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5f5e5f5e5f6e6f6e6f6e6f6e6f6e6f6e6e6f6e6f3536373839495857555859434143444946444748474848474845555354506f6e6f6e6f6e6f6e6f6e6f6e6f5e5f1e1f4d4c7a4e4d3e3f4749445530405e5f5e5f5e5f5e5f5e5f5e5f5e5f504e7a4d3e3f505e5f5e5f
6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6e6f6e6e6e48474558535453545354535453545354305745555657445853541e1f6e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f5e5f56464748474845555f5e5f50506e6f6e6f6e6f6e6f6e6f6e6f6e6f6e6f47484849466e6f6e6f
__sfx__
011000003005032050300503205030050320503005032050300503205030050320503005032050300503205030050320503005032050300503205030050320503005032050300503205030050320503005032050
010c00001835018350183501835018350183501835018350183501835018350183501835018350183501835018350183501835018350183501835018350183501835018350183501835018350183501835018350
000c0000213301d330213301d330233301f330233301f3302433021330243302133026330233302633023330303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d320
010c00000000000000306250000030625000003062500000306250000030625000003062500000306250000030625000002334023345000000000030625000002134021345000000000030625000002334023345
010c00003062500000213402134030625000003062500000233402334530625000002134021345306250000024340243403062500000306250000023340233403062500000306250000021340213403062500000
010c00000c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c345
010c0000303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d320
010c00000000000000306250000021340213450000000000306250000000000000003062500000000000000030625000002434024345000000000030625000002334023345000000000030625000002134021340
010c00003062500000306250000030625000003062500000306250000030625000003062500000306250000021340213403062500000306250000023340233403062500000306250000024340243403062500000
010c00000c3400c3450c3400c345093400934509340093450a3400a3450a3400a3450b3400b3450b3400b3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c345
010c00002134021340213402134021340213402134021340213402134021340213450000000000000000000030625000002134021345000000000030625000002334023345000000000030625000002434024345
010c00002134021340306250000030625000002334023340306250000030625000002434024340306250000024340243403062500000306250000023340233403062500000306250000030625000003062500000
010c00003062500000213402134500000000003062500000233402334500000000003062500000243402434530625000002434024340243402434530625000002334023340233402334023340233402334023340
010c00003062500000306250000030625000003062500000306250000030625000003062500000306250000030625000003062500000306250000030625000002434024345213402134030625000002434024345
010c00000c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450e3400e3451034010345113401134511340113451d3401d3451134011345113401134511340113451d3401d3451134011345
010c0000303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d32000000000000000000000000000000000000000002433024335213302133021330213352433024335
010c00002334023340233402334023340233402334023340233402334023340233450000000000000000000000000000000000000000000000000000000000003062500000306250000021340213453062500000
010c0000233402334030625000002434024345233402334030625000001f3401f3403062500000306250000030625000003062500000306250000021340213452834028345263402634030625000002434024345
010c0000103401034510340103451c3401c345103401034510340103450c3400c3450e3400e3451034010345113401134511340113451d3401d3451134011345113401134511340113451d3401d3451134011345
010c0000233302333023330233352433024335233302333023330233352b3302d33030330303352d3302d33500000000000000000000000000000021330213352833028335263302633026330263352433024335
010c00003062500000233402334530625000003062500000233402334530625000001f3401f3401f3401f34500000000000000000000000000000030625000003062500000306250000026340263453062500000
010c0000233402334030625000002434024345233402334030625000001f3401f3403062500000306250000030625000003062500000306250000030625000002434024345213402134030625000002434024345
010c0000233302333023330233352433024335233302333023330233352b3302d3303033030335343303433500000000000000000000000000000000000000002433024335213302133021330213352433024335
010c00003062500000233402334530625000003062500000233402334530625000001f3401f3401f3401f34500000000000000000000000000000000000000003062500000306250000021340213453062500000
010c0000233402334030625000002434024345233402334030625000001f3401f34030625000003062500000306250000030625000003062500000213402134521340213451d3401d34030625000002134021345
010c0000103401034510340103451c3401c3451034010345103401034510340103451c3401c34510340103450e3400e3450e3400e3451a3401a3450e3400e3450e3400e3450e3400e3451a3401a3450e3400e345
010c0000233302333023330233352433024335233302333023330233352b3302d33030330303352d3302d335000000000000000000000000000000213302133521330213351d3301d3301d3301d3352133021335
010c00003062500000233402334530625000003062500000233402334530625000001f3401f3401f3401f3450000000000000000000000000000003062500000306250000030625000001d3401d3453062500000
010c00001f3401f340306250000021340213451f3401f340306250000018340183403062500000306250000030625000003062500000306250000030625000002434024345213402134030625000002434024345
010c00000c3400c3450c3400c34518340183450c3400c3450c3400c3450c3400c3450e3400e3451034010345113401134511340113451d3401d3451134011345113401134511340113451d3401d3451134011345
010c00001f3301f3301f3301f33521330213351f3301f3301f3301f33518330183301833018330183301833530330303352d330303202933030320263302932030330303352d3303032029330303202633029320
010c000030625000001f3401f345306250000030625000001f3401f34530625000001834018340183401834500000000000000000000000000000000000000003062500000306250000021340213453062500000
010c00002f3302f3352b3302f320323302b3202f330323202f3302f3352b3302f3202b3302f320283302b32030330303352d330303202933030320263302932030330303352d3303032029330303202633029320
010c00002f3302f3352b3302f320323302b3202f330323202f3302f3352b3302f3202b3302f320283302b32030330303352d330303202933030320263302932030330303352d3303032029330303203433034330
010c00001f3401f340306250000021340213451f3401f3403062500000183401834030625000001c3401c3451a3401a3401a3401a3401a3401a34030625000001534015340153401534530625000001334013340
010c00000c3400c3450c3400c34518340183450c3400c3450c3400c3450c3400c3450c3400c3450c3400c34516340163403062500000306250000015340153403062500000306250000013340133403062500000
010c00003062500000303303033534320343252d3302d33530330303352d3302d335303303033534330343352e3302e335293302e32032330293202e330323202e3302e335293302e32032330293202e33032320
010c000034330343351f3401f345306250000030625000001f3401f3453062500000183401834530625000003062500000163401634016340163451a3401a3401a3401a3401a3401a3401a3401a3401a3401a340
010c00001334013345306250000011340113401134011345306250000018340183451a3401a3451c3401c34030625000000934009340093400934530625000000b3400b3400b3400b34530625000000c3400c340
010c00003062500000113401134030625000003062500000103401034030625000000e3400e34030625000000934009340306250000030625000000b3400b340306250000030625000000c3400c3403062500000
010c00002e3302e335293302e32032330293202e330323202e3302e335293302e32032330293202e330323202d3302d335283302d32030330283202d330303202d3302d335283302d32030330283202d33030320
010c00001a3401a3401a3401a3401a3401a3401a3401a3401a3401a345103401034530625000000e3400e3451c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c3401c340
010c00000c3400c34530625000000e3400e3400e3400e3453062500000183401834521340213451b3401b34030625000001434014340143401434530625000001334013340133401334530625000001134011340
010c000030625000000e3400e34030625000003062500000103401034030625000001534015340306250000014340143403062500000306250000013340133403062500000306250000011340113403062500000
010c00002d3302d335283302d32030330283202d330303202d3302d335283302d32030330283202d330303202c3302c335273302c32030330273202c330303202c3302c335273302c32030330273202c33030320
010c00001c3401c3401c3401c3401c3401c3401c3401c3401c3401c3451034010345306250000015340153451b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b3401b340
010c0000113401134530625000000f3400f3400f3400f345306250000018340183451b3401b3451a3401a34030625000001334013340133401334530625000000e3400e3400e3400e34530625000002834028340
010c000030625000000f3400f340306250000030625000000e3400e34030625000000c3400c34030625000001334013340306250000030625000000e3400e3403062500000306250000013340133403062500000
010c00002c3302c335273302c32030330273202c330303202c3302c335273302c32030330273202c3303032030330303352d33030320343302d3202d3303432030330303352d33030320343302d3202d33034320
010c00001b3401b3401b3401b3401b3401b3401b3401b3401b3401b3450e3400e34530625000000c3400c3451a3401a3401a3401a3401a3401a3401a3401a3401a3401a3401a3401a3401a3401a3451334013345
010e00001a1351a1351a1351a135000001a135000001c135000001c135000001c135000001c1301c1301c1351f1301f1350000021130211350000024130241350000026130261302613026130261302613026130
010e0000131351313513135131350000013135000001513500000151350000015135000001513015130151351813018135000001a1301a135000001d1301d135000001f1301f1301f1301f1301f1301f1301f130
010e00002613026130261302613026130261302613026130261302613026130261302613026130261302613026130261302613500000000000000000000000000000000000000000000000000000000000000000
010e00001f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f1301f13500000000000000000000000000000000000000000000000000000000000000000
0107000015645156050c6450c6050c6450c60515645156050c6450c6050c6450c60515645156050c6450c60515645156050c6450c60515645156050c6450c6050c6450c6050c6450c605156450c645156450c645
010e00000000000000000000000000000000000000000000000000000000000000000000000000000000000015635116351763515635116351763515635116351763515635156001560015600156001560015605
01100000247502b75030750347503475030750307503775037750327503275023750217501f7501d75023750217501f7501d75023750217501f7501d7501a7501a7501a7501a7501a75000700007000070000700
0110000024755287552b75530755307002d7550000032755327000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010900003f5733f5633f5433f5233f5133f5233f5433f5633f5733f5633f5433f5233f5133f503025030250302503025030250301503025030250302503025030050300503005030050300503005030050300503
010300001354013540145401555016550185501b5601e560235712a56100501005010050100501005010050100501005010050100501005010050100501005010050100501005010050100000000000000000000
01030000144721447215462164621a4621d4522144222432234222342224422244222442225412254122541225412254121640216402164021640216402164021640216402164021640216402164021640216402
01070000285512c5512d5512d5512d5512d5412d5412d5312d5212d5212d5112d5112d5112d5112d5112d5002a5012a5012a5012a5012a5012c5012c5012c5012c5012d5012d5012d5011e5011e5011e5011e501
010400002433024330243002433024330243302433024330243302433024330243302433022300223000830008300083000830008300083000830008300083000830008300083000830008300083000830008300
011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
01 00010203
00 04050607
00 0809060a
00 0b05060c
00 0d0e0f10
00 11121314
00 15121617
00 18191a1b
00 1c1d1e1f
00 11122014
00 15122017
00 1819211b
00 22232425
00 26272829
00 2a2b2c2d
00 2e2f3031
00 32333435
00 11121314
00 15121617
00 18191a1b
00 1c1d1e1f
00 11122014
00 15122017
00 1819211b
00 22232425
00 26272829
00 2a2b2c2d
00 2e2f3031
00 32333435
00 11121314
00 15121617
00 18191a1b
00 1c1d1e1f
00 11122014
00 15122017
00 1819211b
00 22232425
00 26272829
00 2a2b2c2d
00 2e2f3031
04 39777879
00 32333637
04 34354075

