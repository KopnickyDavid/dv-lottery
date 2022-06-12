Config = {}
Config.framework = 'qb' -- esx/qb
Config.distance = 2 --distance to show markers/drawtext
Config.usekey = 38  -- key to open stashes/bossmenu  default E you can change to other https://docs.fivem.net/docs/game-references/controls/
Config.load = 'QBCore:Client:OnPlayerLoaded' -- 'QBCore:Client:OnPlayerLoaded'/'esx:playerLoaded'
Config.markers = {
    type = 2, --type of marker default arrow you can change to other https://docs.fivem.net/docs/game-references/markers/
    red =225, -- red colour scale 0-225
    green = 0,-- green colour scale 0-225
    blue = 0, -- blue colour scale 0-225
    scalex =  0.25, -- scale of the marker for x
    scaley = 0.25,  -- scale of the marker for y
    scalez = 0.25   -- scale of marker height
}
Config.shop = {
    vector3(25.75, -1346.69, 29.5),
    vector3(-48.03, -1757.48, 29.42),
    vector3(373.95, 326.75, 103.57),
    vector3(-1487.0, -379.32, 40.16),
    vector3(-1222.74, -907.11, 12.33),
    vector3(-707.41, -913.25, 19.22),
    vector3(1135.61, -981.95, 46.42),
    vector3(1163.56, -323.34, 69.21)
}
Config.blip = {
    spirit = 431,
    scale = 0.5,
    colour = 25,
    name = "Lottery shop",
}
