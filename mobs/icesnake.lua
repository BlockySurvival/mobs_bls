mobs:register_mob("bls_mobs:icesnake", {
    type = "monster",
    hp_max = 27,
    hp_min = 17,
    collisionbox = {-0.7, 0, -0.7, 0.7, 0.50, 0.7},
    visual = "mesh",
    mesh = "icesnake.x",
    textures = {{"icesnake.png"}},
    visual_size = {x=7, y=7},
    makes_footstep_sound = false,
    view_range = 10,
    rotate = 270,
    fear_height = 3,
    walk_velocity = 1.2,
    run_velocity = 3,
      sounds = {
        random = "icesnake",
    },
    damage = 4,
    reach = 2,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 1,
        max = 2},
        {name = "bls_mobs:frosted_amphibian_heart",
        chance = 2,
        min = 1,
        max = 1},
        {name = "bls_mobs:little_ice_tooth",
        chance = 2,
        min = 0,
        max = 4},
        {name = "bls_mobs:amphibian_ribs",
        chance = 2,
        min = 1,
        max = 3},
    },
    armor = 70,
    drawtype = "front",
    water_damage = 0,
    lava_damage = 20,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="bls_mobs_blood.png",
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 15,
        speed_run = 25,
        stand_start = 170,
        stand_end = 220,
        walk_start = 1,
        walk_end = 60,
        run_start = 80,
        run_end = 120,
        punch_start = 130,
        punch_end = 160,
    },
    do_custom = function(self)
        bls_mobs.putting_ability(self, "default:ice", self.run_velocity)
    end,
})


mobs:spawn_specific(
    "bls_mobs:icesnake",
    {"caverealms:thin_ice", "default:ice"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    2, -- aoc
    -25000, -- min_height
    -700 -- max_height
)
