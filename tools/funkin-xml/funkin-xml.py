#!/usr/bin/env python3

# --------------------------------------------------------------------------------
# Friday Night Funkin' Rewritten Legacy XML Conversion Helper v1.2
#
# Copyright (C) 2021  HTV04
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
# --------------------------------------------------------------------------------

# Modified by GuglioIsStupid

import os
import sys

import xml.etree.ElementTree as ET

xmlname = os.path.split(sys.argv[1])[1]
sheetxml = ET.parse(xmlname).getroot()

lua = ('return graphics.newSprite(\n'
	'\tlove.graphics.newImage(graphics.imagePath("path/to/image")), -- Do not add the .png extension\n'
        '\t{\n')
c = 0
for SubTexture in sheetxml.findall('SubTexture'):
    c += 1

    name = SubTexture.get('name')
    x = SubTexture.get('x')
    y = SubTexture.get('y')
    width = SubTexture.get('width')
    height = SubTexture.get('height')
    offsetx = SubTexture.get('frameX')
    offsety = SubTexture.get('frameY')
    offsetWidth = SubTexture.get('frameWidth')
    offsetHeight = SubTexture.get('frameHeight')

    if offsetx is None: offsetx = '0'
    if offsety is None: offsety = '0'
    if offsetWidth is None: offsetWidth = '0'
    if offsetHeight is None: offsetHeight = '0'

    lua += '\t\t{x = ' + x + ', y = ' + y + ', width = ' + width + ', height = ' + height + ', offsetX = ' + offsetx + ', offsetY = ' + offsety + ', offsetWidth = ' + offsetWidth + ', offsetHeight = ' + offsetHeight + '}, -- ' + str(c) + ': ' + name + '\n'

lua = lua[:len(lua) - (len(str(c)) + len(name) + 9)] + '} -- ' + str(c) + ': ' + name + '\n'
lua += '\t},\n'
lua += ('\t{\n'
    '\t\t--To get the animations, look at the number and the name of the frame\n'
    '\t\t--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation\n\t\t--Get the offset by using the ingame offset editor and pressing 7\n'
    '\t\t["anim"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},\n') # Default speed is 24
lua += (
    "\t},\n"
    "\t\"anim\", -- set to default animation\n"
    "\tfalse -- If the sprite repeats\n"
    ")\n"
)
outputname = xmlname[:len(xmlname) - 4] + '.lua'
with open(outputname, 'w') as f:
    f.write(lua)
