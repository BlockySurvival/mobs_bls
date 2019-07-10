mobs:register_mob("bls_mobs:stone_eater", {
    type = "monster",
    hp_max = 27,
    hp_min = 19,
    collisionbox = {-0.3, -0.05, -0.3, 0.3, 0.65, 0.3},
    visual = "mesh",
    mesh = "stone_eater.x",
    textures = {{"stone_eater.png"}},
    visual_size = {x=10, y=10},
    makes_footstep_sound = false,
    view_range = 16,
    rotate = 270,
    fear_height = 4,
    jump = false,
    jump_height =0,
    walk_velocity = 1,
    run_velocity = 1.5,
    damage = 5,
    reach = 1.5,
    drops = {
        {name = "default:stone",
		chance = 2,
		min = 1,
		max = 3,},
		{name = "bls_mobs:life_energy",
		chance = 1,
		min = 2,
		max = 3,},
		{name = "bls_mobs:stoneater_mandible",
		chance = 2,
		min = 1,
		max = 4,},
    },
    armor = 40,
    drawtype = "front",
    water_damage = 1,
    lava_damage = 1,
    group_attack=true,
    attack_animals=true,
    knock_back=0,
    blood_texture="stone_blood.png",
    immune_to={{'default:sword_stone', -2},{'default:stone', -2}, {'default:cobble', -2}, {'default:axe_stone', -2}, {'default:shovel_stone', -2}, {'default:pick_stone', -2}},
    light_damage = 0,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 20,
        stand_start = 1,
        stand_end = 60,
        walk_start = 70,
        walk_end = 110,
        run_start = 130,
        run_end = 150,
        punch_start = 160,
        punch_end = 185,
    },
    do_custom = function(self)
        --digging_ability(self, "stone", self.run_velocity, {x=0, y=2, z=0})
        bls_mobs.digging_attack(self, nil, self.run_velocity, {x=0, y=1, z=0})
    end,
})

mobs:spawn_specific(
    "bls_mobs:stone_eater",
    {"caverealms:stone_with_algae"}, -- nodes
    {"air"}, -- neighbors
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    2, -- aoc
    -7000, -- min_height
    -700 -- max_height
)
