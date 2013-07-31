specs =
    motion:
        sprite: [
            ['c', 'motion', 'forward:', 'move %f steps', 10]
            ['c', 'motion', 'turnRight:', 'turn @turnRight %f degrees', 15]
            ['c', 'motion', 'turnLeft:', 'turn @turnLeft %f degrees', 15]
            '-'
            ['vs', $:'direction', 90]
            ['c', 'motion', 'pointTowards:', 'point towards %m.sprite']
            '-'
            ['c', 'motion', 'gotoX:y:', 'go to x: %f y: %f', 0, 0]
            ['c', 'motion', 'gotoSpriteOrMouse:', 'go to %m.spriteOrMouse']
            ['c', 'motion', 'glideSecs:toX:y:elapsed:from:', 'glide %f secs to x: %f y: %f', 1, 0, 0]
            '-'
            ['vc', $:'x position']
            ['vs', $:'x position']
            ['vc', $:'y position']
            ['vs', $:'y position']
            '-'
            ['c', 'motion', 'bounceOffEdge', 'if on edge, bounce']
            '-'
            ['vs', $:'rotation style']
            '-'
            ['v', $:'x position']
            ['v', $:'y position']
            ['v', $:'direction']
            ['v', $:'rotation style']
        ]
        stage: [
            ['!', 'Stage selected:']
            ['!', 'No motion blocks']
        ]
    looks:
        sprite: [
            ['c', 'looks', 'say:duration:elapsed:from:', 'say %s for %f secs', 'Hello!', 2]
            ['c', 'looks', 'say:', 'say %s', 'Hello!']
            ['c', 'looks', 'think:duration:elapsed:from:', 'think %s for %f secs', 'Hmm\u2026', 2]
            ['c', 'looks', 'think:', 'think %s', 'Hmm\u2026']
            '-'
            ['c', 'looks', 'show', 'show']
            ['c', 'looks', 'hide', 'hide']
            '-'
            ['c', 'looks', 'lookLike:', 'switch costume to %m.costume']
            ['c', 'looks', 'nextCostume', 'next costume']
            ['c', 'looks', 'startScene', 'switch backdrop to %m.backdrop']
            '-'
            ['vc', $:'color effect']
            ['vs', $:'color effect']
            ['c', 'looks', 'filterReset', 'clear graphic effects']
            '-'
            ['vc', $:'size']
            ['vs', $:'size', 100]
            '-'
            ['c', 'looks', 'comeToFront', 'go to front']
            ['c', 'looks', 'goBackByLayers:', 'go back %i layers', 1]
            '-'
            ['v', $:'costume #']
            ['v', $:'backdrop name']
            ['v', $:'size']
        ]
        stage: [
            ['c', 'looks', 'startSceneAndWait', 'switch backdrop to %m.backdrop']
            ['c', 'looks', 'startScene', 'switch backdrop to %m.backdrop and wait']
            ['c', 'looks', 'nextScene', 'next backdrop']
            '-'
            ['vc', $:'color effect']
            ['vs', $:'color effect']
            ['c', 'looks', 'filterReset', 'clear graphic effects']
            '-'
            ['vc', $:'size']
            ['vs', $:'size', 100]
            '-'
            ['c', 'looks', 'comeToFront', 'go to front']
            ['c', 'looks', 'goBackByLayers:', 'go back %i layers', 1]
            '-'
            ['v', $:'costume #']
            ['v', $:'backdrop name']
            ['v', $:'size']
        ]
    sound: [
        ['c', 'sound', 'playSound:', 'play sound %m.sound']
        ['c', 'sound', 'doPlaySoundAndWait', 'play sound %m.sound until done']
        ['c', 'sound', 'stopAllSounds', 'stop all sounds']
        '-'
        ['c', 'sound', 'playDrum', 'play drum %i.drum for %f beats', 48, .2]
        ['c', 'sound', 'rest:elapsed:from:', 'rest for %f beats', .2]
        '-'
        ['c', 'sound', 'noteOn:duration:elapsed:from:', 'play note %i.note for %f beats', 60, .5]
        ['vs', $:'instrument']
        '-'
        ['vc', $:'volume', -10]
        ['vs', $:'volume', 100]
        ['v', $:'volume']
        '-'
        ['vc', $:'tempo', 20]
        ['vs', $:'tempo', 60]
        ['v', $:'tempo']
    ]
    pen: [
        ['c', 'pen', 'clearPenTrails', 'clear']
        '-'
        ['c', 'pen', 'stampCostume', 'stamp']
        '-'
        ['c', 'pen', 'putPenDown', 'pen down']
        ['c', 'pen', 'putPenUp', 'pen up']
        '-'
        ['vs', $:'pen color']
        ['vc', $:'pen hue']
        ['vs', $:'pen hue']
        '-'
        ['vc', $:'pen lightness']
        ['vs', $:'pen lightness']
        '-'
        ['vc', $:'pen size']
        ['vs', $:'pen size']
    ]
    data: [
        ['&', 'createVariable', $:'Make a Variable']
        '-'
        ['v', '']
        '-'
        ['vs', '']
        ['vc', '']
        ['c', 'data', 'showVariable:', 'show variable %m.var', '']
        ['c', 'data', 'hideVariable:', 'hide variable %m.var', '']
        '-'
        ['c', 'lists', 'append:toList:', 'add %s to %m.list', $:'thing', '']
        '-'
        ['c', 'lists', 'deleteLine:ofList:', 'delete %i.deletion-index of %m.list', 1, '']
        ['c', 'lists', 'insert:at:ofList:', 'insert %s at %i.index of %m.list', $:'thing', 1, '']
        ['c', 'lists', 'setLine:ofList:to:', 'replace item %i.index of %m.list with %s', 1, '', $:'thing']
        '-'
        ['r', 'lists', 'getLine:ofList:', 'item %i.index of %m.list', 1, '']
        ['r', 'lists', 'lineCountOfList:', 'length of %m.list']
        ['b', 'lists', 'list:contains:', '%m.list contains %s?', '', $:'thing']
        '-'
        ['c', 'lists', 'showList:', 'show list %m.list', '']
        ['c', 'lists', 'hideList:', 'hide list %m.list', '']
    ]
    events: [
        ['h', 'events', 'whenGreenFlag', 'when @greenFlag clicked']
        ['h', 'events', 'whenKeyPressed', 'when %m.key key pressed']
        ['h', 'events', 'whenClicked', 'when this sprite clicked']
        ['h', 'events', 'whenSceneStarts', 'when backdrop switches to %m.backdrop']
        '-'
        ['h', 'events', 'whenSensorGreaterThan', 'when %m.triggerSensor > %f']
        '-'
        ['h', 'events', 'whenIReceive', 'when I receive %m.event']
        ['c', 'events', 'broadcast:', 'broadcast %m.event']
        ['c', 'events', 'doBroadcastAndWait', 'broadcast %m.event and wait']
    ]
    control:
        stage: [
            ['r', 'system', 'commandClosure', '%m.parameters %slot.command']
            ['r', 'system', 'reporterClosure', '%m.parameters %slot.reporter']
            '-'
            ['c', 'control', 'wait:elapsed:from:', 'wait %f secs', 1]
            '-'
            ['c', 'control', 'doRepeat', 'repeat %i %c', 10]
            ['t', 'control', 'doForever', 'forever %c']
            '-'
            ['c', 'control', 'doIf', 'if %b %c']
            ['c', 'control', 'doIfElse', 'if %b %c else %c']
            ['c', 'control', 'doWaitUntil', 'wait until %b']
            ['c', 'control', 'doUntil', 'repeat until %b %c']
            '-'
            ['t', 'control', 'stopScripts', 'stop %m.stop']
            '-'
            ['h', 'control', 'whenCloned', 'clone startup']
            ['c', 'control', 'createCloneOf', 'create clone of %m.spriteOrSelf']
            ['t', 'control', 'deleteClone', 'delete this clone']
        ]
        sprite: [
            ['r', 'system', 'commandClosure', '%parameters %slot:command']
            ['r', 'system', 'reporterClosure', '%parameters %slot:reporter']
            '-'
            ['c', 'control', 'wait:elapsed:from:', 'wait %f secs', 1]
            '-'
            ['c', 'control', 'doRepeat', 'repeat %i %c', 10]
            ['t', 'control', 'doForever', 'forever %c']
            '-'
            ['c', 'control', 'doIf', 'if %b %c']
            ['c', 'control', 'doIfElse', 'if %b %c else %c']
            ['c', 'control', 'doWaitUntil', 'wait until %b']
            ['c', 'control', 'doUntil', 'repeat until %b %c']
            '-'
            ['t', 'control', 'stopScripts', 'stop %m.stop']
            '-'
            ['c', 'control', 'createCloneOf', 'create clone of %m.spriteOrSelf']
        ]
    sensing:
        sprite: [
            ['b', 'sensing', 'touching:', 'touching %m.spriteOrMouse?']
            ['b', 'sensing', 'touchingColor:', 'touching color %m.color?']
            ['b', 'sensing', 'color:sees:', 'color %m.color is touching %m.color?']
            ['r', 'sensing', 'distanceTo:', 'distance to %m.spriteOrMouse']
            '-'
            ['c', 'sensing', 'doAsk', 'ask %s and wait', $:"What's your name?"]
            ['v', $:'answer']
            '-'
            ['b', 'sensing', 'keyPressed:', 'key %m.key pressed?']
            ['v', $:'mouse down?']
            ['v', $:'mouse x']
            ['v', $:'mouse y']
            '-'
            ['v', $:'loudness']
            '-'
            ['r', 'sensing', 'senseVideoMotion', 'video %m.videoMotion on %m.stageOrThis']
            ['c', 'sensing', 'setVideoState', 'turn video %m.videoState', $:'on']
            ['c', 'sensing', 'setVideoTransparency', 'set video transparency to %f%', 50]
            '-'
            ['v', $:'timer']
            ['vs', $:'timer']
            '-'
            ['r', 'sensing', 'getAttribute:of:', '%m.attribute of %m.spriteOrStage']
            '-'
            ['r', 'sensing', 'timeAndDate', 'current %m.timeAndDate', $:'minute']
            ['r', 'sensing', 'timestamp', 'days since 2000']
            ['r', 'sensing', 'getUserName', 'username']
        ]
        stage: [
            ['c', 'sensing', 'doAsk', 'ask %s and wait', $:"What's your name?"]
            ['v', $:'answer']
            '-'
            ['b', 'sensing', 'keyPressed:', 'key %m.key pressed?']
            ['v', $:'mouse down?']
            ['v', $:'mouse x']
            ['v', $:'mouse y']
            '-'
            ['v', $:'loudness']
            '-'
            ['r', 'sensing', 'senseVideoMotion', 'video %m.videoMotion on %m.stageOrThis']
            ['c', 'sensing', 'turn video %m.videoState', $:'on']
            ['c', 'sensing', 'set video transparency to %f%', 50]
            '-'
            ['v', $:'timer']
            ['vs', $:'timer']
            '-'
            ['r', 'sensing', 'getAttribute:of:', '%m.attribute of %m.spriteOrStage']
            '-'
            ['r', 'sensing', 'timeAndDate', 'current %m.timeAndDate', $:'minute']
            ['r', 'sensing', 'timestamp', 'days since 2000']
            ['r', 'sensing', 'getUserName', 'username']
        ]
    operators: [
        ['r', 'operators', '+', '%f + %f']
        ['r', 'operators', '-', '%f - %f']
        ['r', 'operators', '*', '%f \xd7 %f']
        ['r', 'operators', '/', '%f / %f']
        '-'
        ['r', 'operators', 'randomFrom:to:', 'pick random %f to %f']
        '-'
        ['r', 'operators', '<', '%s < %s']
        ['r', 'operators', '=', '%s = %s']
        ['r', 'operators', '>', '%s > %s']
        '-'
        ['b', 'operators', '&', '%b and %b']
        ['b', 'operators', '|', '%b or %b']
        ['b', 'operators', 'not', 'not %b']
        '-'
        ['b', 'operators', 'true', 'true']
        ['b', 'operators', 'false', 'false']
        '-'
        ['r', 'operators', 'concatenate:with:', 'join %s %s', 'hello ', 'world']
        ['r', 'operators', 'letter:of:', 'letter %i of %s', 1, 'world']
        ['r', 'operators', 'stringLength:', 'length of %s', 'world']
        '-'
        ['r', 'operators', '%', '%f mod %f']
        ['r', 'operators', 'rounded', 'round %f']
        '-'
        ['r', 'operators', 'computeFunction:of:', '%m.math of %f', 'sqrt', 10]
    ]
    obsolete: [
        ['c', 'obsolete', 'drum:duration:elapsed:from:', 'play drum %f for %f beats', 1, 0.25],
        ['c', 'obsolete', 'midiInstrument:', 'set instrument to %f', 1],
        ['b', 'obsolete', 'isLoud', 'loud?'],
        ['r', 'obsolete', 'abs', 'abs %f'],
        ['r', 'obsolete', 'sqrt', 'sqrt %f'],
        ['t', 'obsolete', 'doReturn', 'stop script'],
        ['t', 'obsolete', 'stopAll', 'stop all'],
        ['c', 'obsolete', 'showBackground:', 'switch to background %m.costume', 'backdrop1'],
        ['c', 'obsolete', 'nextBackground', 'next background'],
        ['t', 'obsolete', 'doForeverIf', 'forever if %b %c'],

        ['r', 'obsolete', 'COUNT', 'noop']
        ['r', 'obsolete', 'COUNT', 'counter']
        ['c', 'obsolete', 'CLR_COUNT', 'clear counter']
        ['c', 'obsolete', 'INCR_COUNT', 'incr counter']
        ['c', 'obsolete', 'doForLoop', 'for each %m.var in %s %c']
        ['c', 'obsolete', 'doWhile', 'while %b %c']
        ['c', 'obsolete', 'warpSpeed', 'all at once %c']
        ['c', 'obsolete', 'scrollRight', 'scroll right %f']
        ['c', 'obsolete', 'scrollUp', 'scroll up %f']
        ['c', 'obsolete', 'scrollAlign', 'align scene %m.scrollAlign', $:'bottom-left']
        ['v', $:'x scroll']
        ['v', $:'y scroll']
        ['c', 'obsolete', 'hideAll', 'hide all sprites']
        ['r', 'obsolete', 'getUserId', 'user id']
    ]

specsBySelector =
    'setVar:to:': ['vs', 'var']
    'changeVar:by:': ['vc', 'var', 1]
    'readVariable': ['v', 'var']

do ->
    map = (specs) ->
        for spec in specs when spec isnt '-'
            switch spec[0]
                when 'c', 't', 'r', 'b', 'h'
                    specsBySelector[spec[2]] = spec
    for name, category of specs
        if category.stage
            map category.stage
            map category.sprite
        else
            map category

checkScratchSpecs = (specs) ->
    for spec in specs when spec.length > 1
        if not specsBySelector[spec[3]]
            console.warn "Missing block '#{spec[0]}' for ##{spec[3]}"

module 'amber.editor', {
    specs
    specsBySelector
    checkScratchSpecs
}