return graphics.newSprite(
	graphics.imagePath("characters/ziffytorture"), -- Do not add the .png extension
	{
		{x = 789, y = 2960, width = 261, height = 559, offsetX = -3, offsetY = 0, offsetWidth = 264, offsetHeight = 559}, -- 1: Down Normal0000
		{x = 4993, y = 2962, width = 261, height = 559, offsetX = -3, offsetY = 0, offsetWidth = 264, offsetHeight = 559}, -- 2: Down Normal0001
		{x = 2387, y = 3496, width = 264, height = 548, offsetX = 0, offsetY = -11, offsetWidth = 264, offsetHeight = 559}, -- 3: Down Normal0002
		{x = 2959, y = 3496, width = 264, height = 548, offsetX = 0, offsetY = -11, offsetWidth = 264, offsetHeight = 559}, -- 4: Down Normal0003

		{x = 6077, y = 2982, width = 261, height = 559, offsetX = -3, offsetY = 0, offsetWidth = 264, offsetHeight = 559}, -- 5: Down Yell0000
		{x = 3318, y = 3021, width = 261, height = 559, offsetX = -3, offsetY = 0, offsetWidth = 264, offsetHeight = 559}, -- 6: Down Yell0001
		{x = 6340, y = 3500, width = 264, height = 548, offsetX = 0, offsetY = -11, offsetWidth = 264, offsetHeight = 559}, -- 7: Down Yell0002
		{x = 4111, y = 3504, width = 264, height = 548, offsetX = 0, offsetY = -11, offsetWidth = 264, offsetHeight = 559}, -- 8: Down Yell0003

		{x = 6783, y = 1787, width = 280, height = 558, offsetX = -8, offsetY = -24, offsetWidth = 288, offsetHeight = 583}, -- 9: Idle0000
		{x = 552, y = 1775, width = 280, height = 559, offsetX = -8, offsetY = -24, offsetWidth = 288, offsetHeight = 583}, -- 10: Idle0001
		{x = 5061, y = 1821, width = 283, height = 548, offsetX = -1, offsetY = -34, offsetWidth = 288, offsetHeight = 583}, -- 11: Idle0002
		{x = 4500, y = 1791, width = 284, height = 549, offsetX = 0, offsetY = -34, offsetWidth = 288, offsetHeight = 583}, -- 12: Idle0003
		{x = 5809, y = 2359, width = 276, height = 551, offsetX = -3, offsetY = -31, offsetWidth = 288, offsetHeight = 583}, -- 13: Idle0004
		{x = 2457, y = 2358, width = 276, height = 552, offsetX = -3, offsetY = -31, offsetWidth = 288, offsetHeight = 583}, -- 14: Idle0005
		{x = 1644, y = 2351, width = 265, height = 579, offsetX = -10, offsetY = -3, offsetWidth = 288, offsetHeight = 583}, -- 15: Idle0006
		{x = 1911, y = 2352, width = 265, height = 579, offsetX = -10, offsetY = -3, offsetWidth = 288, offsetHeight = 583}, -- 16: Idle0007
		{x = 7338, y = 2373, width = 259, height = 582, offsetX = -16, offsetY = 0, offsetWidth = 288, offsetHeight = 583}, -- 17: Idle0008
		{x = 1353, y = 2362, width = 259, height = 583, offsetX = -16, offsetY = 0, offsetWidth = 288, offsetHeight = 583}, -- 18: Idle0009
		{x = 4477, y = 2912, width = 257, height = 580, offsetX = -18, offsetY = -2, offsetWidth = 288, offsetHeight = 583}, -- 19: Idle0010
		{x = 6087, y = 2400, width = 258, height = 580, offsetX = -17, offsetY = -2, offsetWidth = 288, offsetHeight = 583}, -- 20: Idle0011
		{x = 4477, y = 2912, width = 257, height = 580, offsetX = -18, offsetY = -2, offsetWidth = 288, offsetHeight = 583}, -- 21: Idle0012
		{x = 6087, y = 2400, width = 258, height = 580, offsetX = -17, offsetY = -2, offsetWidth = 288, offsetHeight = 583}, -- 22: Idle0013

		{x = 3944, y = 2307, width = 259, height = 598, offsetX = -6, offsetY = 0, offsetWidth = 265, offsetHeight = 599}, -- 23: Left Normal0000
		{x = 6396, y = 2321, width = 259, height = 598, offsetX = -6, offsetY = 0, offsetWidth = 265, offsetHeight = 599}, -- 24: Left Normal0001
		{x = 3910, y = 608, width = 265, height = 599, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: Left Normal0002
		{x = 7612, y = 608, width = 265, height = 599, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: Left Normal0003

		{x = 1092, y = 2339, width = 259, height = 598, offsetX = -6, offsetY = 0, offsetWidth = 265, offsetHeight = 599}, -- 27: Left Yell0000
		{x = 2799, y = 2342, width = 259, height = 598, offsetX = -6, offsetY = 0, offsetWidth = 265, offsetHeight = 599}, -- 28: Left Yell0001
		{x = 5317, y = 629, width = 265, height = 599, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: Left Yell0002
		{x = 7303, y = 630, width = 265, height = 599, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: Left Yell0003

		{x = 1592, y = 3513, width = 256, height = 558, offsetX = 0, offsetY = -30, offsetWidth = 263, offsetHeight = 613}, -- 31: Right Normal0000
		{x = 6606, y = 3513, width = 256, height = 558, offsetX = 0, offsetY = -30, offsetWidth = 263, offsetHeight = 613}, -- 32: Right Normal0001
		{x = 3851, y = 3491, width = 258, height = 564, offsetX = 0, offsetY = 0, offsetWidth = 260, offsetHeight = 564}, -- 33: Right Normal0002
		{x = 4422, y = 3494, width = 258, height = 564, offsetX = 0, offsetY = 0, offsetWidth = 260, offsetHeight = 564}, -- 34: Right Normal0003

		{x = 1850, y = 3514, width = 256, height = 558, offsetX = -4, offsetY = -6, offsetWidth = 260, offsetHeight = 564}, -- 35: Right Yell0000
		{x = 518, y = 3517, width = 256, height = 558, offsetX = -4, offsetY = -6, offsetWidth = 260, offsetHeight = 564}, -- 36: Right Yell0001
		{x = 5519, y = 3494, width = 258, height = 564, offsetX = 0, offsetY = 0, offsetWidth = 260, offsetHeight = 564}, -- 37: Right Yell0002
		{x = 5779, y = 3494, width = 258, height = 564, offsetX = 0, offsetY = 0, offsetWidth = 260, offsetHeight = 564}, -- 38: Right Yell0003

		{x = 3334, y = 2439, width = 258, height = 580, offsetX = -42, offsetY = -21, offsetWidth = 344, offsetHeight = 601}, -- 39: Rozebud0000
		{x = 5559, y = 2912, width = 257, height = 580, offsetX = -43, offsetY = -21, offsetWidth = 344, offsetHeight = 601}, -- 40: Rozebud0001
		{x = 3642, y = 2376, width = 260, height = 579, offsetX = -40, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 41: Rozebud0002
		{x = 5297, y = 2377, width = 260, height = 579, offsetX = -40, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 42: Rozebud0003
		{x = 813, y = 2387, width = 263, height = 571, offsetX = -37, offsetY = -30, offsetWidth = 344, offsetHeight = 601}, -- 43: Rozebud0004
		{x = 6923, y = 2396, width = 263, height = 571, offsetX = -37, offsetY = -30, offsetWidth = 344, offsetHeight = 601}, -- 44: Rozebud0005
		{x = 4774, y = 2364, width = 263, height = 574, offsetX = -37, offsetY = -27, offsetWidth = 344, offsetHeight = 601}, -- 45: Rozebud0006
		{x = 2178, y = 2371, width = 263, height = 574, offsetX = -37, offsetY = -27, offsetWidth = 344, offsetHeight = 601}, -- 46: Rozebud0007
		{x = 7835, y = 2346, width = 265, height = 583, offsetX = -35, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 47: Rozebud0008
		{x = 6657, y = 2347, width = 264, height = 583, offsetX = -36, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 48: Rozebud0009
		{x = 1375, y = 1774, width = 267, height = 586, offsetX = -33, offsetY = -15, offsetWidth = 344, offsetHeight = 601}, -- 49: Rozebud0010
		{x = 2188, y = 1783, width = 267, height = 586, offsetX = -33, offsetY = -15, offsetWidth = 344, offsetHeight = 601}, -- 50: Rozebud0011
		{x = 822, y = 1188, width = 270, height = 585, offsetX = -30, offsetY = -16, offsetWidth = 344, offsetHeight = 601}, -- 51: Rozebud0012
		{x = 2845, y = 1188, width = 270, height = 585, offsetX = -30, offsetY = -16, offsetWidth = 344, offsetHeight = 601}, -- 52: Rozebud0013
		{x = 276, y = 1188, width = 271, height = 583, offsetX = -29, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 53: Rozebud0014
		{x = 549, y = 1188, width = 271, height = 583, offsetX = -29, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 54: Rozebud0015
		{x = 2571, y = 1183, width = 272, height = 582, offsetX = -28, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 55: Rozebud0016
		{x = 2, y = 1188, width = 272, height = 581, offsetX = -28, offsetY = -20, offsetWidth = 344, offsetHeight = 601}, -- 56: Rozebud0017
		{x = 3670, y = 1801, width = 272, height = 573, offsetX = -28, offsetY = -28, offsetWidth = 344, offsetHeight = 601}, -- 57: Rozebud0018
		{x = 5535, y = 1802, width = 272, height = 573, offsetX = -28, offsetY = -28, offsetWidth = 344, offsetHeight = 601}, -- 58: Rozebud0019
		{x = 7065, y = 1822, width = 271, height = 572, offsetX = -29, offsetY = -29, offsetWidth = 344, offsetHeight = 601}, -- 59: Rozebud0020
		{x = 6123, y = 1826, width = 271, height = 572, offsetX = -29, offsetY = -29, offsetWidth = 344, offsetHeight = 601}, -- 60: Rozebud0021
		{x = 6807, y = 2, width = 270, height = 601, offsetX = -30, offsetY = 0, offsetWidth = 344, offsetHeight = 601}, -- 61: Rozebud0022
		{x = 7079, y = 2, width = 270, height = 601, offsetX = -30, offsetY = 0, offsetWidth = 344, offsetHeight = 601}, -- 62: Rozebud0023
		{x = 6261, y = 2, width = 271, height = 600, offsetX = -29, offsetY = -1, offsetWidth = 344, offsetHeight = 601}, -- 63: Rozebud0024
		{x = 6534, y = 2, width = 271, height = 600, offsetX = -29, offsetY = -1, offsetWidth = 344, offsetHeight = 601}, -- 64: Rozebud0025
		{x = 7882, y = 2, width = 270, height = 599, offsetX = -30, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 65: Rozebud0026
		{x = 4259, y = 553, width = 270, height = 599, offsetX = -30, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 66: Rozebud0027
		{x = 554, y = 604, width = 274, height = 582, offsetX = -26, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 67: Rozebud0028
		{x = 830, y = 604, width = 274, height = 582, offsetX = -26, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 68: Rozebud0029
		{x = 4177, y = 1154, width = 273, height = 581, offsetX = -27, offsetY = -20, offsetWidth = 344, offsetHeight = 601}, -- 69: Rozebud0030
		{x = 6745, y = 1168, width = 273, height = 581, offsetX = -27, offsetY = -20, offsetWidth = 344, offsetHeight = 601}, -- 70: Rozebud0031
		{x = 2002, y = 600, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 71: Rozebud0032
		{x = 1152, y = 601, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 72: Rozebud0033
		{x = 1428, y = 601, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 73: Rozebud0034
		{x = 2, y = 603, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 74: Rozebud0035
		{x = 278, y = 603, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 75: Rozebud0036
		{x = 2848, y = 603, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 76: Rozebud0037
		{x = 3124, y = 603, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 77: Rozebud0038
		{x = 7882, y = 603, width = 274, height = 583, offsetX = -26, offsetY = -18, offsetWidth = 344, offsetHeight = 601}, -- 78: Rozebud0039
		{x = 2571, y = 599, width = 275, height = 582, offsetX = -25, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 79: Rozebud0040
		{x = 1725, y = 600, width = 275, height = 582, offsetX = -25, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 80: Rozebud0041
		{x = 4786, y = 1791, width = 273, height = 571, offsetX = -27, offsetY = -30, offsetWidth = 344, offsetHeight = 601}, -- 81: Rozebud0042
		{x = 7560, y = 1800, width = 273, height = 571, offsetX = -27, offsetY = -30, offsetWidth = 344, offsetHeight = 601}, -- 82: Rozebud0043
		{x = 4500, y = 2342, width = 272, height = 568, offsetX = -28, offsetY = -33, offsetWidth = 344, offsetHeight = 601}, -- 83: Rozebud0044
		{x = 3060, y = 2343, width = 272, height = 568, offsetX = -28, offsetY = -33, offsetWidth = 344, offsetHeight = 601}, -- 84: Rozebud0045
		{x = 3706, y = 2, width = 276, height = 601, offsetX = -58, offsetY = 0, offsetWidth = 344, offsetHeight = 601}, -- 85: Rozebud0046
		{x = 3427, y = 2, width = 277, height = 601, offsetX = -58, offsetY = 0, offsetWidth = 344, offsetHeight = 601}, -- 86: Rozebud0047
		{x = 578, y = 2, width = 285, height = 600, offsetX = -58, offsetY = -1, offsetWidth = 344, offsetHeight = 601}, -- 87: Rozebud0048
		{x = 865, y = 2, width = 285, height = 600, offsetX = -58, offsetY = -1, offsetWidth = 344, offsetHeight = 601}, -- 88: Rozebud0049
		{x = 2, y = 2, width = 286, height = 599, offsetX = -58, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 89: Rozebud0050
		{x = 290, y = 2, width = 286, height = 599, offsetX = -58, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 90: Rozebud0051
		{x = 1439, y = 2, width = 284, height = 597, offsetX = -58, offsetY = -4, offsetWidth = 344, offsetHeight = 601}, -- 91: Rozebud0052
		{x = 1152, y = 2, width = 285, height = 597, offsetX = -58, offsetY = -4, offsetWidth = 344, offsetHeight = 601}, -- 92: Rozebud0053
		{x = 1725, y = 2, width = 284, height = 596, offsetX = -58, offsetY = -5, offsetWidth = 344, offsetHeight = 601}, -- 93: Rozebud0054
		{x = 2011, y = 2, width = 284, height = 596, offsetX = -58, offsetY = -5, offsetWidth = 344, offsetHeight = 601}, -- 94: Rozebud0055
		{x = 2297, y = 2, width = 282, height = 595, offsetX = -58, offsetY = -6, offsetWidth = 344, offsetHeight = 601}, -- 95: Rozebud0056
		{x = 2581, y = 2, width = 282, height = 595, offsetX = -58, offsetY = -6, offsetWidth = 344, offsetHeight = 601}, -- 96: Rozebud0057
		{x = 3904, y = 2907, width = 257, height = 582, offsetX = -44, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 97: Rozebud0058
		{x = 2443, y = 2912, width = 257, height = 582, offsetX = -44, offsetY = -19, offsetWidth = 344, offsetHeight = 601}, -- 98: Rozebud0059
		{x = 1704, y = 1184, width = 276, height = 574, offsetX = -24, offsetY = -27, offsetWidth = 344, offsetHeight = 601}, -- 99: Rozebud0060
		{x = 1982, y = 1185, width = 276, height = 574, offsetX = -24, offsetY = -27, offsetWidth = 344, offsetHeight = 601}, -- 100: Rozebud0061
		{x = 3952, y = 1737, width = 277, height = 568, offsetX = -23, offsetY = -33, offsetWidth = 344, offsetHeight = 601}, -- 101: Rozebud0062
		{x = 6504, y = 1751, width = 277, height = 568, offsetX = -23, offsetY = -33, offsetWidth = 344, offsetHeight = 601}, -- 102: Rozebud0063
		{x = 2799, y = 1775, width = 277, height = 565, offsetX = -23, offsetY = -36, offsetWidth = 344, offsetHeight = 601}, -- 103: Rozebud0064
		{x = 7840, y = 1779, width = 277, height = 565, offsetX = -23, offsetY = -36, offsetWidth = 344, offsetHeight = 601}, -- 104: Rozebud0065
		{x = 271, y = 1773, width = 279, height = 563, offsetX = -21, offsetY = -38, offsetWidth = 344, offsetHeight = 601}, -- 105: Rozebud0066
		{x = 1094, y = 1774, width = 279, height = 563, offsetX = -21, offsetY = -38, offsetWidth = 344, offsetHeight = 601}, -- 106: Rozebud0067
		{x = 3670, y = 1237, width = 280, height = 562, offsetX = -20, offsetY = -39, offsetWidth = 344, offsetHeight = 601}, -- 107: Rozebud0068
		{x = 3117, y = 1188, width = 281, height = 562, offsetX = -19, offsetY = -39, offsetWidth = 344, offsetHeight = 601}, -- 108: Rozebud0069
		{x = 4561, y = 2, width = 299, height = 550, offsetX = -1, offsetY = -51, offsetWidth = 344, offsetHeight = 601}, -- 109: Rozebud0070
		{x = 4259, y = 2, width = 300, height = 549, offsetX = 0, offsetY = -52, offsetWidth = 344, offsetHeight = 601}, -- 110: Rozebud0071
		{x = 7445, y = 3512, width = 257, height = 559, offsetX = -52, offsetY = -42, offsetWidth = 344, offsetHeight = 601}, -- 111: Rozebud0072
		{x = 7704, y = 3512, width = 257, height = 559, offsetX = -52, offsetY = -42, offsetWidth = 344, offsetHeight = 601}, -- 112: Rozebud0073
		{x = 4452, y = 1177, width = 271, height = 585, offsetX = -58, offsetY = -16, offsetWidth = 344, offsetHeight = 601}, -- 113: Rozebud0074
		{x = 5961, y = 1181, width = 271, height = 585, offsetX = -58, offsetY = -16, offsetWidth = 344, offsetHeight = 601}, -- 114: Rozebud0075
		{x = 6234, y = 1236, width = 268, height = 588, offsetX = -58, offsetY = -13, offsetWidth = 344, offsetHeight = 601}, -- 115: Rozebud0076
		{x = 3400, y = 1237, width = 268, height = 588, offsetX = -58, offsetY = -13, offsetWidth = 344, offsetHeight = 601}, -- 116: Rozebud0077
		{x = 3117, y = 1752, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 117: Rozebud0078
		{x = 7879, y = 1188, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 118: Rozebud0079
		{x = 1650, y = 1760, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 119: Rozebud0080
		{x = 2260, y = 1192, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 120: Rozebud0081
		{x = 1919, y = 1761, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 121: Rozebud0082
		{x = 7020, y = 1196, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 122: Rozebud0083
		{x = 4231, y = 1764, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 123: Rozebud0084
		{x = 4725, y = 1200, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 124: Rozebud0085
		{x = 2530, y = 1767, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 125: Rozebud0086
		{x = 4995, y = 1200, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 126: Rozebud0087
		{x = 2530, y = 1767, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 127: Rozebud0088
		{x = 4995, y = 1200, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 128: Rozebud0089
		{x = 5854, y = 1768, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 129: Rozebud0090
		{x = 7570, y = 1209, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 130: Rozebud0091
		{x = 5584, y = 1211, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 131: Rozebud0092
		{x = 2, y = 1771, width = 267, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 132: Rozebud0093
		{x = 5584, y = 1211, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 133: Rozebud0094
		{x = 1106, y = 1186, width = 270, height = 586, offsetX = -58, offsetY = -15, offsetWidth = 344, offsetHeight = 601}, -- 134: Rozebud0095
		{x = 1378, y = 1186, width = 270, height = 586, offsetX = -58, offsetY = -15, offsetWidth = 344, offsetHeight = 601}, -- 135: Rozebud0096
		{x = 2865, y = 2, width = 279, height = 599, offsetX = -58, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 136: Rozebud0097
		{x = 3146, y = 2, width = 279, height = 599, offsetX = -58, offsetY = -2, offsetWidth = 344, offsetHeight = 601}, -- 137: Rozebud0098
		{x = 5961, y = 588, width = 272, height = 591, offsetX = -58, offsetY = -10, offsetWidth = 344, offsetHeight = 601}, -- 138: Rozebud0099
		{x = 2297, y = 599, width = 272, height = 591, offsetX = -58, offsetY = -10, offsetWidth = 344, offsetHeight = 601}, -- 139: Rozebud0100
		{x = 5265, y = 1230, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 140: Rozebud0101
		{x = 7290, y = 1231, width = 268, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 141: Rozebud0102
		{x = 7031, y = 605, width = 270, height = 589, offsetX = -58, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 142: Rozebud0103
		{x = 5699, y = 2, width = 279, height = 584, offsetX = -58, offsetY = -17, offsetWidth = 344, offsetHeight = 601}, -- 143: Rozebud0104
		{x = 5980, y = 2, width = 279, height = 584, offsetX = -58, offsetY = -17, offsetWidth = 344, offsetHeight = 601}, -- 144: Rozebud0105
		{x = 4862, y = 2, width = 285, height = 573, offsetX = -58, offsetY = -28, offsetWidth = 344, offsetHeight = 601}, -- 145: Rozebud0106
		{x = 5149, y = 2, width = 285, height = 573, offsetX = -58, offsetY = -28, offsetWidth = 344, offsetHeight = 601}, -- 146: Rozebud0107
		{x = 6347, y = 2921, width = 257, height = 577, offsetX = -48, offsetY = -24, offsetWidth = 344, offsetHeight = 601}, -- 147: Rozebud0108
		{x = 4163, y = 2925, width = 257, height = 577, offsetX = -48, offsetY = -24, offsetWidth = 344, offsetHeight = 601}, -- 148: Rozebud0109
		{x = 2702, y = 2942, width = 255, height = 576, offsetX = -50, offsetY = -25, offsetWidth = 344, offsetHeight = 601}, -- 149: Rozebud0110
		{x = 1335, y = 2947, width = 255, height = 576, offsetX = -50, offsetY = -25, offsetWidth = 344, offsetHeight = 601}, -- 150: Rozebud0111
		{x = 7599, y = 2931, width = 256, height = 579, offsetX = -52, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 151: Rozebud0112
		{x = 532, y = 2936, width = 255, height = 579, offsetX = -53, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 152: Rozebud0113
		{x = 7857, y = 2931, width = 256, height = 579, offsetX = -52, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 153: Rozebud0114
		{x = 261, y = 2938, width = 255, height = 579, offsetX = -53, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 154: Rozebud0115
		{x = 1614, y = 2932, width = 256, height = 579, offsetX = -52, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 155: Rozebud0116
		{x = 1078, y = 2939, width = 255, height = 579, offsetX = -53, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 156: Rozebud0117
		{x = 6606, y = 2932, width = 256, height = 579, offsetX = -52, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 157: Rozebud0118
		{x = 4736, y = 2940, width = 255, height = 579, offsetX = -53, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 158: Rozebud0119
		{x = 1872, y = 2933, width = 256, height = 579, offsetX = -52, offsetY = -22, offsetWidth = 344, offsetHeight = 601}, -- 159: Rozebud0120
		{x = 3594, y = 2957, width = 255, height = 575, offsetX = -51, offsetY = -26, offsetWidth = 344, offsetHeight = 601}, -- 160: Rozebud0121
		{x = 7188, y = 2957, width = 255, height = 575, offsetX = -51, offsetY = -26, offsetWidth = 344, offsetHeight = 601}, -- 161: Rozebud0122
		{x = 2, y = 2362, width = 257, height = 589, offsetX = -51, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 162: Rozebud0123
		{x = 5039, y = 2371, width = 256, height = 589, offsetX = -51, offsetY = -12, offsetWidth = 344, offsetHeight = 601}, -- 163: Rozebud0124
		{x = 5818, y = 2912, width = 257, height = 580, offsetX = -52, offsetY = -21, offsetWidth = 344, offsetHeight = 601}, -- 164: Rozebud0125
		{x = 3060, y = 2913, width = 256, height = 581, offsetX = -52, offsetY = -20, offsetWidth = 344, offsetHeight = 601}, -- 165: Rozebud0126
		{x = 2130, y = 2947, width = 255, height = 576, offsetX = -53, offsetY = -25, offsetWidth = 344, offsetHeight = 601}, -- 166: Rozebud0127
		{x = 2, y = 2953, width = 255, height = 576, offsetX = -53, offsetY = -25, offsetWidth = 344, offsetHeight = 601}, -- 167: Rozebud0128

		{x = 6235, y = 604, width = 253, height = 630, offsetX = -5, offsetY = 0, offsetWidth = 261, offsetHeight = 630}, -- 168: Up Normal0000
		{x = 6490, y = 604, width = 253, height = 630, offsetX = -5, offsetY = 0, offsetWidth = 261, offsetHeight = 630}, -- 169: Up Normal0001
		{x = 4531, y = 554, width = 260, height = 621, offsetX = 0, offsetY = -9, offsetWidth = 260, offsetHeight = 630}, -- 170: Up Normal0002
		{x = 4793, y = 577, width = 260, height = 621, offsetX = 0, offsetY = -9, offsetWidth = 260, offsetHeight = 630}, -- 171: Up Normal0003

		{x = 3400, y = 605, width = 253, height = 630, offsetX = -5, offsetY = 0, offsetWidth = 260, offsetHeight = 630}, -- 172: Up Yell0000
		{x = 3655, y = 605, width = 253, height = 630, offsetX = -5, offsetY = 0, offsetWidth = 260, offsetHeight = 630}, -- 173: Up Yell0001
		{x = 5055, y = 577, width = 260, height = 621, offsetX = 0, offsetY = -9, offsetWidth = 260, offsetHeight = 630}, -- 174: Up Yell0002
		{x = 5699, y = 588, width = 260, height = 621, offsetX = 0, offsetY = -9, offsetWidth = 260, offsetHeight = 630}, -- 175: Up Yell0003

		{x = 5256, y = 2962, width = 261, height = 559, offsetX = -21, offsetY = -11, offsetWidth = 284, offsetHeight = 570}, -- 176: missDown0000
		{x = 6864, y = 2969, width = 261, height = 559, offsetX = -21, offsetY = -11, offsetWidth = 284, offsetHeight = 570}, -- 177: missDown0001
		{x = 6745, y = 605, width = 284, height = 561, offsetX = 0, offsetY = -7, offsetWidth = 284, offsetHeight = 570}, -- 178: missDown0002
		{x = 6745, y = 605, width = 284, height = 561, offsetX = 0, offsetY = -7, offsetWidth = 284, offsetHeight = 570}, -- 179: missDown0003
		{x = 4205, y = 2355, width = 270, height = 568, offsetX = -7, offsetY = 0, offsetWidth = 284, offsetHeight = 570}, -- 180: missDown0004
		{x = 4205, y = 2355, width = 270, height = 568, offsetX = -7, offsetY = 0, offsetWidth = 284, offsetHeight = 570}, -- 181: missDown0005

		{x = 552, y = 2336, width = 259, height = 598, offsetX = -14, offsetY = -8, offsetWidth = 273, offsetHeight = 606}, -- 182: missLeft0000
		{x = 271, y = 2338, width = 259, height = 598, offsetX = -14, offsetY = -8, offsetWidth = 273, offsetHeight = 606}, -- 183: missLeft0001
		{x = 3984, y = 2, width = 273, height = 604, offsetX = 0, offsetY = 0, offsetWidth = 273, offsetHeight = 606}, -- 184: missLeft0002
		{x = 3984, y = 2, width = 273, height = 604, offsetX = 0, offsetY = 0, offsetWidth = 273, offsetHeight = 606}, -- 185: missLeft0003
		{x = 7612, y = 2, width = 268, height = 604, offsetX = -5, offsetY = 0, offsetWidth = 273, offsetHeight = 606}, -- 186: missLeft0004
		{x = 7612, y = 2, width = 268, height = 604, offsetX = -5, offsetY = 0, offsetWidth = 273, offsetHeight = 606}, -- 187: missLeft0005

		{x = 1592, y = 3513, width = 256, height = 558, offsetX = 0, offsetY = -55, offsetWidth = 263, offsetHeight = 613}, -- 188: missRight0000
		{x = 6606, y = 3513, width = 256, height = 558, offsetX = 0, offsetY = -55, offsetWidth = 263, offsetHeight = 613}, -- 189: missRight0001
		{x = 834, y = 1775, width = 256, height = 610, offsetX = -7, offsetY = 0, offsetWidth = 263, offsetHeight = 613}, -- 190: missRight0002
		{x = 834, y = 1775, width = 256, height = 610, offsetX = -7, offsetY = 0, offsetWidth = 263, offsetHeight = 613}, -- 191: missRight0003
		{x = 3386, y = 1827, width = 254, height = 610, offsetX = -7, offsetY = 0, offsetWidth = 263, offsetHeight = 613}, -- 192: missRight0004
		{x = 3386, y = 1827, width = 254, height = 610, offsetX = -7, offsetY = 0, offsetWidth = 263, offsetHeight = 613}, -- 193: missRight0005

		{x = 6235, y = 604, width = 253, height = 630, offsetX = -3, offsetY = 0, offsetWidth = 261, offsetHeight = 630}, -- 194: missUp0000
		{x = 6490, y = 604, width = 253, height = 630, offsetX = -3, offsetY = 0, offsetWidth = 261, offsetHeight = 630}, -- 195: missUp0001
		{x = 5436, y = 2, width = 261, height = 625, offsetX = 0, offsetY = -5, offsetWidth = 261, offsetHeight = 630}, -- 196: missUp0002
		{x = 5436, y = 2, width = 261, height = 625, offsetX = 0, offsetY = -5, offsetWidth = 261, offsetHeight = 630}, -- 197: missUp0003
		{x = 7351, y = 2, width = 259, height = 626, offsetX = -1, offsetY = -4, offsetWidth = 261, offsetHeight = 630}, -- 198: missUp0004
		{x = 7351, y = 2, width = 259, height = 626, offsetX = -1, offsetY = -4, offsetWidth = 261, offsetHeight = 630} -- 199: missUp0005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 4, speed = 24, offsetX = -10, offsetY = -11},
		["singDOWN alt"] = {start = 5, stop = 8, speed = 24, offsetX = -10, offsetY = -11},
		["idle"] = {start = 9, stop = 22, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 23, stop = 26, speed = 24, offsetX = 1, offsetY = 1},
		["singLEFT alt"] = {start = 27, stop = 30, speed = 24, offsetX = 1, offsetY = 4},
		["singRIGHT"] = {start = 31, stop = 34, speed = 24, offsetX = -14, offsetY = -8},
		["singRIGHT alt"] = {start = 35, stop = 38, speed = 24, offsetX = -14, offsetY = -8},
		["rozebud"] = {start = 39, stop = 167, speed = 24, offsetX = -3, offsetY = 10},
		["singUP"] = {start = 168, stop = 171, speed = 24, offsetX = -20, offsetY = 22},
		["singUP alt"] = {start = 172, stop = 175, speed = 24, offsetX = -20, offsetY = 22},
		["miss singDOWN"] = {start = 176, stop = 181, speed = 24, offsetX = -2, offsetY = -5},
		["miss singLEFT"] = {start = 182, stop = 187, speed = 24, offsetX = 5, offsetY = 10},
		["miss singRIGHT"] = {start = 188, stop = 193, speed = 24, offsetX = -19, offsetY = 11},
		["miss singUP"] = {start = 194, stop = 199, speed = 24, offsetX = -22, offsetY = 22},

	},
	"idle",
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)