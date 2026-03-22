$fn = $preview ? 24 : 120;
include <./YAPP_Box/YAPPgenerator_v3.scad>

pcbLength     = 80.5;
pcbWidth      = 57;
pcbThickness  =  2;
lidWallHeight  = 15;
baseWallHeight = 15;

ridgeHeight = 6;
ridgeSlack = 0.4;

standoffDiameter=6;
standoffPinDiameter=3;
standoffHoleSlack=0.2;
standoffHeight = 5;

pcbStands = 
[
    [3.5, 3.5, standoffHeight, yappDefault
      , standoffDiameter, standoffPinDiameter, standoffHoleSlack, 2.5, yappAllCorners]
];

cutoutsBase = 
[
    [30.5, 1, 12, 21.5, 2, yappRoundedRect]
];
cutoutsLeft = 
[
    [58, 2, 13.5, 8, 3, yappRoundedRect]
];
snapJoins   =   
[
    [35.25, 10, yappLeft, yappRight]
];
labelsPlane = 
[
    [ 33, pcbWidth + 1,  180, 1, yappBase, "Liberation Mono:style=bold", 3, "KEEP AWAKE",],
    [ 33, pcbWidth - 3.5,  180, 1, yappBase, "Liberation Mono:style=bold", 3, "POWER"]
];

showPCB = false;
YAPPgenerate();