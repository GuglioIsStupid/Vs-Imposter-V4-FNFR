## Functions

#### (Replace "object" with things you want to change)
#### Also note that these settings are NOT available in base FNFR
## Image Functions
```lua
object:draw(x, y)
```lua
object:udraw(sizeX, sizeY, x, y)
```
Size up objects like this `object:udraw(3,3)`
Defaults to 7, 7

```lua
object:cdraw(R,G,B,A)
```
> Alpha channel does not use 255 values

This is a function for automatically recolouring sprites. RGB Values are in 255 values
(This is used for the lights in week3)

```lua
object:cudraw(R,G,B,A)
```
> Alpha channel does not use 255 values

Same as `object:cdraw(R,G,B,A)` but also for upscaling assets

```lua
love.graphics.setColorF(R,G,B,A)
```
> Alpha channel does not use 255 values

`love.graphics.setColor(R,G,B,A)` but uses 255 values

## Week Functions

```lua
weeks:drawHealthBar()
```
This is for drawing the healthbar in a week
