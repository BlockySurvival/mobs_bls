mobs:register_mob("bls_mobs:signosigno", {
    type = "monster",
    hp_max = 20,
    hp_min = 8,
    collisionbox = {-0.2, 0.00, -0.2, 0.2, 1.6, 0.2},
    visual = "mesh",
    mesh = "signosigno.x",
    textures = {{"signosigno.png"}, {"signosigno2.png"}},
    visual_size = {x=6, y=6},
    makes_footstep_sound = false,
    view_range = 15,
    walk_velocity = 1.5,
    fear_height = 4,
    run_velocity = 2.5,
    rotate = 270,
    damage = 4,
    reach = 1.5,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 1,
        max = 2,},
    },
    armor = 40,
    drawtype = "front",
    water_damage = 1,
    lava_damage = 2,
    light_damage = 1,
    group_attack=true,
    attack_animals=true,
    knock_back=4,
    blood_texture="morparticle.png",
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 20,
        stand_start = 20,
        stand_end = 80,
        walk_start = 100,
        walk_end = 140,
        run_start = 200,
        run_end = 220,
        punch_start = 160,
        punch_end = 190,
    }
})

mobs:spawn_specific(
    "bls_mobs:signosigno",
    {"nether:rack"},
    {"nether:fumes"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    2, -- aoc
    -31000, -- min_height
    -25000 -- max_height
)
