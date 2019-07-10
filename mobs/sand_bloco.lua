mobs:register_mob("bls_mobs:sand_bloco", {
    type = "monster",
    hp_max = 24,
    hp_min = 17,
    collisionbox = {-0.5, -0.2, -0.5, 0.5, 1.3, 0.5},
    visual = "mesh",
    mesh = "sand_bloco.x",
    textures = {{"sand_bloco.png"}},
    visual_size = {x=4, y=4},
    makes_footstep_sound = true,
    view_range = 14,
    fear_height = 4,
    walk_velocity = 0.8,
    run_velocity = 2,
    rotate = 270,
    sounds = {
        random = "bloco",
    },
    damage = 4,
    reach = 1.5,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 1,
        max = 1,},
        {name = "default:sandstone",
        chance = 1,
        min = 2,
        max = 3,},
        {name = "bls_mobs:sand_bloco_skin",
        chance = 2,
        min = 1,
        max = 3,},
    },
    armor = 40,
    drawtype = "front",
    water_damage = 10,
    lava_damage = 1,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="stone_blood.png",
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 20,
        stand_start = 10,
        stand_end = 90,
        walk_start = 140,
        walk_end = 180,
        run_start = 190,
        run_end = 200,
        punch_start = 100,
        punch_end = 130,
    }
})


mobs:spawn_specific(
    "bls_mobs:sand_bloco",
    {"default:desert_sand", "caverealms:coal_dust"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    1, -- aoc
    -25000, -- min_height
    -7000 -- max_height
)
