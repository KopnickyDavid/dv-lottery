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
            vector3(-162.29, -42.02, 53.01)
}
Config.blip = {
    spirit = 431,
    scale = 1.0,
    colour = 25,
    name = "Lottery shop",
}