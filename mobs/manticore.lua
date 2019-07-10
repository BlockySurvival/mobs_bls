mobs:register_mob("bls_mobs:manticore", {
    type = "monster",
    hp_max = 55,
    hp_min = 34,
    collisionbox = {-0.8, -0.85, -0.8, 0.8, 1.9, 0.8},
    visual = "mesh",
    mesh = "manticore.x",
    textures = {{"manticore.png"}},
    visual_size = {x=4, y=4},
    makes_footstep_sound = true,
    view_range = 35,
    fear_height = 4,
    walk_velocity = 2,
    run_velocity = 4,
    sounds = {
        random = "manticore",
    },
    damage = 6,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 3,
        max = 4,},
        {name = "bls_mobs:manticore_spine",
        chance = 3,
        min = 2,
        max = 5,},
        {name = "bls_mobs:manticore_fur",
        chance = 3,
        min = 1,
        max = 2,},
    },
    armor = 60,
    drawtype = "front",
    water_damage = 2,
    rotate = 270,
    lava_damage = 5,
    light_damage = 0,
    on_rightclick = nil,
    attack_type = "dogshoot",
    dogshoot_switch = true,
    arrow = "bls_mobs:spine",
    shoot_interval = 2,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="bls_mobs_blood.png",
    stepheight=1.1,
    shoot_offset = 1,
    animation = {
        speed_normal = 25,
        speed_run = 25,
        stand_start = 1,
        stand_end = 40,
        walk_start = 240,
        walk_end = 280,
        run_start = 91,
        run_end = 108,
        punch_start = 110,
        punch_end = 143,
        shoot_start =180,
        shoot_end=230,
    }
})


mobs:spawn_specific(
    "bls_mobs:manticore",
    {"caverealms:stone_with_salt"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    5000000/bls_mobs.multimobs, --chance
    1, -- aoc
    -25000, -- min_height
    -7000 -- max_height
)
