% Filename: Jomaa_Ibrahim.t
% Authors: Ibrahim Jomaa, Raphael Arian, Faroozidin Zafar 
% Date Created: June 6th, 2015
% Description: This program outputs an animation (a race with five racecars).
% Animation is about 1 min and 35 seconds long.
% There is also sound in this file, so have your speakers turned on.

% Group number 2
% Ignore this screen when running the program otherwise the animation will bug out.
% Thank you.

setscreen ("graphics:646;399,nobuttonbar")
setscreen ("offscreenonly")
var HelicopterDrawing := Pic.FileNew ("Heli3.gif") % Image of helicopter

% All SOUND FILES below-----------------------------------
% Music during countdown
process DoMusic
    Music.PlayFile ("Random Music.mp3")
end DoMusic

% Ending scene
process Victory
    Music.PlayFile ("Applause Crowd Cheering.mp3")
end Victory

% Racing sound effect
process Race
    Music.PlayFile ("Car Race Sound Effect.wav")
end Race

% Announcer sound effects
process Countdown
    Music.PlayFile ("Announcer (Countdown).wav")
end Countdown

process FirstHit
    Music.PlayFile ("FirstHit.mp3")
end FirstHit

process Ouch
    Music.PlayFile ("That's Gotta Hurt.mp3")
end Ouch

process DevastatingAttack
    Music.PlayFile ("Devastating Attack Coming Up.wav")
end DevastatingAttack

process Incredible
    Music.PlayFile ("Incredible... I Can't Believe It.wav")
end Incredible

process Congratulations
    Music.PlayFile ("You Just Went Up A Rank.wav")
end Congratulations

% Turret sound effects
process TurretFire
    Music.PlayFile ("Laser Machine Gun Sound Effect.mp3")
end TurretFire

process Hydrolic
    Music.PlayFile ("Hydraulic sound effect.mp3")
end Hydrolic

process Explosion
    Music.PlayFile ("Explosion Sound Effect.mp3")
end Explosion

process LaserFire
    Music.PlayFile ("Ultra Heavy Laser sound effect.mp3")
end LaserFire

% Helicopter sound effects
process Helicopter
    Music.PlayFile ("Helicopter.mp3")
end Helicopter

process MachineGun
    delay (4100) % Required to time in with the animation
    Music.PlayFile ("Browning Machine Gun.wav")
end MachineGun

process Ammo
    Music.PlayFile ("Ammo.wav")
end Ammo

% All DRAWINGS below-----------------------------------
% Explosion drawings
% Red star over Yellow star
drawfillstar (35, 260, 115, 320, 14)
drawfillstar (35, 320, 115, 260, 40)
var Explosion1 : int := Pic.New (35, 260, 115, 320) % Obtains the image
cls

% Yellow star over Red star
drawfillstar (35, 260, 115, 320, 40)
drawfillstar (35, 320, 115, 260, 14)
var Explosion2 : int := Pic.New (35, 260, 115, 320) % Obtains the image

% Drawing the 5 racecars
% Red Car
% Car Wheels
drawoval (11, 160, 6, 6, 255)
drawoval (39, 160, 6, 6, 255)
drawfill (35, 160, 12, 7) % Wheel colour
drawfill (15, 160, 12, 7)
drawfilloval (11, 160, 4, 4, 255)
drawfilloval (39, 160, 4, 4, 255)
drawfilloval (11, 160, 1, 1, 143)
drawfilloval (39, 160, 1, 1, 143)

% Driver and steering wheel
drawoval (24, 171, 3, 4, 8)
drawfilloval (24, 171, 3, 4, 12) % Driver head colour
drawfilloval (26, 171, 2, 1, 255)
drawoval (32, 169, 1, 3, 255)

% Car body
drawfilloval (32, 169, 1, 3, 255)
drawfillbox (29, 166, 36, 169, 0)
drawline (0, 158, 1, 158, 255)
drawline (0, 158, 0, 160, 255)
drawline (16, 157, 34, 157, 255)
drawline (45, 157, 57, 157, 255)
drawarc (-131, 160, 190, 20, 350, 0, 255)
drawline (58, 160, 35, 170, 255)
drawarc (47, 198, 36, 50, 210, 220, 255)
drawline (15, 174, 5, 168, 255)
drawline (5, 168, 1, 162, 255)
drawline (1, 162, 2, 158, 255)
drawarc (22, 172, 12, 5, 226, 364, 255)
drawline (2, 158, 4, 158, 255)
drawline (17, 161, 33, 161, 255)

% Colour (Checkered strip)
drawfill (20, 160, 63, 255)

% Checkered strip
drawline (19, 161, 19, 158, 255)
drawline (21, 161, 21, 158, 255)
drawline (23, 161, 23, 158, 255)
drawline (25, 161, 25, 158, 255)
drawline (27, 161, 27, 158, 255)
drawline (29, 161, 29, 158, 255)
drawline (31, 161, 31, 158, 255)
drawline (33, 161, 33, 158, 255)
drawline (18, 159, 33, 159, 255)

% Colour (Red)
drawfill (25, 165, 12, 255)
drawfill (50, 160, 12, 255)
drawfill (11, 160, 8, 255)
drawfill (1, 159, 7, 255)
drawfill (39, 160, 8, 255)

var RacecarBeta1 : int := Pic.New (0, 154, 58, 175) % Obtains the image
var RedRacecar : int := Pic.Scale (RacecarBeta1, 77, 40) % Makes the image larger
cls

% Green Car
% Car Wheels
drawoval (11, 160, 6, 6, 255)
drawoval (39, 160, 6, 6, 255)
drawfill (35, 160, 122, 7) % Wheel colour
drawfill (15, 160, 122, 7)
drawfilloval (11, 160, 4, 4, 255)
drawfilloval (39, 160, 4, 4, 255)
drawfilloval (11, 160, 1, 1, 143)
drawfilloval (39, 160, 1, 1, 143)

% Driver and steering wheel
drawoval (24, 171, 3, 4, 8)
drawfilloval (24, 171, 3, 4, 122) % Driver head colour
drawfilloval (26, 171, 2, 1, 255)
drawoval (32, 169, 1, 3, 255)

% Car body
drawfilloval (32, 169, 1, 3, 255)
drawfillbox (29, 166, 36, 169, 0)
drawline (0, 158, 1, 158, 255)
drawline (0, 158, 0, 160, 255)
drawline (16, 157, 34, 157, 255)
drawline (45, 157, 57, 157, 255)
drawarc (-131, 160, 190, 20, 350, 0, 255)
drawline (58, 160, 35, 170, 255)
drawarc (47, 198, 36, 50, 210, 220, 255)
drawline (15, 174, 5, 168, 255)
drawline (5, 168, 1, 162, 255)
drawline (1, 162, 2, 158, 255)
drawarc (22, 172, 12, 5, 226, 364, 255)
drawline (2, 158, 4, 158, 255)
drawline (17, 161, 33, 161, 255)

% Colour (Checkered strip)
drawfill (20, 160, 96, 255)

% Checkered strip
drawline (19, 161, 19, 158, 255)
drawline (21, 161, 21, 158, 255)
drawline (23, 161, 23, 158, 255)
drawline (25, 161, 25, 158, 255)
drawline (27, 161, 27, 158, 255)
drawline (29, 161, 29, 158, 255)
drawline (31, 161, 31, 158, 255)
drawline (33, 161, 33, 158, 255)
drawline (18, 159, 33, 159, 255)

% Colour (Green)
drawfill (25, 165, 122, 255)
drawfill (50, 160, 122, 255)
drawfill (11, 160, 8, 255)
drawfill (11, 158, 122, 255)
drawfill (39, 160, 8, 255)
drawfill (37, 160, 122, 255)
drawfill (1, 159, 7, 255)

var RacecarBeta2 : int := Pic.New (0, 154, 58, 175) % Obtains the image
var GreenRacecar : int := Pic.Scale (RacecarBeta2, 77, 40) % Makes the image larger
cls

% Orange Car
% Car Wheels
drawoval (11, 160, 6, 6, 255)
drawoval (39, 160, 6, 6, 255)
drawfill (35, 160, 42, 7) % Wheel colour
drawfill (15, 160, 42, 7)
drawfilloval (11, 160, 4, 4, 255)
drawfilloval (39, 160, 4, 4, 255)
drawfilloval (11, 160, 1, 1, 143)
drawfilloval (39, 160, 1, 1, 143)

% Driver and steering wheel
drawoval (24, 171, 3, 4, 8)
drawfilloval (24, 171, 3, 4, 42) % Driver head colour
drawfilloval (26, 171, 2, 1, 255)
drawoval (32, 169, 1, 3, 255)

% Car body
drawfilloval (32, 169, 1, 3, 255)
drawfillbox (29, 166, 36, 169, 0)
drawline (0, 158, 1, 158, 255)
drawline (0, 158, 0, 160, 255)
drawline (16, 157, 34, 157, 255)
drawline (45, 157, 57, 157, 255)
drawarc (-131, 160, 190, 20, 350, 0, 255)
drawline (58, 160, 35, 170, 255)
drawarc (47, 198, 36, 50, 210, 220, 255)
drawline (15, 174, 5, 168, 255)
drawline (5, 168, 1, 162, 255)
drawline (1, 162, 2, 158, 255)
drawarc (22, 172, 12, 5, 226, 364, 255)
drawline (2, 158, 4, 158, 255)
drawline (17, 161, 33, 161, 255)

% Colour (Checkered strip)
drawfill (20, 160, 66, 255)

% Checkered strip
drawline (19, 161, 19, 158, 255)
drawline (21, 161, 21, 158, 255)
drawline (23, 161, 23, 158, 255)
drawline (25, 161, 25, 158, 255)
drawline (27, 161, 27, 158, 255)
drawline (29, 161, 29, 158, 255)
drawline (31, 161, 31, 158, 255)
drawline (33, 161, 33, 158, 255)
drawline (18, 159, 33, 159, 255)

% Colour (Orange)
drawfill (25, 165, 42, 255)
drawfill (50, 160, 42, 255)
drawfill (11, 160, 8, 255)
drawfill (11, 158, 42, 255)
drawfill (39, 160, 8, 255)
drawfill (37, 160, 42, 255)
drawfill (1, 159, 7, 255)

var RacecarBeta3 : int := Pic.New (0, 154, 58, 175) % Obtains the image
var OrangeRacecar : int := Pic.Scale (RacecarBeta3, 77, 40) % Makes the image larger
cls

% Purple Car
% Car Wheels
drawoval (11, 160, 6, 6, 255)
drawoval (39, 160, 6, 6, 255)
drawfill (35, 160, 34, 7) % Wheel colour
drawfill (15, 160, 34, 7)
drawfilloval (11, 160, 4, 4, 255)
drawfilloval (39, 160, 4, 4, 255)
drawfilloval (11, 160, 1, 1, 143)
drawfilloval (39, 160, 1, 1, 143)

% Driver and steering wheel
drawoval (24, 171, 3, 4, 8)
drawfilloval (24, 171, 3, 4, 34) % Driver head colour
drawfilloval (26, 171, 2, 1, 255)
drawoval (32, 169, 1, 3, 255)

% Car body
drawfilloval (32, 169, 1, 3, 255)
drawfillbox (29, 166, 36, 169, 0)
drawline (0, 158, 1, 158, 255)
drawline (0, 158, 0, 160, 255)
drawline (16, 157, 34, 157, 255)
drawline (45, 157, 57, 157, 255)
drawarc (-131, 160, 190, 20, 350, 0, 255)
drawline (58, 160, 35, 170, 255)
drawarc (47, 198, 36, 50, 210, 220, 255)
drawline (15, 174, 5, 168, 255)
drawline (5, 168, 1, 162, 255)
drawline (1, 162, 2, 158, 255)
drawarc (22, 172, 12, 5, 226, 364, 255)
drawline (2, 158, 4, 158, 255)
drawline (17, 161, 33, 161, 255)

% Colour (Checkered strip)
drawfill (20, 160, 81, 255)

% Checkered strip
drawline (19, 161, 19, 158, 255)
drawline (21, 161, 21, 158, 255)
drawline (23, 161, 23, 158, 255)
drawline (25, 161, 25, 158, 255)
drawline (27, 161, 27, 158, 255)
drawline (29, 161, 29, 158, 255)
drawline (31, 161, 31, 158, 255)
drawline (33, 161, 33, 158, 255)
drawline (18, 159, 33, 159, 255)

% Colour (Purple)
drawfill (25, 165, 34, 255)
drawfill (50, 160, 34, 255)
drawfill (11, 160, 8, 255)
drawfill (11, 158, 34, 255)
drawfill (39, 160, 8, 255)
drawfill (37, 160, 34, 255)
drawfill (1, 159, 7, 255)

var RacecarBeta4 : int := Pic.New (0, 154, 58, 175) % Obtains the image
var PurpleRacecar : int := Pic.Scale (RacecarBeta4, 77, 40) % Makes the image larger
cls

% Blue Car
% Car Wheels
drawoval (11, 160, 6, 6, 255)
drawoval (39, 160, 6, 6, 255)
drawfill (35, 160, 32, 7) % Wheel colour
drawfill (15, 160, 32, 7)
drawfilloval (11, 160, 4, 4, 255)
drawfilloval (39, 160, 4, 4, 255)
drawfilloval (11, 160, 1, 1, 143)
drawfilloval (39, 160, 1, 1, 143)

% Driver and steering wheel
drawoval (24, 171, 3, 4, 8)
drawfilloval (24, 171, 3, 4, 32) % Driver head colour
drawfilloval (26, 171, 2, 1, 255)
drawoval (32, 169, 1, 3, 255)

% Car body
drawfilloval (32, 169, 1, 3, 255)
drawfillbox (29, 166, 36, 169, 0)
drawline (0, 158, 1, 158, 255)
drawline (0, 158, 0, 160, 255)
drawline (16, 157, 34, 157, 255)
drawline (45, 157, 57, 157, 255)
drawarc (-131, 160, 190, 20, 350, 0, 255)
drawline (58, 160, 35, 170, 255)
drawarc (47, 198, 36, 50, 210, 220, 255)
drawline (15, 174, 5, 168, 255)
drawline (5, 168, 1, 162, 255)
drawline (1, 162, 2, 158, 255)
drawarc (22, 172, 12, 5, 226, 364, 255)
drawline (2, 158, 4, 158, 255)
drawline (17, 161, 33, 161, 255)

% Colour (Checkered strip)
drawfill (20, 160, 79, 255)

% Checkered strip
drawline (19, 161, 19, 158, 255)
drawline (21, 161, 21, 158, 255)
drawline (23, 161, 23, 158, 255)
drawline (25, 161, 25, 158, 255)
drawline (27, 161, 27, 158, 255)
drawline (29, 161, 29, 158, 255)
drawline (31, 161, 31, 158, 255)
drawline (33, 161, 33, 158, 255)
drawline (18, 159, 33, 159, 255)

% Colour (Blue)
drawfill (25, 165, 32, 255)
drawfill (50, 160, 32, 255)
drawfill (11, 160, 8, 255)
drawfill (11, 158, 32, 255)
drawfill (39, 160, 8, 255)
drawfill (37, 160, 32, 255)
drawfill (1, 159, 7, 255)

var RacecarBeta5 : int := Pic.New (0, 154, 58, 175) % Obtains the image
var BlueRacecar : int := Pic.Scale (RacecarBeta5, 77, 40) % Makes the image larger
cls

% Turret Trap
drawbox (520, 270, 480, 300, 7)
drawbox (530, 300, 470, 310, 7)
drawfillbox (490, 280, 460, 290, 20)
drawbox (490, 280, 460, 290, 7)
drawfill (519, 301, 24, 7)
drawfill (519, 280, 29, 7)
var Trap : int := Pic.New (530, 271, 460, 310) % Obtains the image

% Bullet
drawbox (410, 280, 380, 290, 7)
drawfill (381, 281, 68, 7) % Bullet colour
var Bullet : int := Pic.New (410, 280, 380, 290) % Obtains the image
cls

% Lasers
drawbox (-1, 271, 461, 309, 7)
drawfill (351, 281, 12, 7) % Laser colour
var RedLaser : int := Pic.New (0, 275, 460, 295) % Obtains the image
cls

drawfill (351, 281, 8, 7) % Laser colour
var GreyLaser : int := Pic.New (0, 275, 460, 295) % Obtains the image
cls

% Sky
drawfillbox (0, 351, 646, 399, 100)
var Sky : int := Pic.New (0, 351, 646, 399) % Obtains the image

% Sky + Sun
drawfilloval (600, 395, 25, 25, 14) % Sun image
drawline (600, 395, 560, 370, 14)
drawline (600, 395, 560, 390, 14)
drawline (600, 395, 630, 370, 14)
drawline (600, 395, 640, 390, 14)
drawline (600, 395, 605, 360, 14)
drawline (600, 395, 580, 360, 14)
var SkySun : int := Pic.New (0, 351, 646, 399) % Obtains the image (Sky + Sun)

% Starting track
var font : int := Font.New ("Times New Roman Bold:20")
Font.Draw ("START", 5, 232, font, black)
var StartBeta : int := Pic.New (5, 210, 200, 250) % Obtains the image ("Start")
var Start : int := Pic.Rotate (StartBeta, 270, -1, -1) % Turns "Start" sideways
cls

% RoadLanes
drawline (0, 150, 646, 150, 7)
drawline (0, 350, 646, 350, 7)
drawline (50, 190, 646, 190, 255)
drawline (50, 230, 646, 230, 255)
drawline (50, 270, 646, 270, 255)
drawline (50, 310, 646, 310, 255)

% Checkered race start
drawline (50, 150, 50, 350, 255)
drawline (100, 150, 100, 350, 255)
drawline (75, 150, 75, 350, 255)
drawline (125, 150, 125, 350, 255)
drawline (50, 170, 125, 170, 255)
drawline (50, 210, 125, 210, 255)
drawline (50, 250, 125, 250, 255)
drawline (50, 290, 125, 290, 255)
drawline (50, 330, 125, 330, 255)

% Colour for checkered race start
drawfill (60, 340, 255, 255)
drawfill (60, 300, 255, 255)
drawfill (60, 260, 255, 255)
drawfill (60, 220, 255, 255)
drawfill (60, 180, 255, 255)
drawfill (80, 320, 255, 255)
drawfill (80, 280, 255, 255)
drawfill (80, 240, 255, 255)
drawfill (80, 200, 255, 255)
drawfill (80, 160, 255, 255)
drawfill (110, 340, 255, 255)
drawfill (110, 300, 255, 255)
drawfill (110, 260, 255, 255)
drawfill (110, 220, 255, 255)
drawfill (110, 180, 255, 255)

% Colour for lanes
drawfill (10, 250, 8, 255)
drawfill (320, 320, 8, 255)
drawfill (320, 300, 8, 255)
drawfill (320, 250, 8, 255)
drawfill (320, 200, 8, 255)
drawfill (320, 180, 8, 255)

var RaceTrackBeta : int := Pic.New (0, 150, 639, 350) % Obtains the image

% Finish line
var EndTrack : int := Pic.Mirror (RaceTrackBeta) % Mirrors image for finish line (without "Start")

% Starting track (continued)
Pic.Draw (RaceTrackBeta, 0, 150, picCopy)
Pic.Draw (Start, 0, 100, picMerge)
var RaceTrack : int := Pic.New (0, 150, 646, 350) % "Start" is now part of the track
cls

% Grass boundary
drawfillbox (0, 117, 646, 149, 119)
var Boundary : int := Pic.New (0, 117, 646, 149) % Obtains the image
cls

% Intermediate track
% Road lanes
drawline (0, 190, 646, 190, 255)
drawline (0, 230, 646, 230, 255)
drawline (0, 270, 646, 270, 255)
drawline (0, 310, 646, 310, 255)
drawline (0, 150, 646, 150, 7)
drawline (0, 350, 646, 350, 7)

% Colour for lanes
drawfill (10, 250, 8, 255)
drawfill (320, 320, 8, 255)
drawfill (320, 300, 8, 255)
drawfill (320, 250, 8, 255)
drawfill (320, 200, 8, 255)
drawfill (320, 180, 8, 255)

var RaceTrack2 : int := Pic.New (0, 150, 645, 350) % The intermediate racetrack
cls

% Box for the stands (filled with people)
Draw.ThickLine (0, 120, 646, 120, 5, 7)
drawfillbox (0, 0, 646, 117, 12)

% Drawing the 3 crowd scenarios. The colour is always random.
% The crowd (Version 1)
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 100, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 610 by 38
    drawfilloval (17 + X, 60, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 20, 18, 20, Rand.Int (0, 255))
end for
var Crowd1 : int := Pic.New (0, 0, 646, 122) % Obtains the image

% The crowd (Version 2)
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 100, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 610 by 38
    drawfilloval (17 + X, 60, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 20, 18, 20, Rand.Int (0, 255))
end for
var Crowd2 : int := Pic.New (0, 0, 646, 122) % Obtains the image

% The crowd (Version 3)
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 100, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 610 by 38
    drawfilloval (17 + X, 60, 18, 20, Rand.Int (0, 255))
end for
for X : 0 .. 650 by 38
    drawfilloval (17 + X, 20, 18, 20, Rand.Int (0, 255))
end for
var Crowd3 : int := Pic.New (0, 0, 646, 122) % Obtains the image

% Image to be displayed during countdown
Pic.Draw (RaceTrack, 0, 150, picCopy)
Pic.Draw (Boundary, 0, 117, picCopy)
Pic.Draw (Crowd1, 0, 0, picCopy)
Pic.Draw (SkySun, 0, 351, picCopy)
Pic.Draw (RedRacecar, 50, 150, picMerge)
Pic.Draw (GreenRacecar, 50, 190, picMerge)
Pic.Draw (OrangeRacecar, 50, 230, picMerge)
Pic.Draw (PurpleRacecar, 50, 270, picMerge)
Pic.Draw (BlueRacecar, 50, 310, picMerge)
var CountdownImage : int := Pic.New (0, 0, 646, 399) % Obtains the image
cls

drawfill (639, 0, 75, 255)
% Last Background (With DeLosSantos as the winner)
drawline (250, 190, 400, 190, 255)
drawline (250, 160, 400, 160, 255)
drawline (250, 155, 400, 155, 255)
drawline (250, 155, 250, 160, 255)
drawline (400, 155, 400, 160, 255)
drawline (250, 190, 250, 160, 255)
drawline (400, 190, 400, 160, 255)
drawline (255, 155, 255, 105, 255)
drawline (255, 105, 125, 105, 255)
drawline (255, 110, 125, 110, 255)
drawline (125, 105, 125, 110, 255)
drawline (255, 140, 218, 140, 255)
drawline (156, 140, 125, 140, 255)
drawline (178, 140, 195, 140, 255)

drawline (125, 140, 125, 110, 255)

drawline (395, 155, 395, 90, 255)
drawline (395, 90, 525, 90, 255)
drawline (395, 95, 525, 95, 255)
drawline (525, 95, 525, 90, 255)

drawline (500, 120, 525, 120, 255)
drawline (479, 120, 465, 120, 255)
drawline (395, 120, 443, 120, 255)

drawline (525, 120, 525, 95, 255)
drawline (520, 90, 520, 20, 255)
drawline (520, 20, 130, 20, 255)
drawline (130, 20, 130, 105, 255)

drawfill (320, 100, 8, 255)
drawfill (320, 180, 8, 255)
drawfill (320, 157, 8, 255)

drawfill (140, 108, 8, 255)

drawfill (500, 92, 8, 255)
drawline (0, 20, 649, 20, 255)
drawfill (20, 10, 2, 255)

%----number 1
var aaa := Font.New ("Times New Roman Bold:60")
Font.Draw ("1", 310, 90, aaa, black)

%----number 2
var bbb := Font.New ("Times New Roman Bold:60")
Font.Draw ("2", 180, 40, bbb, black)

%----number 3
var ccc := Font.New ("Times New Roman Bold:60")
Font.Draw ("3", 440, 30, ccc, black)

%--- De LA Santos
%drawfilloval (320, 340, 25, 25, 90)
%drawoval (320, 340, 25, 25, 255)

drawfillbox (296, 317, 345, 360, 90)
drawbox (296, 317, 345, 360, 255)

drawline (322, 365, 322, 359, 8)
drawline (324, 365, 324, 359, 8)
drawline (326, 365, 326, 359, 8)
drawline (328, 365, 328, 359, 8)
drawline (330, 365, 330, 359, 8)
drawline (332, 365, 332, 359, 8)
drawline (334, 365, 334, 359, 8)
drawline (336, 365, 336, 359, 8)
drawline (338, 365, 338, 359, 8)
drawline (340, 365, 340, 359, 8)
drawline (342, 365, 342, 359, 8)
drawline (344, 365, 344, 359, 8)

drawline (320, 365, 320, 359, 8)
drawline (318, 365, 318, 359, 8)
drawline (316, 365, 316, 359, 8)
drawline (314, 365, 314, 359, 8)
drawline (312, 365, 312, 359, 8)
drawline (310, 365, 310, 359, 8)
drawline (308, 365, 308, 359, 8)
drawline (306, 365, 306, 359, 8)
drawline (304, 365, 304, 359, 8)
drawline (302, 365, 302, 359, 8)
drawline (300, 365, 300, 359, 8)
drawline (298, 365, 298, 359, 8)
drawline (296, 365, 296, 359, 8)

drawoval (310, 345, 5, 3, 255)
drawoval (330, 345, 5, 3, 255)

drawfilloval (330, 345, 2, 2, 10)
drawoval (330, 345, 2, 2, 255)
drawfilloval (330, 345, 1, 1, 255)
drawoval (330, 345, 1, 1, 255)

drawfilloval (310, 345, 2, 2, 10)
drawoval (310, 345, 2, 2, 255)
drawfilloval (330, 345, 1, 1, 255)
drawoval (310, 345, 1, 1, 255)

drawline (320, 344, 325, 330, 255)
drawline (325, 330, 319, 330, 255)

drawline (338, 345, 345, 345, 255)
drawline (338, 350, 338, 340, 255)
drawline (338, 350, 324, 350, 255)
drawline (324, 350, 324, 340, 255)
drawline (324, 340, 338, 340, 255)
drawline (324, 345, 317, 345, 255)
drawline (317, 340, 317, 350, 255)
drawline (317, 350, 303, 350, 255)
drawline (303, 350, 303, 340, 255)
drawline (303, 340, 317, 340, 255)
drawline (303, 345, 297, 345, 255)

drawarc (322, 328, 13, 5, 180, 370, 255)

drawline (310, 317, 310, 306, 255)
drawline (330, 317, 330, 306, 255)

drawarc (320, 314, 15, 10, 198, 335, 255)
drawarc (299, 301, 10, 12, 48, 171, 255)
drawarc (342, 302, 10, 12, 8, 151, 255)
drawline (351, 308, 380, 250, 255)
drawline (343, 285, 343, 250, 255)
drawline (343, 285, 365, 245, 255)
drawline (365, 245, 380, 250, 255)
drawline (376, 248, 379, 242, 255)
drawline (369, 246, 373, 238, 255)
drawfilloval (379, 235, 7, 6, 90)
drawoval (379, 235, 7, 6, 255)
drawfill (375, 245, 90, 255)

drawline (300, 285, 300, 250, 255)
drawline (300, 285, 280, 248, 255)
drawline (289, 305, 265, 249, 255)
drawline (265, 249, 280, 248, 255)
drawline (268, 248, 265, 241, 255)
drawline (276, 248, 272, 240, 255)
drawfilloval (268, 235, 7, 6, 90)
drawoval (268, 235, 7, 6, 255)
drawfill (270, 245, 90, 255)

drawline (300, 250, 343, 250, 255)

drawline (300, 250, 290, 190, 255)
drawline (290, 190, 310, 190, 255)

drawline (343, 250, 353, 190, 255)
drawline (353, 190, 333, 190, 255)

drawline (310, 190, 322, 220, 255)

drawline (333, 190, 322, 220, 255)

drawline (310, 190, 310, 175, 255)
drawline (310, 175, 275, 175, 255)
drawarc (289, 172, 15, 18, 86, 177, 255)

drawline (333, 190, 333, 175, 255)
drawline (333, 175, 370, 175, 255)

drawarc (356, 172, 15, 18, 10, 100, 255)

drawfill (320, 270, 9, 255)
drawfill (320, 220, 9, 255)
drawfill (300, 180, 255, 255)
drawfill (360, 180, 255, 255)

% yellow guy

drawfilloval (185, 290, 25, 25, 14)
drawoval (185, 290, 25, 25, 255)

drawoval (185, 290, 25, 10, 255)

drawfilloval (185, 290, 25, 10, 255)
drawline (175, 266, 175, 257, 255)
drawline (195, 266, 195, 257, 255)

drawarc (185, 263, 15, 10, 198, 335, 255)
drawarc (165, 250, 10, 12, 48, 171, 255)
drawarc (206, 250, 10, 12, 8, 151, 255)

drawline (215, 254, 240, 195, 255)
drawline (203, 230, 220, 195, 255)
drawline (240, 195, 220, 195, 255)

drawline (203, 230, 203, 190, 255)

drawline (165, 230, 150, 195, 255)
drawline (154, 252, 130, 195, 255)
drawline (130, 195, 150, 195, 255)

drawline (165, 230, 165, 190, 255)
drawline (165, 190, 203, 190, 255)

drawline (165, 190, 155, 130, 255)
drawline (155, 130, 175, 130, 255)

drawline (175, 130, 185, 160, 255)
drawline (185, 160, 200, 130, 255)
drawline (200, 130, 220, 130, 255)
drawline (220, 130, 203, 190, 255)


drawline (175, 130, 175, 115, 255)
drawline (175, 115, 140, 115, 255)


drawarc (155, 112, 15, 18, 86, 177, 255)

drawline (200, 130, 200, 115, 255)
drawline (200, 115, 238, 115, 255)


drawarc (223, 112, 15, 18, 10, 100, 255)

drawline (137, 195, 135, 190, 255)
drawline (145, 195, 143, 189, 255)
drawfilloval (138, 184, 7, 6, 90)
drawoval (138, 184, 7, 6, 255)
drawfill (138, 192, 90, 255)

drawline (225, 195, 227, 190, 255)
drawline (235, 195, 237, 190, 255)
drawfilloval (232, 185, 7, 6, 90)
drawoval (232, 185, 7, 6, 255)
drawfill (232,193,90,255)

drawfill (170, 200, 14, 255)
drawfill (170, 180, 14, 255)

drawfill (180, 260, 90, 255)

drawfill (160, 120, 255, 255)
drawfill (210, 120, 255, 255)

%
drawfill (320, 310, 90, 255)

% Green guy
drawfilloval (470, 270, 25, 25, 10)
drawoval (470, 270, 25, 25, 255)

drawoval (470, 270, 25, 10, 255)
drawfilloval (470, 270, 25, 10, 255)

drawline (460, 246, 460, 236, 255)
drawline (480, 246, 480, 236, 255)

drawarc (471, 243, 15, 10, 198, 335, 255)
drawarc (451, 230, 10, 12, 48, 171, 255)
drawarc (492, 230, 10, 12, 8, 151, 255)

drawline (502, 234, 527, 175, 255)
drawline (488, 210, 505, 175, 255)
drawline (505, 175, 527, 175, 255)

drawline (488, 210, 488, 170, 255)
drawline (452, 210, 452, 170, 255)
drawline (488, 170, 452, 170, 255)

drawline (452, 210, 440, 175, 255)
drawline (443, 236, 419, 175, 255)

drawline (440, 175, 419, 175, 255)

drawline (452, 170, 442, 110, 255)
drawline (442, 110, 462, 110, 255)
drawline (462, 110, 472, 140, 255)

drawline (462, 110, 462, 95, 255)
drawline (462, 95, 427, 95, 255)

drawarc (442, 92, 15, 18, 86, 177, 255)

drawline (472, 140, 482, 110, 255)
drawline (482, 110, 482, 95, 255)
drawline (482, 95, 520, 95, 255)

drawarc (505, 92, 15, 18, 10, 100, 255)

drawline (510, 175, 515, 168, 255)
drawline (518, 175, 522, 171, 255)
drawfilloval (523, 165, 7, 6, 90)
drawoval (523, 165, 7, 6, 255)

drawline (482, 110, 502, 110, 255)
drawline (502, 110, 488, 170, 255)

drawline (425, 175, 424, 170, 255)
drawline (435, 175, 432, 167, 255)

drawfilloval (425, 164, 7, 6, 90)
drawoval (425, 164, 7, 6, 255)

drawfill (480, 160, 46, 255)
drawfill (480, 180, 46, 255)
drawfill (470, 240, 90, 255)
drawfill (450, 100, 255, 255)
drawfill (490, 100, 255, 255)
drawfill (470, 100, 8, 255)
drawfill (410, 100, 8, 255)
drawfill (520, 110, 8, 255)
drawfill (515, 172, 90, 255)
drawfill (430, 173, 90, 255)

%
drawfill (140, 130, 8, 255)
Font.Draw ("Mr.DeLosSantos", 40, 200, ccc, black)
Font.Draw ("Wins!", 220, 145, ccc, black)
var VictoryScene : int := Pic.New (0, 0, 646, 399) % Obtains the image
cls

% All ANIMATIONS below-----------------------------------
% Countdown
process OfficialCountdown
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    View.Update
    fork DoMusic % Sound effect
    delay (2300)
    fork Countdown % Sound effect
    var font2 := Font.New ("Lucida Console:70:bold")
    delay (2300)
    % "10"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("10", 270, 215, font2, 239)
    View.Update
    delay (1200)
    cls
    % "9"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("9", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "8"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("8", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "7"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("7", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "6"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("6", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "5"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("5", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "4"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("4", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "3"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("3", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "2"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("2", 270, 215, font2, 239)
    View.Update
    delay (1000)
    cls
    % "1"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("1", 270, 215, font2, 239)
    View.Update
    delay (950)
    cls
    % "READY?"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("READY?", 270, 215, font2, 239)
    View.Update
    delay (270)
    cls
    % "GO!"
    Pic.Draw (CountdownImage, 0, 0, picCopy)
    Font.Draw ("GO!", 270, 215, font2, 239)
    View.Update
    delay (350)
    cls
    Pic.Draw (Boundary, 0, 117, picCopy) % Displays the image
    Music.PlayFileStop
end OfficialCountdown

% Moving sky (left to right)
process SkyMoving
    for decreasing i : 0 .. -332
	Pic.Draw (SkySun, 0 + i, 351, picCopy) % Image of (Sky + Sun) moving
	Pic.Draw (Sky, 646 + i, 351, picCopy) % Image of (Sky) taking its place
	View.UpdateArea (0, 351, 646, 399)
	delay (200)
    end for
end SkyMoving

% Moving crowd (left to right)
process CrowdMoving
    for Y : 0 .. 8
	for decreasing i : 0 .. -1930 by 10 % Looping the 3 different crowd images
	    Pic.Draw (Crowd1, i, 0, picCopy)
	    Pic.Draw (Crowd2, 646 + i, 0, picCopy)
	    Pic.Draw (Crowd3, 1292 + i, 0, picCopy)
	    Pic.Draw (Crowd1, 1938 + i, 0, picCopy)
	    View.UpdateArea (0, 0, 646, 130)
	    delay (37)
	end for
    end for
    Music.PlayFileStop
end CrowdMoving

% Moving racetrack (left to right)
process TrackMoving
    for decreasing i : 0 .. -640 by 10
	Pic.Draw (RaceTrack, i, 150, picCopy) % Getting rid of the starting track to place the intermediate track
	Pic.Draw (RaceTrack2, 646 + i, 150, picCopy)
	Pic.Draw (RedRacecar, 50, 150, picMerge) % Keeps the cars on the screen while track is moved away
	Pic.Draw (GreenRacecar, 50, 190, picMerge)
	Pic.Draw (OrangeRacecar, 50, 230, picMerge)
	Pic.Draw (PurpleRacecar, 50, 270, picMerge)
	Pic.Draw (BlueRacecar, 50, 310, picMerge)
	View.UpdateArea (0, 150, 646, 350)
	delay (40)
    end for
end TrackMoving

% Moving finish line (left to right)[ending race]
process FinishLine
    for decreasing i : 0 .. -640 by 10
	Pic.Draw (EndTrack, 646 + i, 150, picCopy)
	View.UpdateArea (300, 150, 646, 350)
	delay (50)
    end for
end FinishLine

% Racecars moving (Part 1)[Forwards]
process RacecarsMoving1
    for i : 0 .. 275
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (RedRacecar, 50 + i div 5, 150, picMerge) % Each [i div(num)] dictates its speed
	Pic.Draw (GreenRacecar, 50 + i div 3, 190, picMerge)
	Pic.Draw (OrangeRacecar, 50 + i div 4, 230, picMerge)
	Pic.Draw (PurpleRacecar, 50 + i div 2, 270, picMerge)
	Pic.Draw (BlueRacecar, 50 + i div 6, 310, picMerge)
	View.UpdateArea (50, 150, 270, 350)
	delay (50)
    end for
end RacecarsMoving1

% Racecars moving (Part 2)[Forwards]
process RacecarsMoving2
    for i : 0 .. 280
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (RedRacecar, 105 + i div 5, 150, picMerge) % Each [i div(num)] dictates its speed
	Pic.Draw (GreenRacecar, 142 + i div 3, 190, picMerge)
	Pic.Draw (OrangeRacecar, 118 + i div 4, 230, picMerge)
	Pic.Draw (BlueRacecar, 96 + i div 6, 310, picMerge)
	View.UpdateArea (95, 150, 450, 350)
	delay (50)
    end for
end RacecarsMoving2

% Racecars moving (Part 3)[Forwards]
process RacecarsMoving3
    for i : 0 .. 280
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (GreenRacecar, 235 + i div 3, 190, picMerge) % Each [i div(num)] dictates its speed
	Pic.Draw (OrangeRacecar, 188 + i div 4, 230, picMerge)
	Pic.Draw (BlueRacecar, 143 + i div 6, 310, picMerge)
	View.UpdateArea (95, 150, 410, 350)
	delay (50)
    end for
end RacecarsMoving3

% Racecars moving (Part 4)[Backwards]
process RacecarsMoving4
    for decreasing i : 0 .. -848 by 8
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (GreenRacecar, 328 + i div 3, 190, picMerge) % Each [i div(num)] dictates its speed
	Pic.Draw (OrangeRacecar, 258 + i div 4, 230, picMerge)
	Pic.Draw (BlueRacecar, 190 + i div 6, 310, picMerge)
	View.UpdateArea (0, 150, 450 + i div 6, 350)
	delay (50)
    end for
end RacecarsMoving4

% Racecars moving (Part 5)[Forwards]
process RacecarsMoving5
    fork Incredible
    for i : 0 .. 472 by 8
	Pic.Draw (EndTrack, 6, 150, picCopy)
	Pic.Draw (BlueRacecar, 43 + i, 310, picMerge)
	View.UpdateArea (0, 0, 646, 350)
	delay (30)
    end for
end RacecarsMoving5

% Explosion for Turret Trap (bullet)
process TurretTrapExplosion
    for i : 0 .. 20
	Pic.Draw (Explosion1, 185, 260, picMerge) % Alternating images for explosion effect
	delay (10)
	Pic.Draw (Explosion2, 185, 260, picMerge)
	delay (10)
	View.UpdateArea (180, 260, 250, 320)
    end for
end TurretTrapExplosion

% Activate Turret Trap (bullet)
process TurretTrapBullet
    fork Hydrolic % Sound effect
    delay (500)
    for i : 0 .. 40
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (Trap, 460, 231 + i, picMerge) % Raising trap
	View.UpdateArea (530, 271, 460, 309)
	delay (40)
    end for
    fork TurretFire % Sound effect
    delay (1200)
    for decreasing i : 0 .. -250 by 10
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (Bullet, 460 + i, 280, picMerge) % Firing bullet
	View.UpdateArea (260, 271, 460, 309)
	delay (10)
    end for
    fork Explosion % Sound effect
    for decreasing i : 0 .. -40
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (Trap, 460, 271 + i, picMerge) % Hiding trap
	View.UpdateArea (530, 271, 460, 309)
	delay (40)
    end for
    delay (1000)
    fork FirstHit % Sound effect
end TurretTrapBullet


% Activate Turret Trap (laser)
process TurretTrapLaser
    fork Hydrolic % Sound effect
    delay (500)
    for i : 0 .. 40
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (Trap, 460, 111 + i, picMerge) % Raising trap
	View.UpdateArea (530, 151, 460, 190)
	Pic.Draw (Boundary, 0, 117, picCopy) % Stops the trap from appearing in the boundary
	delay (40)
    end for
    fork LaserFire % Sound effect
    delay (2200)
    for i : 0 .. 18
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (RedLaser, 0, 155, picCopy) % Firing laser
	Pic.Draw (Trap, 460, 151, picMerge)
	View.UpdateArea (0, 151, 460, 190)
	delay (40)
	Pic.Draw (Trap, 460, 151, picMerge)
	Pic.Draw (GreyLaser, 0, 155, picCopy) % Alternating colour of laser for flicker effect
	View.UpdateArea (0, 151, 460, 190)
	delay (40)
    end for
    fork RacecarsMoving3
    for decreasing i : 0 .. -40
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (Trap, 460, 151 + i, picMerge) % Hiding trap
	Pic.Draw (Boundary, 0, 117, picCopy) % Stops the trap from appearing in the boundary
	View.UpdateArea (530, 151, 460, 190)
	delay (40)
    end for
    delay (800)
    fork Ouch % Sound effect
end TurretTrapLaser

% Helicopter
process HelicopterAttack
    fork Helicopter % Sound effect
    delay (4000)
    fork DevastatingAttack % Sound effect
    delay (3500)
    for decreasing i : 0 .. -590
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 646 + i div 2, 300, picMerge) % Helicopter comes in from the right (right to left)
	View.UpdateArea (350, 270, 646, 399)
	delay (10)
    end for
    fork MachineGun % Sound effect
    for decreasing i : 0 .. -180
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 351, 300 + i div 3, picMerge) % Helicopter descends
	Pic.Draw (GreenRacecar, 46, 190, picMerge)
	Pic.Draw (OrangeRacecar, 46, 230, picMerge)
	Pic.Draw (BlueRacecar, 49, 310, picMerge)
	View.UpdateArea (350, 230, 646, 399)
	delay (25)
    end for
    for decreasing i : 0 .. -400 by 40 % Helicopter firing at the Green racecar
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 351, 240, picMerge)
	Pic.Draw (GreenRacecar, 46, 190, picMerge)
	Pic.Draw (OrangeRacecar, 46, 230, picMerge)
	Pic.Draw (BlueRacecar, 49, 310, picMerge)
	delay (10)
	Pic.Draw (Explosion1, 370 + i, 180, picMerge) % Alternating explosion images
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
	Pic.Draw (Explosion2, 370 + i, 180, picMerge)
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
    end for
    for decreasing i : 0 .. -320 by 40 % Helicopter firing at the Orange racecar
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 351, 240, picMerge)
	Pic.Draw (OrangeRacecar, 46, 230, picMerge)
	Pic.Draw (BlueRacecar, 49, 310, picMerge)
	delay (10)
	Pic.Draw (Explosion1, 290 + i, 210, picMerge) % Alternating explosion images
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
	Pic.Draw (Explosion2, 290 + i, 210, picMerge)
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
    end for
    for decreasing i : 0 .. -160 by 40 % Helicopter firing at the Blue racecar
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 351, 240, picMerge)
	Pic.Draw (BlueRacecar, 49, 310, picMerge)
	delay (10)
	Pic.Draw (Explosion1, 300 + i, 290, picMerge) % Alternating explosion images
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
	Pic.Draw (Explosion2, 300 + i, 290, picMerge)
	delay (100)
	View.UpdateArea (0, 180, 646, 399)
    end for
    fork Ammo % Sound effect
    for decreasing i : 0 .. -190
	Pic.Draw (RaceTrack2, 0, 150, picCopy)
	Pic.Draw (HelicopterDrawing, 351 + i * -2, 240 + i * -2 div 7, picMerge) % Helicopter retreating (diagonal right)
	Pic.Draw (BlueRacecar, 49, 310, picMerge)
	View.UpdateArea (0, 230, 646, 399)
	delay (30)
    end for
end HelicopterAttack

% Ending scene
process EndingScene
    Pic.Draw (VictoryScene, 0, 0, picCopy)
    View.Update
    fork Victory % Sound effect
    delay (2000)
    fork Congratulations % Sound effect
    delay (7000)
    Music.PlayFileStop
end EndingScene

% All PROGRAM PARTS below-----------------------------------
fork OfficialCountdown
delay (16900)
fork Race % Sound effect
fork CrowdMoving
fork TrackMoving
fork SkyMoving
delay (2475)
fork RacecarsMoving1
delay (10000)
fork TurretTrapBullet % First Turret Trap activates, destroys purple racecar
delay (3500)
fork TurretTrapExplosion % Goes along with "TurretTrapBullet"
fork RacecarsMoving2
delay (8500)
fork TurretTrapLaser % First Turret Trap activates, destroys red racecar
delay (12000)
fork HelicopterAttack % Helicopter attacks, destroys green and orange racecar
delay (8500)
fork RacecarsMoving4 % Racecars move back at the sight of the helicopter
delay (19350)
fork FinishLine
delay (3500)
fork RacecarsMoving5
delay (2300)
fork EndingScene
