local cutscene = {}

function cutscene.video(path)
    local video = {
        video = love.graphics.newVideo(path),
        playing = false,
        finished = false,
        x = 0,
        y = 0,
        orientation = 0,
        scale = 1,
        offsetX = 0,
        offsetY = 0,
        shearX = 0,
        shearY = 0,

        play = function(self)
            self.video:play()
            self.playing = true
            self.finished = false
            inCutscene = true
        end,

        stop = function(self)
            self.video:stop()
            self.playing = false
            self.finished = true
        end,

        pause = function(self)
            self.video:pause()
            self.playing = false
        end,

        resume = function(self)
            self.video:resume()
            self.playing = true
        end,

        stopped = function(self, func)
            if not self.finished then
                if func then func() end
            end
        end,

        isPlaying = function(self, func)
            return self.playing
        end,

        draw = function(self)
            love.graphics.draw(
                self.video,
                self.x,
                self.y,
                self.orientation,
                self.scale,
                self.scale,
                self.offsetX,
                self.offsetY,
                self.shearX,
                self.shearY
            )
        end,

        destroy = function(self)
            self.video:release()
            collectgarbage()
        end
    }

    return video
end

return cutscene