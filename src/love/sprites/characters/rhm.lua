return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/rhm")), -- Do not add the .png extension
	{
		{x = 30, y = 30, width = 510, height = 799, offsetX = -8, offsetY = -21, offsetWidth = 519, offsetHeight = 820}, -- 1: RHM Idle0000
		{x = 30, y = 30, width = 510, height = 799, offsetX = -8, offsetY = -21, offsetWidth = 519, offsetHeight = 820}, -- 2: RHM Idle0001
		{x = 570, y = 30, width = 510, height = 800, offsetX = -9, offsetY = -20, offsetWidth = 519, offsetHeight = 820}, -- 3: RHM Idle0002
		{x = 570, y = 30, width = 510, height = 800, offsetX = -9, offsetY = -20, offsetWidth = 519, offsetHeight = 820}, -- 4: RHM Idle0003
		{x = 1110, y = 30, width = 507, height = 807, offsetX = -12, offsetY = -13, offsetWidth = 519, offsetHeight = 820}, -- 5: RHM Idle0004
		{x = 1110, y = 30, width = 507, height = 807, offsetX = -12, offsetY = -13, offsetWidth = 519, offsetHeight = 820}, -- 6: RHM Idle0005
		{x = 1647, y = 30, width = 489, height = 819, offsetX = -2, offsetY = -1, offsetWidth = 519, offsetHeight = 820}, -- 7: RHM Idle0006
		{x = 1647, y = 30, width = 489, height = 819, offsetX = -2, offsetY = -1, offsetWidth = 519, offsetHeight = 820}, -- 8: RHM Idle0007
		{x = 2166, y = 30, width = 489, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 9: RHM Idle0008
		{x = 2166, y = 30, width = 489, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 10: RHM Idle0009
		{x = 2685, y = 30, width = 487, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 11: RHM Idle0010
		{x = 2685, y = 30, width = 487, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 12: RHM Idle0011
		{x = 3202, y = 30, width = 487, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 13: RHM Idle0012
		{x = 3202, y = 30, width = 487, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 14: RHM Idle0013
		{x = 3202, y = 30, width = 487, height = 820, offsetX = 0, offsetY = 0, offsetWidth = 519, offsetHeight = 820}, -- 15: RHM Idle0014

		{x = 3719, y = 30, width = 504, height = 774, offsetX = -25, offsetY = -6, offsetWidth = 529, offsetHeight = 780}, -- 16: RHM Right new0000
		{x = 3719, y = 30, width = 504, height = 774, offsetX = -25, offsetY = -6, offsetWidth = 529, offsetHeight = 780}, -- 17: RHM Right new0001
		{x = 4253, y = 30, width = 518, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 18: RHM Right new0002
		{x = 4253, y = 30, width = 518, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 19: RHM Right new0003
		{x = 4801, y = 30, width = 517, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 20: RHM Right new0004
		{x = 4801, y = 30, width = 517, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 21: RHM Right new0005
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 22: RHM Right new0006
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 23: RHM Right new0007
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 24: RHM Right new0008
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 25: RHM Right new0009
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 26: RHM Right new0010
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 27: RHM Right new0011
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 28: RHM Right new0012
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 29: RHM Right new0013
		{x = 5348, y = 30, width = 516, height = 780, offsetX = 0, offsetY = 0, offsetWidth = 529, offsetHeight = 780}, -- 30: RHM Right new0014

		{x = 5894, y = 30, width = 477, height = 895, offsetX = 0, offsetY = 0, offsetWidth = 477, offsetHeight = 897}, -- 31: RHM Up New0000
		{x = 6401, y = 30, width = 477, height = 897, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: RHM Up New0001
		{x = 6908, y = 30, width = 448, height = 862, offsetX = -26, offsetY = -6, offsetWidth = 477, offsetHeight = 897}, -- 33: RHM Up New0002
		{x = 7386, y = 30, width = 448, height = 864, offsetX = -26, offsetY = -6, offsetWidth = 477, offsetHeight = 897}, -- 34: RHM Up New0003
		{x = 30, y = 957, width = 444, height = 867, offsetX = -30, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 35: RHM Up New0004
		{x = 504, y = 957, width = 444, height = 864, offsetX = -30, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 36: RHM Up New0005
		{x = 978, y = 957, width = 445, height = 866, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 37: RHM Up New0006
		{x = 1453, y = 957, width = 445, height = 867, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 38: RHM Up New0007
		{x = 1928, y = 957, width = 445, height = 864, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 39: RHM Up New0008
		{x = 978, y = 957, width = 445, height = 866, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 40: RHM Up New0009
		{x = 1453, y = 957, width = 445, height = 867, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 41: RHM Up New0010
		{x = 1928, y = 957, width = 445, height = 864, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 42: RHM Up New0011
		{x = 978, y = 957, width = 445, height = 866, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 43: RHM Up New0012
		{x = 1453, y = 957, width = 445, height = 867, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 44: RHM Up New0013
		{x = 1928, y = 957, width = 445, height = 864, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 45: RHM Up New0014
		{x = 978, y = 957, width = 445, height = 866, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 46: RHM Up New0015
		{x = 1453, y = 957, width = 445, height = 867, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 47: RHM Up New0016
		{x = 1928, y = 957, width = 445, height = 864, offsetX = -29, offsetY = -5, offsetWidth = 477, offsetHeight = 897}, -- 48: RHM Up New0017

		{x = 2403, y = 957, width = 529, height = 729, offsetX = 0, offsetY = -19, offsetWidth = 540, offsetHeight = 748}, -- 49: RHM down new0000
		{x = 2403, y = 957, width = 529, height = 729, offsetX = 0, offsetY = -19, offsetWidth = 540, offsetHeight = 748}, -- 50: RHM down new0001
		{x = 2962, y = 957, width = 536, height = 746, offsetX = -4, offsetY = -2, offsetWidth = 540, offsetHeight = 748}, -- 51: RHM down new0002
		{x = 2962, y = 957, width = 536, height = 746, offsetX = -4, offsetY = -2, offsetWidth = 540, offsetHeight = 748}, -- 52: RHM down new0003
		{x = 3528, y = 957, width = 535, height = 747, offsetX = -4, offsetY = -1, offsetWidth = 540, offsetHeight = 748}, -- 53: RHM down new0004
		{x = 3528, y = 957, width = 535, height = 747, offsetX = -4, offsetY = -1, offsetWidth = 540, offsetHeight = 748}, -- 54: RHM down new0005
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 55: RHM down new0006
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 56: RHM down new0007
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 57: RHM down new0008
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 58: RHM down new0009
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 59: RHM down new0010
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 60: RHM down new0011
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 61: RHM down new0012
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 62: RHM down new0013
		{x = 4093, y = 957, width = 535, height = 748, offsetX = -4, offsetY = 0, offsetWidth = 540, offsetHeight = 748}, -- 63: RHM down new0014

		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 64: RHM intro new0000
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 65: RHM intro new0001
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 66: RHM intro new0002
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 67: RHM intro new0003
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 68: RHM intro new0004
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 69: RHM intro new0005
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 70: RHM intro new0006
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 71: RHM intro new0007
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 72: RHM intro new0008
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 73: RHM intro new0009
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 74: RHM intro new0010
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 75: RHM intro new0011
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 76: RHM intro new0012
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 77: RHM intro new0013
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 78: RHM intro new0014
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 79: RHM intro new0015
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 80: RHM intro new0016
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 81: RHM intro new0017
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 82: RHM intro new0018
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 83: RHM intro new0019
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 84: RHM intro new0020
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 85: RHM intro new0021
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 86: RHM intro new0022
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 87: RHM intro new0023
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 88: RHM intro new0024
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 89: RHM intro new0025
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 90: RHM intro new0026
		{x = 4658, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 91: RHM intro new0027
		{x = 5276, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 92: RHM intro new0028
		{x = 5894, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 93: RHM intro new0029
		{x = 6512, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 94: RHM intro new0030
		{x = 7130, y = 957, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 95: RHM intro new0031
		{x = 30, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 96: RHM intro new0032
		{x = 648, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 97: RHM intro new0033
		{x = 1266, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 98: RHM intro new0034
		{x = 1884, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 99: RHM intro new0035
		{x = 2502, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 100: RHM intro new0036
		{x = 3120, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 101: RHM intro new0037
		{x = 3738, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 102: RHM intro new0038
		{x = 4356, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 103: RHM intro new0039
		{x = 4974, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 104: RHM intro new0040
		{x = 5592, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 105: RHM intro new0041
		{x = 6210, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 106: RHM intro new0042
		{x = 6828, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 107: RHM intro new0043
		{x = 7446, y = 1854, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 108: RHM intro new0044
		{x = 30, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 109: RHM intro new0045
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 110: RHM intro new0046
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 111: RHM intro new0047
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 112: RHM intro new0048
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 113: RHM intro new0049
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 114: RHM intro new0050
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 115: RHM intro new0051
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 116: RHM intro new0052
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 117: RHM intro new0053
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 118: RHM intro new0054
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 119: RHM intro new0055
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 120: RHM intro new0056
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 121: RHM intro new0057
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 122: RHM intro new0058
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 123: RHM intro new0059
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 124: RHM intro new0060
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 125: RHM intro new0061
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 126: RHM intro new0062
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 127: RHM intro new0063
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 128: RHM intro new0064
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 129: RHM intro new0065
		{x = 648, y = 2484, width = 588, height = 600, offsetX = -4, offsetY = -218, offsetWidth = 592, offsetHeight = 820}, -- 130: RHM intro new0066
		{x = 1266, y = 2484, width = 590, height = 602, offsetX = -1, offsetY = -216, offsetWidth = 592, offsetHeight = 820}, -- 131: RHM intro new0067
		{x = 1266, y = 2484, width = 590, height = 602, offsetX = -1, offsetY = -216, offsetWidth = 592, offsetHeight = 820}, -- 132: RHM intro new0068
		{x = 1886, y = 2484, width = 584, height = 613, offsetX = 0, offsetY = -206, offsetWidth = 592, offsetHeight = 820}, -- 133: RHM intro new0069
		{x = 2500, y = 2484, width = 584, height = 613, offsetX = 0, offsetY = -206, offsetWidth = 592, offsetHeight = 820}, -- 134: RHM intro new0070
		{x = 3114, y = 2484, width = 508, height = 814, offsetX = -8, offsetY = -6, offsetWidth = 592, offsetHeight = 820}, -- 135: RHM intro new0071
		{x = 3114, y = 2484, width = 508, height = 814, offsetX = -8, offsetY = -6, offsetWidth = 592, offsetHeight = 820}, -- 136: RHM intro new0072
		{x = 3652, y = 2484, width = 490, height = 819, offsetX = -14, offsetY = -1, offsetWidth = 592, offsetHeight = 820}, -- 137: RHM intro new0073
		{x = 3652, y = 2484, width = 490, height = 819, offsetX = -14, offsetY = -1, offsetWidth = 592, offsetHeight = 820}, -- 138: RHM intro new0074
		{x = 4172, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 139: RHM intro new0075
		{x = 4172, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 140: RHM intro new0076
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 141: RHM intro new0077
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 142: RHM intro new0078
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 143: RHM intro new0079
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 144: RHM intro new0080
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 145: RHM intro new0081
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 146: RHM intro new0082
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 147: RHM intro new0083
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 148: RHM intro new0084
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 149: RHM intro new0085
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 150: RHM intro new0086
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 151: RHM intro new0087
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 152: RHM intro new0088
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 153: RHM intro new0089
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 154: RHM intro new0090
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 155: RHM intro new0091
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 156: RHM intro new0092
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 157: RHM intro new0093
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 158: RHM intro new0094
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 159: RHM intro new0095
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 160: RHM intro new0096
		{x = 4689, y = 2484, width = 487, height = 820, offsetX = -14, offsetY = 0, offsetWidth = 592, offsetHeight = 820}, -- 161: RHM intro new0097

		{x = 5206, y = 2484, width = 593, height = 812, offsetX = 0, offsetY = -9, offsetWidth = 597, offsetHeight = 821}, -- 162: RHM left pose0000
		{x = 5829, y = 2484, width = 582, height = 812, offsetX = 0, offsetY = -9, offsetWidth = 597, offsetHeight = 821}, -- 163: RHM left pose0001
		{x = 6441, y = 2484, width = 592, height = 821, offsetX = -5, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 164: RHM left pose0002
		{x = 7063, y = 2484, width = 587, height = 821, offsetX = -5, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 165: RHM left pose0003
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 166: RHM left pose0004
		{x = 646, y = 3335, width = 585, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 167: RHM left pose0005
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 168: RHM left pose0006
		{x = 646, y = 3335, width = 585, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 169: RHM left pose0007
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 170: RHM left pose0008
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 171: RHM left pose0009
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 172: RHM left pose0010
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 173: RHM left pose0011
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 174: RHM left pose0012
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 175: RHM left pose0013
		{x = 30, y = 3335, width = 586, height = 821, offsetX = -4, offsetY = 0, offsetWidth = 597, offsetHeight = 821}, -- 176: RHM left pose0014

		{x = 1261, y = 3335, width = 277, height = 285, offsetX = 0, offsetY = -8, offsetWidth = 277, offsetHeight = 293}, -- 177: rhm animation0000
		{x = 1261, y = 3335, width = 277, height = 285, offsetX = 0, offsetY = -8, offsetWidth = 277, offsetHeight = 293}, -- 178: rhm animation0001
		{x = 1568, y = 3335, width = 276, height = 287, offsetX = -1, offsetY = -6, offsetWidth = 277, offsetHeight = 293}, -- 179: rhm animation0002
		{x = 1568, y = 3335, width = 276, height = 287, offsetX = -1, offsetY = -6, offsetWidth = 277, offsetHeight = 293}, -- 180: rhm animation0003
		{x = 1874, y = 3335, width = 270, height = 292, offsetX = -6, offsetY = -1, offsetWidth = 277, offsetHeight = 293}, -- 181: rhm animation0004
		{x = 1874, y = 3335, width = 270, height = 292, offsetX = -6, offsetY = -1, offsetWidth = 277, offsetHeight = 293}, -- 182: rhm animation0005
		{x = 2174, y = 3335, width = 267, height = 293, offsetX = -8, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 183: rhm animation0006
		{x = 2174, y = 3335, width = 267, height = 293, offsetX = -8, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 184: rhm animation0007
		{x = 2471, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 185: rhm animation0008
		{x = 2471, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 186: rhm animation0009
		{x = 2767, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 187: rhm animation0010
		{x = 2767, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 188: rhm animation0011
		{x = 2471, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 189: rhm animation0012
		{x = 2471, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293}, -- 190: rhm animation0013
		{x = 2767, y = 3335, width = 266, height = 293, offsetX = -9, offsetY = 0, offsetWidth = 277, offsetHeight = 293} -- 191: rhm animation0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 162, stop = 176, speed = 24, offsetX = 91, offsetY = 0},
		["singUP"] = {start = 31, stop = 48, speed = 24, offsetX = 73, offsetY = 97},
		["singDOWN"] = {start = 49, stop = 63, speed = 24, offsetX = 11, offsetY = -35},
		["singRIGHT"] = {start = 16, stop = 30, speed = 24, offsetX = -39, offsetY = -21},
		["intro"] = {start = 64, stop = 161, speed = 24, offsetX = -23, offsetY = 0},
		["anim"] = {start = 177, stop = 191, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
