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

-- ball
ballx=64
bally=64
ball_size=3
ballx_dir=5
bally_dir=-3

function _update()
  move_paddle()
  move_ball()
  bounce_ball()
end

function _draw()
  -- clear the screen
  rectfill(0,0,128,128,3)

  -- draw the paddle
  rectfill(padx,pady,padx+padw,pady+padh,15)

  -- draw the ball
  circfill(ballx,bally,ball_size,15)
end

function move_paddle()
  if btn(0) then
    padx-=3
  elseif btn(1) then
    padx+=3
  end
end

function move_ball()
  ballx+=ballx_dir
  bally+=bally_dir
end

function bounce_ball()
  -- left
  if ballx<ball_size then
    ballx_dir=-ballx_dir
    sfx(0)
  end

  -- right
  if ballx>128-ball_size then
    ballx_dir=-ballx_dir
    sfx(0)
  end

  -- top
  if bally<ball_size then
    bally_dir=-bally_dir
    sfx(0)
  end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00090000185551f555205551d55500500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500
