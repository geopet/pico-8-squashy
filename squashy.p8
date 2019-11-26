pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- squashy tutorial
-- by geopet (geoff petrie)

-- paddle
padx=52
pady=122
padw=24
padh=4

function _update()
  move_paddle()
end

function _draw()
  -- clear the screen
  rectfill(0,0,128,128,3)

  -- draw the paddle
  rectfill(padx,pady,padx+padw,pady+padh,15)
end

function move_paddle()
  if btn(0) then
    padx-=3
  elseif btn(1) then
    padx+=3
  end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
