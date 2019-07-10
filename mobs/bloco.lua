mobs:register_mob("bls_mobs:bloco", {
    type = "monster",
    hp_max = 24,
    hp_min = 14,
    collisionbox = {-0.56, -0.2, -0.56, 0.56, 1.2, 0.56},
    visual = "mesh",
    mesh = "bloco.x",
    textures = {{"bloco.png"}},
    visual_size = {x=4, y=4},
    makes_footstep_sound = true,
    view_range = 8,
    fear_height = 4,
    walk_velocity = 0.6,
    run_velocity = 2.5,
    rotate = 270,
    sounds = {
        random = "bloco",
    },
    damage = 4,
    reach = 2,
    jump = true,
    drops = {
		{name = "bls_mobs:life_energy",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stone",
		chance = 1,
		min = 2,
		max = 3,},
		{name = "bls_mobs:bloco_skin",
		chance = 3,
		min = 1,
		max = 2,},
    },
    armor = 40,
    drawtype = "front",
    water_damage = 3,
    lava_damage = 1,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=0,
    blood_texture="stone_blood.png",
    immune_to={{'default:sword_stone', -2},{'default:stone', -2}, {'default:cobble', -2}, {'default:axe_stone', -2}, {'default:shovel_stone', -2}, {'default:pick_stone', -2}},
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 20,
        stand_start = 90,
        stand_end = 110,
        walk_start = 1,
        walk_end = 80,
        run_start = 120,
        run_end = 160,
        punch_start = 170,
        punch_end = 190,
    }
})

mobs:spawn_specific(
    "bls_mobs:bloco", -- name
    {"caverealms:stone_with_moss"}, -- nodes
    {"air"}, -- neighbors
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, -- chance
    3, -- aoc
    -7000, -- min_height
    -700 -- max_height
)