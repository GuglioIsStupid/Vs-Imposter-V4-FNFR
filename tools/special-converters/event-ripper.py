import json
import os
import sys

for i in range(1, len(sys.argv)):
    jsonfile = os.path.split(sys.argv[i])[1]

    with open(jsonfile) as f:
        jsondata = f.read()

    lua = ""

    songdata = json.loads(jsondata.strip('\x00'))

    notes = songdata['song']['notes']
    arguments = ['mustHitSection', 'bpm', 'altAnim']
    bpm = songdata['song']['bpm']

    for j in notes:
        if len(j['sectionNotes']) > 0:
            for k in j['sectionNotes']:
                if k[1] == -1:
                    # remove the spaces k[2]
                    k[2] = k[2].replace(" ", "")
                    lua += (
                        'if musicTime >= ' + str(j['sectionNotes'][0][0]) + ' and musicTime < ' + str(j['sectionNotes'][0][0]+25) + ' then \n'
                        '\t' + k[2] + '()\n'
                        'end\n'
                    )

    with open('events.lua', 'w') as f:
        f.write(lua)