mobs:register_mob("bls_mobs:echidna", {
    type = "monster",
    hp_max = 240,
    hp_min = 240,
    collisionbox = {-0.6, 0.00, -0.6, 0.6, 2, 0.6},
    visual = "mesh",
    mesh = "echidna.x",
    textures = {{"echidnapes.png"}},
    visual_size = {x=6, y=6},
    makes_footstep_sound = true,
    view_range = 30,
    rotate = 270,
    lifetimer = 500,
    fear_height = 4,
    walk_velocity = 2,
    run_velocity = 3.5,
    damage = 12,
    jump = true,
    sounds = {
        random = "echidna",
    },
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 6,
        max = 7,},
        {name = "bls_mobs:snake_scute",
        chance = 1,
        min = 1,
        max = 1,},
    },
    armor = 40,
    drawtype = "front",
    water_damage = 0,
    floats = 1,
    lava_damage = 0,
    light_damage = 0,
    blood_texture="bls_mobs_blood.png",
    blood_amount=10,
    stepheight=1.1,
    knock_back=0,
    jump_height=8,
    on_rightclick = nil,
    attack_type = "dogshoot",
    dogshoot_switch = true,
    arrow = "bls_mobs:super_gas";
    reach = 5,
    shoot_interval=3,
    animation = {
        speed_normal = 15,
        speed_run = 25,
        stand_start = 60,
        stand_end = 140,
        walk_start = 1,
        walk_end = 40,
        run_start = 1,
        run_end = 40,
        punch_start = 160,
        punch_end = 190,
        shoot_start = 200,
        shoot_end = 240,
    }
})


mobs:spawn_specific(
    "bls_mobs:echidna",
    {"caverealms:glow_obsidian", "caverealms:glow_obsidian_2"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    2000000/bls_mobs.multimobs, --chance
    1, -- aoc
    -25000, -- min_height
    -7000 -- max_height
)
