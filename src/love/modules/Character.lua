local character = {}

function character.daddydearest(x, y)
    curEnemy = "daddydearest"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week1/DADDY_DEAREST"))
    char:addByPrefix("idle", "Dad idle dance", 24, false)

    char:addByPrefix("left", "Dad Sing Note LEFT0", 24, false)
    char:addByPrefix("right", "Dad Sing Note RIGHT0", 24, false)
    char:addByPrefix("up", "Dad Sing Note UP0", 24, false)
    char:addByPrefix("down", "Dad Sing Note DOWN0", 24, false)

    char:addOffset("idle",  0, 0   )

    char:addOffset("left", -9, 10  )
    char:addOffset("right", 0, 27  )
    char:addOffset("up",   -6, 50  )
    char:addOffset("down",  0, -30 )

    char:animate("idle", false)

    char.colours = {175,102,206}

    return char
end

function character.boyfriend(x, y)
    curPlayer = "boyfriend"
    local char = paths.sprite(x or 0, y or 0, "BOYFRIEND")
    char:addByPrefix("idle", "BF idle dance0", 24, false)
    char:addByPrefix("shaking", "BF idle shaking0", 24, false)
    char:addByPrefix("hey", "BF HEY!!", 24, false)

    char:addByPrefix("left", "BF NOTE LEFT0", 24, false)
    char:addByPrefix("right", "BF NOTE RIGHT0", 24, false)
    char:addByPrefix("up", "BF NOTE UP0", 24, false)
    char:addByPrefix("down", "BF NOTE DOWN0", 24, false)

    char:addByPrefix("miss left", "BF NOTE LEFT MISS0", 24, false)
    char:addByPrefix("miss right", "BF NOTE RIGHT MISS0", 24, false)
    char:addByPrefix("miss up", "BF NOTE UP MISS0", 24, false)
    char:addByPrefix("miss down", "BF NOTE DOWN MISS0", 24, false)

    char:addOffset("idle",      0, 0      )
    char:addOffset("shaking",  -4, 0      )
    char:addOffset("hey",      -3, 5      )

    char:addOffset("left",   5, -6        )
    char:addOffset("right", -48, -7       )
    char:addOffset("up",    -46, 27       )
    char:addOffset("down",  -20, -51      )

    char:addOffset("miss left",   7, 19   )
    char:addOffset("miss right", -44, 22  )
    char:addOffset("miss up",    -46, 27  )
    char:addOffset("miss down",  -15, -19 )

    char:animate("idle", false)

    char.colours = {49,176,209}

    return char
end

function character.daddydearest(x, y)
    curEnemy = "daddydearest"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week1/DADDY_DEAREST"))
    char:addAnimByPrefix("idle", "Dad idle dance", 24, false)

    char:addAnimByPrefix("left", "Dad Sing Note LEFT", 24, false)
    char:addAnimByPrefix("right", "Dad Sing Note RIGHT", 24, false)
    char:addAnimByPrefix("up", "Dad Sing Note UP", 24, false)
    char:addAnimByPrefix("down", "Dad Sing Note DOWN", 24, false)

    char:addOffset("idle",  0, 0   )

    char:addOffset("left", -9, 10  )
    char:addOffset("right", 0, 27  )
    char:addOffset("up",   -6, 50  )
    char:addOffset("down",  0, -30 )

    char:animate("idle", false)

    char.colours = {175,102,206}

    return char
end

function character.boyfriend(x, y)
    curPlayer = "boyfriend"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("BOYFRIEND"))
    char:addAnimByPrefix("idle", "BF idle dance", 24, false)
    char:addAnimByPrefix("shaking", "BF idle shaking", 24, false)
    char:addAnimByPrefix("hey", "BF HEY!!", 24, false)

    char:addAnimByPrefix("left", "BF NOTE LEFT0", 24, false)
    char:addAnimByPrefix("right", "BF NOTE RIGHT0", 24, false)
    char:addAnimByPrefix("up", "BF NOTE UP0", 24, false)
    char:addAnimByPrefix("down", "BF NOTE DOWN0", 24, false)

    char:addAnimByPrefix("miss left", "BF NOTE LEFT MISS", 24, false)
    char:addAnimByPrefix("miss right", "BF NOTE RIGHT MISS", 24, false)
    char:addAnimByPrefix("miss up", "BF NOTE UP MISS", 24, false)
    char:addAnimByPrefix("miss down", "BF NOTE DOWN MISS", 24, false)

    char:addOffset("idle",      0, 0      )
    char:addOffset("shaking",  -4, 0      )
    char:addOffset("hey",      -3, 5      )

    char:addOffset("left",   5, -6        )
    char:addOffset("right", -48, -7       )
    char:addOffset("up",    -46, 27       )
    char:addOffset("down",  -20, -51      )

    char:addOffset("miss left",   7, 19   )
    char:addOffset("miss right", -44, 22  )
    char:addOffset("miss up",    -46, 27  )
    char:addOffset("miss down",  -15, -19 )

    char:animate("idle", false)

    char.colours = {49,176,209}

    return char
end

function character.girlfriend(x, y, isEnemy)
    if isEnemy then
        curEnemy = "girlfriend"
    end
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("GF_assets"))
    char:addAnimByPrefix("idle", "GF Dancing Beat0", 24, false)
    char:addAnimByPrefix("sad", "gf sad", 24, false)
    char:addAnimByPrefix("fear", "GF FEAR ", 24, false)
    char:addAnimByPrefix("cheer", "GF Cheer", 24, false)

    char:addAnimByPrefix("left", "GF left note", 24, false)
    char:addAnimByPrefix("right", "GF Right Note", 24, false)
    char:addAnimByPrefix("up", "GF Up Note", 24, false)
    char:addAnimByPrefix("down", "GF Down Note", 24, false)

    char:addOffset("idle",  0, 0    )
    char:addOffset("sad",  -2, -21  )
    char:addOffset("fear",  -2, -17 )
    char:addOffset("cheer",  3, 0   )

    char:addOffset("left",  0, -19  )
    char:addOffset("right", 0, -20  )
    char:addOffset("up",    0, 4    )
    char:addOffset("down",  0, -20  )

    char:animate("idle", false)

    char.colours = {165,0,77}

    return char
end

function character.spookykids(x, y)
    curEnemy = "spookykids"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week2/spooky_kids_assets"))
    char:addAnimByPrefix("idle", "spooky dance idle", 24, false)

    char:addAnimByPrefix("left", "note sing left", 24, false)
    char:addAnimByPrefix("right", "spooky sing right", 24, false)
    char:addAnimByPrefix("up", "spooky UP NOTE", 24, false)
    char:addAnimByPrefix("down", "spooky DOWN note", 24, false)

    char:addOffset("idle",  0, 0      )

    char:addOffset("left",  130, -10  )
    char:addOffset("right", -130, -14 )
    char:addOffset("up",    -20, 26   )
    char:addOffset("down",  -50, -130 )

    char:animate("idle", false)

    char.colours = {213,126,0}

    return char
end

function character.monster(x, y)
    curEnemy = "monster"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week2/monster_assets"))
    char:addAnimByPrefix("idle", "monster idle", 24, false)

    char:addAnimByPrefix("left", "Monster left note", 24, false)
    char:addAnimByPrefix("right", "Monster Right note", 24, false)
    char:addAnimByPrefix("up", "monster up note", 24, false)
    char:addAnimByPrefix("down", "monster down", 24, false)

    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  -30, 20  )
    char:addOffset("right", -51, 30  )
    char:addOffset("up",    -20, 94  )
    char:addOffset("down",  -50, -80 )

    char:animate("idle", false)

    char.colours = {243,255,110}

    return char
end

function character.pico(x, y)
    curEnemy = "pico"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week3/Pico_FNF_assetss"))
    char:addAnimByPrefix("idle", "Pico Idle Dance", 24, false)

    char:addAnimByPrefix("left", "Pico Note Right0", 24, false)
    char:addAnimByPrefix("right", "Pico NOTE LEFT0", 24, false)
    char:addAnimByPrefix("up", "pico Up note0", 24, false)
    char:addAnimByPrefix("down", "Pico Down Note0", 24, false)

    -- redo these offsets later lmao
    char:addOffset("idle",  0, 0         )

    char:addOffset("left",  -60, 9        )
    char:addOffset("right", -10, -7      )
    char:addOffset("up",    -39, 27      )
    char:addOffset("down",  190, -70     )

    char:animate("idle", false)

    char.flipX = true

    char.colours = {183,216,85}

    return char
end

function character.momcar(x, y)
    curEnemy = "mommymearest"
    local char = sprite(x or 0, y or 0    )
    char:setFrames(paths.getSparrowFrames("week4/momCar"))
    char:addAnimByPrefix("idle", "Mom Idle", 24, false)

    char:addAnimByPrefix("left", "Mom Left Pose", 24, false)
    char:addAnimByPrefix("right", "Mom Pose Left", 24, false) -- its called mom pose left even tho its right because fnf moment
    char:addAnimByPrefix("up", "Mom Up Pose", 24, false)
    char:addAnimByPrefix("down", "MOM DOWN POSE", 24, false)

    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  250, -23      )
    char:addOffset("right", 10, -60      )
    char:addOffset("up",    14, 71      )
    char:addOffset("down",  20, -160      )

    char:animate("idle", false)

    char.colours = {216,85,142}

    return char
end

function character.boyfriendcar(x, y)
    curPlayer = "boyfriend"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week4/bfCar"))
    char:addAnimByPrefix("idle", "BF idle dance", 24, false)

    char:addAnimByPrefix("left", "BF NOTE LEFT0", 24, false)
    char:addAnimByPrefix("right", "BF NOTE RIGHT0", 24, false)
    char:addAnimByPrefix("up", "BF NOTE UP0", 24, false)
    char:addAnimByPrefix("down", "BF NOTE DOWN0", 24, false)

    char:addAnimByPrefix("miss left", "BF NOTE LEFT MISS", 24, false)
    char:addAnimByPrefix("miss right", "BF NOTE RIGHT MISS", 24, false)
    char:addAnimByPrefix("miss up", "BF NOTE UP MISS", 24, false)
    char:addAnimByPrefix("miss down", "BF NOTE DOWN MISS", 24, false)
    
    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  12, -6      )
    char:addOffset("right", -38, -7      )
    char:addOffset("up",    -29, 27      )
    char:addOffset("down",  -10, -50      )

    char:addOffset("miss left",  12, 24      )
    char:addOffset("miss right", -30, 21      )
    char:addOffset("miss up",    -29, 27      )
    char:addOffset("miss down",  -11, -19      )

    char:animate("idle", false)

    char.colours = {49,176,209}

    return char
end

function character.girlfriendcar(x, y)
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week4/gfCar"))
    char:addAnimByPrefix("idle", "GF Dancing Beat Hair blowing CAR", 24, false)

    char:addOffset("idle",  0, 0    )

    char:animate("idle", false)

    char.colours = {165,0,77}

    return char
end

function character.dearestduo(x, y)
    curEnemy = "dearestduo"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week5/mom_dad_christmas_assets"))
    char:addAnimByPrefix("idle", "Parent Christmas Idle", 24, false)

    char:addAnimByPrefix("left", "Parent Left Note Dad", 24, false)
    char:addAnimByPrefix("right", "Parent Right Note Dad", 24, false)
    char:addAnimByPrefix("up", "Parent Up Note Dad", 24, false)
    char:addAnimByPrefix("down", "Parent Down Note Dad", 24, false)

    char:addAnimByPrefix("left alt", "Parent Left Note Mom", 24, false)
    char:addAnimByPrefix("right alt", "Parent Right Note Mom", 24, false)
    char:addAnimByPrefix("up alt", "Parent Up Note Mom", 24, false)
    char:addAnimByPrefix("down alt", "Parent Down Note Mom", 24, false)

    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  -30, 16      )
    char:addOffset("right", -1, -23      )
    char:addOffset("up",    -47, 24      )
    char:addOffset("down",  -31, -29      )

    char:addOffset("left alt",  -30, 15      )
    char:addOffset("right alt", -1, -24      )
    char:addOffset("up alt",    -47, 24      )
    char:addOffset("down alt",  -30, -27      )

    char:animate("idle", false)

    char.colours = {175,102,206}

    return char
end

function character.boyfriendchristmas(x, y)
    curPlayer = "boyfriend"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week5/bfChristmas"))
    char:addAnimByPrefix("idle", "BF idle dance", 24, false)

    char:addAnimByPrefix("left", "BF NOTE LEFT0", 24, false)
    char:addAnimByPrefix("right", "BF NOTE RIGHT0", 24, false)
    char:addAnimByPrefix("up", "BF NOTE UP0", 24, false)
    char:addAnimByPrefix("down", "BF NOTE DOWN0", 24, false)

    char:addAnimByPrefix("miss left", "BF NOTE LEFT MISS", 24, false)
    char:addAnimByPrefix("miss right", "BF NOTE RIGHT MISS", 24, false)
    char:addAnimByPrefix("miss up", "BF NOTE UP MISS", 24, false)
    char:addAnimByPrefix("miss down", "BF NOTE DOWN MISS", 24, false)
    
    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  12, -6      )
    char:addOffset("right", -38, -7      )
    char:addOffset("up",    -29, 27      )
    char:addOffset("down",  -10, -50      )

    char:addOffset("miss left",  12, 24      )
    char:addOffset("miss right", -30, 21      )
    char:addOffset("miss up",    -29, 27      )
    char:addOffset("miss down",  -11, -19      )

    char:animate("idle", false)

    char.colours = {49,176,209}

    return char
end

function character.girlfriendchristmas(x, y, isEnemy)
    if isEnemy then
        curEnemy = "girlfriend"
    end
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week5/gfChristmas"))
    char:addAnimByPrefix("idle", "GF Dancing Beat", 24, false)
    char:addAnimByPrefix("sad", "gf sad", 24, false)
    char:addAnimByPrefix("fear", "GF FEAR ", 24, false)
    char:addAnimByPrefix("cheer", "GF Cheer", 24, false)

    char:addAnimByPrefix("left", "GF left note", 24, false)
    char:addAnimByPrefix("right", "GF Right Note", 24, false)
    char:addAnimByPrefix("up", "GF Up Note", 24, false)
    char:addAnimByPrefix("down", "GF Down Note", 24, false)

    char:addOffset("idle",  0, 0    )
    char:addOffset("sad",  -2, -21  )
    char:addOffset("fear",  -2, -17 )
    char:addOffset("cheer",  3, 0   )

    char:addOffset("left",  0, -19  )
    char:addOffset("right", 0, -20  )
    char:addOffset("up",    0, 4    )
    char:addOffset("down",  0, -20  )

    char:animate("idle", false)

    char.colours = {165,0,77}

    return char
end

function character.monsterchristmas(x, y)
    curEnemy = "monster"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week5/monsterChristmas"))
    char:addAnimByPrefix("idle", "monster idle", 24, false)

    char:addAnimByPrefix("left", "Monster Right note", 24, false)
    char:addAnimByPrefix("right", "Monster left note", 24, false) -- these are also flipped cuz once again, fnf is dumb
    char:addAnimByPrefix("up", "monster up note", 24, false)
    char:addAnimByPrefix("down", "monster down", 24, false)

    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  -51, 0      )
    char:addOffset("right", -30, 0      )
    char:addOffset("up",    -20, 50      )
    char:addOffset("down",  -40, -94      )

    char:animate("idle", false)

    char.colours = {243,255,110}

    return char
end

function character.girlfriendpixel(x, y, settings)
    local settings = settings or {}
    local char = sprite(x or 0, y or 0, settings)
    char:setFrames(paths.getSparrowFrames("pixel/gfPixel", settings))
    char:addAnimByPrefix("idle", "GF IDLE", 24, false)

    char:addOffset("idle")

    char:animate("idle", false)

    char.colours = {165,0,77}

    return char
end

function character.bfandgf(x, y)
    curPlayer = "bfandgf"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week7/bfAndGF"))
    char:addAnimByPrefix("idle", "BF idle dance w gf", 24, false)

    char:addAnimByPrefix("left", "BF NOTE LEFT0", 24, false)
    char:addAnimByPrefix("right", "BF NOTE RIGHT0", 24, false)
    char:addAnimByPrefix("up", "BF NOTE UP0", 24, false)
    char:addAnimByPrefix("down", "BF NOTE DOWN0", 24, false)

    char:addAnimByPrefix("miss left", "BF NOTE LEFT MISS", 24, false)
    char:addAnimByPrefix("miss right", "BF NOTE RIGHT MISS", 24, false)
    char:addAnimByPrefix("miss up", "BF NOTE UP MISS", 24, false)
    char:addAnimByPrefix("miss down", "BF NOTE DOWN MISS", 24, false)

    char:addOffset("idle")

    char:addOffset("left", 12, 7)
    char:addOffset("right", -41, 23)
    char:addOffset("up", -29, 10)
    char:addOffset("down", -10, -10)

    char:addOffset("miss left", 12, 7)
    char:addOffset("miss right", -41, 23)
    char:addOffset("miss up", -29, 10)
    char:addOffset("miss down", -10, -10)

    char:animate("idle", false)

    char.colours = {49,176,209}

    return char
end

function character.girlfriendtankmen(x, y)
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week7/gfTankmen"))
    char:addAnimByPrefix("idle", "GF Dancing at Gunpoint", 24, false)
    char:addAnimByPrefix("sad", "GF Crying at Gunpoint", 24, false)

    char:addOffset("idle")
    char:addOffset("sad", 0, -27)

    char:animate("idle", false)

    char.colours = {165,0,77}

    return char
end

function character.tankman(x, y)
    curEnemy = "tankman"
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("week7/tankmanCaptain"))
    char:addAnimByPrefix("idle", "Tankman Idle Dance", 24, false)

    char:addAnimByPrefix("left", "Tankman Right Note0", 24, false)
    char:addAnimByPrefix("right", "Tankman Note Left0", 24, false) -- you would think this would be right anim, but no
    char:addAnimByPrefix("up", "Tankman UP note0", 24, false)
    char:addAnimByPrefix("down", "Tankman DOWN note0", 24, false)

    char:addAnimByPrefix("ugh", "TANKMAN UGH", 24, false)
    char:addAnimByPrefix("good", "PRETTY GOOD tankman", 24, false)
    
    char:addOffset("idle",  0, 0     )

    char:addOffset("left",  -21, -31      )
    char:addOffset("right", 84, -14      )
    char:addOffset("up",    48, 54      )
    char:addOffset("down",  76, -101      )

    char:animate("idle", false)

    char.flipX = true

    char.colours = {50,50,50}

    return char
end

function character.luigi(x, y)
    local char = sprite(x or 0, y or 0)
    char:setFrames(paths.getSparrowFrames("luigi"))
    char:addAnimByPrefix("idle", "luigi idle", 24, false)

    char:addOffset("idle")

    char:animate("idle", false)

    return char
end

character.list = {
    {"Boyfriend", character.boyfriend},
    {"Girlfriend", character.girlfriend},
    {"Daddy Dearest", character.daddydearest},
    {"Spooky Kids", character.spookykids},
    {"Monster", character.monster},
    {"Pico", character.pico},
    {"Mom Car", character.momcar},
    {"Boyfriend Car", character.boyfriendcar},
    {"Girlfriend Car", character.girlfriendcar},
    {"Dearest Duo", character.dearestduo},
    {"Monster Christmas", character.monsterchristmas},
    {"Boyfriend and Girlfriend", character.bfandgf},
    {"Girlfriend Tankmen", character.girlfriendtankmen},
    {"Tankman", character.tankman},
    {"Luigi", character.luigi}
}

return character