--[[
This file is a part of Vanilla Engine; a FNF engine built from FNFR.
This is used to like hide our GJ keys so like uhhh, please don't steal them.
--]]

local a={}local b="f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5"function a.e(c)local d=""for e=1,#c do local f=string.byte(c,e)local g=string.byte(b,(e-1)%#b+1)d=d..string.char(bit.bxor(f,g))end;return d end;function a.d(c)local h=""for e=1,#c do local f=string.byte(c,e)local g=string.byte(b,(e-1)%#b+1)h=h..string.char(bit.bxor(f,g))end;return h end;return a