mobs:register_mob("bls_mobs:daddy_long_legs", {
    type = "monster",
    hp_max = 22,
    hp_min = 16,
    collisionbox = {-0.4, 0.00, -0.4, 0.4, 0.6, 0.4},
    visual = "mesh",
    mesh = "daddy_long_legs.x",
    textures = {{"daddy_long_legs.png"}},
    visual_size = {x=8, y=8},
    makes_footstep_sound = true,
    view_range = 12,
    walk_velocity = 0.7,
    fear_height = 4,
    run_velocity = 3.3,
      rotate = 90,
      sounds = {
        random = "daddy",
    },
    damage = 3,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 1,
        max = 2,},
        {name = "bls_mobs:spider_leg",
        chance = 3,
        min = 1,
        max = 8,},
        {name = "bls_mobs:spider_meat",
        chance = 4,
        min = 1,
        max = 2,},
    },
    armor = 70,
    drawtype = "front",
    water_damage = 1,
    lava_damage = 7,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="bls_mobs_blood_blue.png",
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 25,
        stand_start = 1,
        stand_end = 60,
        walk_start = 80,
        walk_end = 120,
        run_start = 80,
        run_end = 120,
        punch_start = 140,
        punch_end = 165,
    }
})


mobs:spawn_specific(
    "bls_mobs:daddy_long_legs",
    {"caverealms:stone_with_lichen" },
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    3, -- aoc
    -7000, -- min_height
    -700 -- max_height
)