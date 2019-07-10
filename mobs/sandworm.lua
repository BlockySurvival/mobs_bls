mobs:register_mob("bls_mobs:sandworm", {
    type = "monster",
    hp_max = 40,
    hp_min = 25,
    collisionbox = {-0.4, -0.2, -0.4, 0.4, 1.90, 0.4},
    visual = "mesh",
    mesh = "sandworm.x",
    textures = {{"sandworm.png"}},
    visual_size = {x=4, y=4},
    makes_footstep_sound = false,
    view_range = 17,
    rotate = 270,
    reach = 2,
    fear_height = 3,
    walk_velocity = 2,
    run_velocity = 2,
    damage = 6,
    sounds = {
        random = "sandworm",
        distance = 40,
    },
    jump = false,
    drops = {
        {name = "bls_mobs:worm_flesh",
        chance = 2,
        min = 1,
        max = 3,},
        {name = "bls_mobs:sandworm_skin",
        chance = 2,
        min = 1,
        max = 3,},
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 2,
        max = 3,},
    },
    armor = 60,
    drawtype = "front",
    water_damage = 5,
    lava_damage = 10,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="bls_mobs_blood_blue.png",
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 25,
        speed_run = 40,
        stand_start = 1,
        stand_end = 100,
        walk_start = 110,
        walk_end = 140,
        run_start = 110,
        run_end = 140,
        punch_start = 150,
        punch_end = 180,
    },
    do_custom = function(self)
        bls_mobs.digging_attack(self, nil, self.run_velocity, {x=0, y=3, z=0})
    end,
})


mobs:spawn_specific(
    "bls_mobs:sandworm",
    {"default:desert_sand", "caverealms:coal_dust"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    1000000/bls_mobs.multimobs, --chance
    1, -- aoc
    -25000, -- min_height
    -7000 -- max_height
)