pico-8 cartridge // http://www.pico-8.com
version 29
__lua__

__gfx__
eeeeeeeee5eeeeeeeeeecccccceeceeeeeeeeeee99aa77a9eeee0444000077774444444444444440044444444444444477777777777777777777777777777777
eeeeeeee575eeeeeeeeceeccccccceeeeeeeeeee449aa7a9eeee044400007777449449444444440ee00444444494494477777777777777000077777777777777
ee7ee7ee5775eeeeeeeeccffccccceeeeeeeeeeeeedd76deeeee0494000077774499444444000eeeeee004444444994477777777777700000000777777777777
eee77eee57775eeeeeecccfcc7ccceeeeeeeeeeeed67ddeeeeee4494000077774449444440eeeeeeeeeeee004444944477777777770000000000007777777777
eee77eee577775eeeecccccc770cceee99aa77a9d6dddeeeeeee04940000777744444440eeeeeeeeeeeeeeee0444444477777777000000000000000077777777
ee7ee7ee57755eeeeeceeecc770ceeee449aa7a9ed55ddeeeeee4494000077774494440eeeeeeeeeeeeeeeeee444494477777770000000000000000007777777
eeeeeeee575eeeeeeeeeccccf77f0eeeeeddddeeeeedd7deeeee044400007777444440eeeeeeeeeeeeeeeeeeee04444477777700000000000000000000777777
eeeeeeeee5eeeeeeeee77ffcfffeeeeeed6776deeed67deeeeee04440000777744444eeeeeeeeeeeeeeeeeeeeee0444477777000000000000000000000077777
eeeeeeee88888888ee7777ccfeee77eeeee888eeeeeeeeeeeeee4440777700004440eeeeeeeeeeeeeeeeeeeeeeee044477770000000000000000000000007777
eeeeeeee88888888eee77ecccfcf77eee7777788eeeeeeeeeeee4440777700009440eeeeeeeeeeeeeeeeeeeeeeee044977770000000000000000000000007777
eeeeeeee88888888eeeeeecccc7ceeee777777888eeeeeeeeeee494077770000944eeeeeeeeeeeeeeeeeeeeeeeeee44977700000000000000000000000000777
eeeeeeee88888888eeeee7cee788eeee222888222eeeeeeeeeee494477770000440eeeeeeeeeeeeeeeeeeeeeeeeee04477700000000000000000000000000777
eeeeeeee88888888eee0877ee8878eeee2288822eeeeeeeeeeee49407777000044eeeeeeeeeeeeeeeeeeeeeeeeeeee4477000000000000000000000000000077
eeeeeeee88888888eee0888eee788eeeee28882eeeeeeeeeeeee49447777000040eeeeeeeeeeeeeeeeeeeeeeeeeeee0477000000000000000000000000000077
eeeeeeee88888888eeee8778eee08eeeeee282eeeeeeeeeeeeee4440777700004eeeeeeeeeeeeeeeeeeeeeeeeeeeeee470000000000000000000000000000007
eeeeeeee88888888eeee0888eeeeeeeeeeee2eeeeeeeeeeeeeee4440777700004eeeeeeeeeeeeeeeeeeeeeeeeeeeeee470000000000000000000000000000007
7777777700000000eeeeeeeeeeeeeeeeeeeeeeee0000000000000000eeeeeeee4eeeeeeeeeeeeeeeeeeeeeeeeeeeeee470000000000000000000000000000007
7777777700007777eeeeeeeeeeeeeeeeeeeeeeee7777000000000000eeeeeeee4eeeeeeeeeeeeeeeeeeeeeeeeeeeeee470000000000000000000000000000007
7777777777777777eeeeeeeeeeeeeeeeeeeeeeee7777777777777777eeeeeeee40eeeeeeeeeeeeeeeeeeeeeeeeeeee0477000000000000000000000000000077
7777777777777777eeeeeeeeeeeeeeeeeeeeeeee7777777777777777eeeeeeee44eeeeeeeeeeeeeeeeeeeeeeeeeeee4477000000000000000000000000000077
7777777777777777eeeeeeeeeeeeeeeeeeeeeeee7777777777777777eeeeeeee440eeeeeeeeeeeeeeeeeeeeeeeeee04477700000000000000000000000000777
7777777777777777eeeeeeeeeeebeeeeeeeee9ee7777777777777777eeeeeeee944eeeeeeeeeeeeeeeeeeeeeeeeee44977700000000000000000000000000777
7777777777777777eeeeeeeeebeb9e9eee9e99ee7777777777777777eeeeeeee9440eeeeeeeeeeeeeeeeeeeeeeee044977770000000000000000000000007777
7777777777777777e9eeee9ebb39b9b9e9be9beb7777777777777777eeeeeeee4440eeeeeeeeeeeeeeeeeeeeeeee044477770000000000000000000000007777
eeeeeeeeeee9ee9eb9bb9b9bb9b9b9b9b9b39b9be9ee9eeeeeeee9eeeeeeeeee44440eeeeeeeeeeeeeeeeeeeeee0444477777000000000000000000000077777
eeeeeeee9ee9bb9bb9bb9bbbb9bbb9bbb9bbbb9bb9bb9ee9ee9ee9e9eeeeeeee444440eeeeeeeeeeeeeeeeeeee44444477777700000000000000000000777777
eeeeeeeb9bbbbb9bb9bbbbbbbbbbbbbbbbbbbbbbb9bbbbb9bb9bb9b9beeeeeee4494444eeeeeeeeeeeeeeeeee044494477777770000000000000000007777777
eeeeee9bbbb93bbbbbb39b3bbbbbbbbbbbbbbbbbbbb39bbbbbbbb9bbb9eeeeee44444440eeeeeeeeeeeeeeee0444444477777777000000000000000077777777
eeeeee9bbbbb03bbbb30b30bbbbb0bbbbbb3bbbbbb30bbbbbbbbbbbbb9eeeeee4449444440eeeeeeeeeeee044444944477777777770000000000007777777777
eeeeeeb3b3bb03b30b30b00bb03b03bbbbb030b0bb30bb3bbbbb3bbb3beeeeee449944444440beeeeeeb04444444994477777777777700000000777777777777
eeeeeebeb0b3003003003003000b00b033b00030b3003b0bb3b30b33ebeeeeee44944944444bb4beeb4bb4444494494477777777777777000077777777777777
eeeeeebe00000000000400400403003003004000b000000003000303ebeeeeee44444444444bbbbbbbbbb4444444444477777777777777777777777777777777
00000000044404440004404044404400444044400444444444444444eeeeeeee44444444444b3bbbbbb3b4444444444477777777777777770000000000007777
0000000004444444404444444444444044444440e004444444944944eeeeeeee4444444444430bbbbbb034444444444400777777777777770000000000007777
0000000004444444444444444444444444444440eee0044444449944eeeeeeee4444444494404b3bb3b404494444444400007777777777770000000000000777
0000000004444494444449499444444449444440eeeeee0044449444eeeeeeee444494444444430bb03444444449444400000077777777770000000000000777
0000777744444499444444499494444499444444eeeeeeee04444444eeeeeeee4444444994444043340444499444444400000000777777770000007700000077
0000777704444499444494999944444499444440eeeeeeeee4444944eeeeeeee4444449999444440044444999944444400000000077777770000777700000077
0000777744444494444494994949444449444444eeeeeeeeee044444eeeeeeee4444949499494444444494994949444400000000007777770077777700000007
0000777704444494444494494949444449444440eeeeeeeeeee04444eeeeeeee4444949494494444444494494949444400000000000777777777777700000007
0000000004444444444444499949444444444440eeeeeeeeeeee0444000000000000000000000000000000000000000000000000000000000000000000000007
0000000004444494444449499444444449444440eeeeeeeeeeee0449000000000000000000000000000077777777000000000000000000000000000000000007
0000000004444444444449499444444444444440eeeeeeeeeeeee449000000000000000000000000777777777777777700000000000000000000000000000077
0000000004444494444444499949444449444440eeeeeeeeeeeee044000000000000000000007777777777777777777777770000000000000000000000000077
7777777744444499444444499944444499444444eeeeee04eeeeee44000000000000777777777777777777777777777777777777777700000000000000000777
7777777704444499444494949994444499444440eeeb0444eeeeee04000000007777777777777777777777777777777777777777777777770000000000000777
7777777744444494444494949949444449444444eb4bb444eeeeeee4000077777777777777777777777777777777777777777777777777777777000000007777
7777777704444494444494999949444449444440bbbbb444eeeeeee4777777777777777777777777777777777777777777777777777777777777777700007777
0000000004444494444444999949444449444440eee04444eeeeeee4eeeeeeeeeeeeeeeeeeeeeeeeeeee9ebeebe9eeeeeeeeeeeeeeeeeeeeeeeeeeee00077777
0000000004444494444494999944444449444440ee444444eeeeeee4eeeeeeeeeeeeeeeeeeeee9eeeb9e9bbbbbb9e9beee9eeeeeeeeeeeeeeeeeeeee00777777
0000000004444444434499999449444444444440e0444944eeeeee04eeeeeeeeeeeeee9eee9ee9eebb9b9bbbbbb9b9bbee9ee9eee9eeeeeeeeeeeeee07777777
00000000044444944b343949994944444944444004444444eeeeee44eeeeeeeee9eeee9ee99ebb9bbbbbbbbbbbbbbbbbb9bbe99ee9eeee9eeeeeeeee77777777
00000000b44444993bb4b949999944449944444b44449444eeeee044eeeeeeeee9be9b9bb93bbb9bbbbb9bbbbbb9bbbbb9bbb39bb9b9eb9eeeeeeeee77777777
00000000bb4444bbbbbb3999999944b3bb4444bb44449944eeeee449eee9ee9bb9bb9bbbbb3bbbbbb3bbbbb33bbbbb3bbbbbb3bbbbb9bb9bb9ee9eee77777777
777777774b344bbbb33bb939993b43bbbbb443b444944944eeee0449e9e99b9bbbbb93b9bb3bbbbbb33b3b3003b3b33bbbbbb3bb9b39bbbbb9b99e9e77777777
77777777bbb3443bbb33b3b3393b3bbbb3443bbb44444444eeee044499b99bb3bbbbb3b9bbbb3b3b3303030000303033b3b3bbbb9b3bbbbb3bb99b9977777777
0000000000000007bb3b3bbbbb3bbb3b7000000000000077eeeeeeeb9bbb9bbbbbbbbbb3bbbbbbb300000004400000003bbbbbbb3bbbbbbbbbb9bbb9beeeeeee
0000000000000077b3bb33bbb333bb3b7700000000007777eeeeee9bbbbbbbbbbb0bb3b3bb0bb3b304404004400404403b3bb0bb3b3bb0bbbbbbbbbbb9eeeeee
000000000000077703b3bbbbb3b3b3b07770000000777777eeeeee9bbbbb300b3003b0303003b0304444440440444444030b3003030b3003b003bbbbb9eeeeee
0000007700007777b03bbb333bbbbbb07777000077777777eeeeeeb3b3bb04030040300400403004444444444444444440030400400304003040bb3b3beeeeee
0000777700077777b333bbbbb33b30bb7777700077777777eeeeeebeb0bb44404444004444440044444444444444444444004444440044440444bb0bebeeeeee
0077777700777777b3bbb3bb30033bbb7777770077777777eeeeeebe30b3444044444044444440449444444444444449440444444404444404443b03ebeeeeee
77777777077777773bb330bbbb3b33bb7777777077777777eeeeeeee00b4444444444444444444499449444444449449944444444444444444444b00eeeeeeee
7777777777777777bbbbb0bbb33bb3bb7777777777777777eeeeeeee4034444494494444444494499944444444444499944944444444944944444304eeeeeeee
eeeeccccccee1eeeeeeeccccceeeeeeeeeeeccccceeeeeeeeeeeccccceeeeeeeeeeeccccceeeeeeeeeeecccccceeceeeeeeecccccceeceeeeeeecccccceeceee
eeeceeccccccceeeeeececccccceeeeeeeececccccceeeeeeeececccccceeeeeeeececccccceeeeeeeeceeccccccceeeeeeceeccccccceeeeeeceeccccccceee
eeeeccffccccceeeeeeeccffcccceeeeeeeeccffcccceeeeeeeeccffcccceeeeeeeeccffcccceeeeeeeeccffccccceeeeeeeccffccccceeeeeeeccffccccceee
eeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceee
eecccccc770cceeeeeccccccc70cceeeeeccccccc70cceeeeeccccccc70cceeeeeccccccc70cceeeeecccccc770cceeeeecccccc770cceeeeecccccc771cceee
eecee1cc770ceeeeeeceecccc70ceeeeeeceecccc70ceeeeeeceecccc70ceeeeeeceecccc70ceeeeeeceeecc770ceeeeeeceeecc770ceeeeeeceeecc771ceeee
eeeeccccf77f0eeeeeeeccccf7ff0eeeeeeeccccf7ff0eeeeeeeccccf7ff0eeeeeeeccccf7ff0eeeeeeeccccf77f0eeeeeeeccccf77f0eeeeeeeffccf77f0eee
eeeececccffeeeeeeeeceecccffeeeeeeeeceecccffeeeeeeeeceecccffeeeeeeeecefcccffeeeeeeeeececccffeeeeeeee77ffcfffeeeeee77fecfccfeee77e
eeeeee1fccf7eeeeeeeeecfcffe77eeeeeeeecccffee77eeeeeeecccffeeeeeeeeeefcccfeeeeeeeeeeeee7fcfeeeeeeee7777ccfeee77ee7777eeccfffff77e
eeeeee777cf77eeeeeee77eccff77eeeeee77fcccfff77eeeeeeee7ccff77eeeeee77eecfeeeeeeeeeeee7777ff77eeeeee77ecccfcf77eee77eeeccfcceee88
eeeeee7777c77eeeeeee77ecccceeeeeeee77eeccceeeeeeeeeeeeeccce77eeeeee77eecf77eeeeeeeeeee77ccc77eeeeeeeeecccc7ceeeeeeeeeeeccec78780
eeeeeee77eceeeeeeeeeeeccee7ceeeeeeeeeecceccee88eee000eececceeeeeeeeeeeecc77eeeeeeeeeeee87ceeeeeeeeeee7cee788eeeeeeee7cceee77878e
eeeeeeeececeeeeeeeee7ccee888eeeeee87ccceeec7870ee07887cceecceeeeeee087ccceeeeeeeeeeeeec887eeeeeeeee0877ee8878eeeeee787eeeee880ee
eeeeeeee7e7eeeeeeee877eeee877eeee787eeeeee7880eee8787cceeee778eeee077eee7eeeeeeeeeeeeec087eeeeeeeee0888eee788eeeee087eeeeee00eee
eeeeeee0872088eeeee88878eee88eeee87eeeeeeee80eeeeeeeeeeeeee8878eee08eeee8788eeeeeeeee870788eeeeeeeee8778eee08eeeee888eeeeeeeeeee
eeeeeee27888028eeeee87888eeeeeeee88eeeeeeeeeeeeeeeeeeeeeeeee8788ee88eeee07088eeeeeeee8880888eeeeeeee0888eeeeeeeeee0888eeeeeeeeee
eeeecccccceeceeeeeeecccccceeceeeeeeecccccceeceeeeeeeccccceeeeeeeeeeeecccceeeeeeeeeeeeecccceeeeeeeeeeecccceeeeeeeeeeeeecccceeeeee
eeeceeccccccceeeeeeceeccccccceeeeeeceeccccccceeeeeececccccceeeeeeeeeeecffcceceeeeeeeecccccceceeeeeeeeecffcceceeeeeeeecccccceceee
eeeeccffccccceeeeeeeccffccccceeeeeeeccffccccceeeeeeeccffcccceeeeeeeeeeecffccceeeeeeeeecffcccceeeeeeeeeecffccceeeeeeeeecffcccceee
eeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeecccfcc7ccceeeeeeeccccccc7cceeeeeeeccfccc7cceeeeeeccccccc7cceeeeeeeccfccc7ccee
eecccccc771cceeeeecccccc771cceeeeecccccc771cceeeeeccccccc70cceeeeeeccccccc770ceeeeeecccccc770ceeeeeccccccc770ceeeeeecccccc770cee
eeceeecc771ceeeeeeceeecc771ceeeeeeceeecc771ceeeeeeceecccc70ceeeeeeeeeccccc770ceeeeeccccccc770ceeeeeeeccccc770ceeeeeccccccc770cee
eeeeccccf77f0eeeeeeeccccf77f0eeeeeeeccccf77f0eeeeeeeccccf7ff0eeeeeeeeeccccf7ff0eeeeeeeccccf7ff0eeeeeeeccccf7ff0eeeeeeeccccf7ff0e
eeeecefccfeeeeeeeeeecefccfeeeeeeeeeecffccffeeeeeeeeceecccffeeeeeeeee00c77cfffeeeeeee00888cfffeeeeeee00c722f2feeeeeee00c77cfffeee
eeeeefccffe77eeeeeeeefcccfeeeeeeeeeefcccfeeeeeeeeeeeeccffeeeeeeeeee0ff7770072eeeeee0f8888007eeeeeee0ff77702722eeeee0ff777007eeee
eeeefecccff77eeeeeeee77ccf77eeeeeee77eecfeeeeeeeeeeee77cfe77eeeeee7ecc777f0880eeee2288877f07eeeeeeee11777f02222eee2211777f07eeee
eee77eeccceeeeeeeeeee77ccc77eeeeeee77eeccf77eeeeeeeee77ccf77eeeee777cccff0e870eee22888cff07eeee2ee87e11ff07e280ee228e11ff07eeeee
eee77ecceccee88eee000eececceeeeeeeeeeeecce77eeeeeeeeeeececeeeeee087ccce1117880ee222ccee11eeee2e2088111ecccee780e22211eecceeeeee2
ee80ccceeec7870ee07887cceecceeeeeee087ccceeeeeeeeeeeeeec07eeeeee0888eeeee7880eee22eeeeee1eeee2220887eeeeeec7870e22eeeeeceeeee2e2
e787eeeeee7880eee8787cceeee778eeee077eee7eeeeeeeeeeeee7c88eeeeee08878eeee8880eee2eeee871eeee222e08888eeeee7880ee2eeeee77eeee2222
e87eeeeeeee80eeeeeeeeeeeeee8878eee08eeee8788eeeeeeeee08700eeeeeee07782eeee80eeeee2ee8877222222eee08882eeee8880eee2eee0887822222e
e88eeeeeeeeeeeeeeeeeeeeeeeee8788ee88eeee07088eeeeeeee078880eeeeeee0888222eeeeeeeeeee88887222eeeeee0888222ee80eeeeeeee08788822eee
eeecccceeeeeeeeeeeeeeeeeeceeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
ecccccccceeeeeeeeeeeeeecccceeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eccccc7cceeeeeeeeeeeeccccccceeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
ccccc777cceeeeeeeeeecccc770ce0ee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
cccccc7ccceeeeeeeeeeeecc7707feee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
cccccccccceeeeeeeeeeecccc77ffeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
cccccccccceeeeeeeeeecccccffffeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
ecccccccceeeeeeeeeeeccccccffeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
ecccccccceeeeeeeeeeececcccceeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeecccceeeeeeeeeeeeeeecfcffeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeecfccffeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeeefcccf77eee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeee77ccc77eee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeee77c0ceeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeeeeec0ceeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
eeeeeeeeeeeeeeeeeeeeeeeecceeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeeee7c7eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeee8870eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeee8888eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeee7707eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeee8808eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeeee8e8eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeeee8e8eeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
9999999999999999eeeeeeeeeeeeeeee999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
__gff__
0000000021210005051109030101010100000000000000030500000301000001010100000001010005000003010000010001010101010100050503030101010101010101010101000000000001010101010101010101010101010101010101010101010101010101010101010101010101010101010100010101010101010100
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
1010101010101010101020525352535253525352535253525352535253525320202020202020202020202020202052535253525352535253525352535253525352535253525352535253525352535253525352535253525352525352535253525320101010101010101010525352535253525352535253525352535253525352
1010101010101010101020525352535253525352535253525352535253525320101010101010101010101010101052535253525352535253525352535253525352535253525352535253525320101010101010101010101010101010101010101010101010101010101010101010101010101010205253525352535253525352
1010101010101010101020525352535253525352535253525352535253525320101010101010101010101010101052535253525352535253525352535253525352535253525352535253525310101010101010101010101010101010101010101010101010101010101010101010101010101010101020525352535253525352
1010101010101010101020525352535253525310101010525352535253525320101014101010101010101010101052535253525352535253525352535253525352535253525320101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010525352531010101010
1010101010101010101020525352535253525310101010525352535253525320202020202010101010101010101052535253525352535253201010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
1010101010101010101020525352535253525310101010101020202020525352535253202010101010101010101052535253525352532010101010101010101010101010101010101010101010101410102010102010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101010101010101010205253525352535253101010101010101020205253525352532010101010202010101010525352535253525310101010101010101010101010101010101010101010205253202020202020205b5c5d5e1010101010101010101010101010141010101010101010101010101010101010101010101010
1010101010101010101020525352535253525310101010101010101010525352535253101010101010101010101010105253101010101010101010101010101010101010101010101010101020525352535253525320202020201010101010101010101010102020202020101010101010101010101010101010101010101010
1010101010101010101020525352535253525310101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101020525352535253525320101010101010101010101010101010102020202020101010101010101010101010101010101010101010
1010101010101010101020525352535253525310101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010105758595a205b5c5d5e1020525352535253525320101010101010101010101010101010101020202010101010101010101007202020202017101010101010
10101010101010101010205253525352535253101014101010101010101010101010101010101010101010101010101010101010101010101020202526262120202020202020202020202020205253202020202010101010101010101010101010101010101010101010101010101010101010070c0d100e0f17101010101010
101010101010101010102052535253525352535253525352531010101010101010101010101010101010101010101010105758595a2020202052535253525352535253525352535253525352535253202020101010101010101010101010101010101010101010101010101010101010101010071c1010101f17101010101010
1010101010101010101020525352535253525352535253525310101010101010101010101010101010101052532020202020202020202052535253525352535253525352535253525352535253202020101010101010101010101010101010101010101010101010101010101010101010101007101010101017101010101010
10101010101010101010205253525352535253525352535253102020101010101010101010101010101010525352535253525352535253525352535253525352535253525352535253525320101010101010101010101010101010101010101010101010101010101010101010101010101010072c1010102f17101010101010
101010101010101010102052535253525352535253202010101010101010101010101010101010101010105253525352535253525352535253525352535253525352535253525352532020101010101010101010101010101020201010101010101010041010101010101020202020205c5d5e073c3d103e3f17101010101010
101010101010101010101010101010101010202020201010101010101010101010101010101010101010101020525352535253525352535253202020202020202020202020525352531010101010101010101010101020201020201020525352535253525352531010101010104c4d52532020202020202020205b5c5d5e1010
10101010101010101010101010101010101010201010101010101010101010101010101010102020101010101010202020202020202020202010101010101010101010101010101010101010101010101010101010102020102020102052535253525352535253101010101010104f5253525352535253525352532020205b5c
1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010102020202020202020205253525352535253525320202020202010105253525352535253525352535253202020
1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010102020202020202020205253525352535253525320202020202010105253525352535253525352535253525352
1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202010101010100720202020201710101010101010101010101010101010105253525352535253525352535253525352
101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010070c0d100e0f1710101010101010101010101010101010105253525352535253525352535253525352
101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010102010101020101010101010101010101010101010101010101010101010101010101010101010071c1010101f1710101010101010101010101010101010102020202020202020202020202020525352
10101010101010101010101010101010101010101010101010101010101010101010101010101010105758595a20202020202020202020205b5c5d5e1010101010101010101010101010101010101010101010101010100710101010101710101010101010101010101010101010101010101010101010101010101020525352
101010101010101010101010101010101010101010101010101010101010101004101020202020202020202020525352535253525352532020202020101010101010101010101010101010101010201010101010101010072c1010102f1710101010101010101010101010101010101010101010101010101010101020525352
101024242310101010106768696a20205b5c5d5e1010101010101010105f20202020205253525352535253525352535253525352535253201010101010101010101010101010101010101010205253525352535b5c5d5e073c3d103e3f171010101010101010101010101010101010202020205b5c5d5e101010101020525352
363134343335363631337778797a202020202020205b5c5d5e1010104e6f205253525352535253525352535253525352535253525352531010101010101010101010101010101010101010102052535253525320202020202020202020205b5c5d5e101010101010101010101010105253525352532020202010202020525352
43424342434243424342435253525352535253525320202020202020202020525352535253525352535253525352535253525352535253101010101010101010101010101010101010101010205253525352535253202020202020202020202020205b5c5d5e10101010101010105f5253525352535253202010205253525352
535253525352535253525352535253525352535253525352535253525352535253525352535253525352531010101010101010101010101010101010101010101010101010101010105253525352535253525352535253525320202020202020202020202020105d5e101010104e6f5253525352535253202010205253525352
5352535253525352535253525352535253525352535253525352535253525352535253525352535253525310101010101010101010101010101010101010101010101010101010101052535253525352535253525352535253201010101010101010101010101020202020202020205253525352535253201010105253525352
636263626362636263525352535253525352535253525352535253525352535253525352535253525352531010101010205253525352535253205b5c5d5e10101010105758595a202052535253525352535253525352535253201010101010101010101010101052535253525352535253525352535253201014105253525352
7273727372737372732020202020202020202020202020202020202020202020202020202020202020202010101410102052535253525352532020202020202020202020202020202020202020202020202020202020202020201010141010202020202020202052535253525352535253525352535253201004105253525352
7273727372727372722020202020202020202020202020202020202020202020202020202020202020202020202020202052535253525352532020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202052535253525352535253525352535253202020205253525352
__sfx__
010c00002d340293402d340293402f3402b3402f3402b340303402d340303402d340323402f340323402f34023340233403062500000306250000021340213403062500000306250000023340233403062500000
010c000030625000000934009345153401534509340093450a3400a34516340163450a3400a34517340173450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c3450c3400c345
010c0000213301d330213301d330233301f330233301f3302433021330243302133026330233302633023330303302b3202f330303202d330303202b3302d320303302b3202f330303202d330303202b3302d320
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
010c000030625000002834028345293402934528340283452b3402b34528340283452834028345243402434530625000003062500000306250000030625000002434024345213402134030625000002434024345
010c000013340133451034010345103401034511340113451134011345123401234513340133451134011345113401134511340113451d3401d3451134011345113401134511340113451d3401d3451134011345
010c000030330303352d33030320343302d3202d3303432030330303352d33030320343302d3202d3303432000000000000000000000000000000000000000002433024335213302133021330213352433024335
010c00002834028345306250000030625000003062500000306250000030625000003062500000306250000000000000000000000000000000000000000000003062500000306250000021340213453062500000
010c000030625000002834028345293402934528340283452b3402b34528340283452834028345243402434500000000000000000000000000000000000000000000000000000000000000000000000000000000
010c00001334013345103401034510340103451134011345113401134512340123451334013345113401134500000000000000000000000000000000000000000000000000000000000000000000000000000000
010c000030330303352d33030320343302d3202d3303432030330303352d33030320343302d3202d3303432000000000000000000000000000000000000000000000000000000000000000000000000000000000
010c00002834028345306250000030625000003062500000306250000030625000003062500000306250000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010900003f5733f5633f5433f5233f5133f5233f5433f5633f5733f5633f5433f5233f5133f503025030250302503025030250301503025030250302503025030050300503005030050300503005030050300503
010300001354013540145401555016550185501b5601e560235712a56100501005010050100501005010050100501005010050100501005010050100501005010050100501005010050100000000000000000000
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
02 36373839

