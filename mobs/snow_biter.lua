mobs:register_mob("bls_mobs:snow_biter", {
    type = "monster",
    hp_max = 30,
    hp_min = 15,
    collisionbox = {-0.5, 0, -0.5, 0.5, 0.60, 0.5},
    visual = "mesh",
    mesh = "snow_biter.x",
    textures = {{"snow_biter.png"}},
    visual_size = {x=6, y=6},
    makes_footstep_sound = true,
    view_range = 18,
    rotate = 270,
    mele_number = 2,
    fear_height = 4,
    reach = 1.5,
    walk_velocity = 0.8,
    run_velocity = 3,
    sounds = {
        random = "snow_biter",
    },
    --pathfinding = true,
    damage = 4,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 2,
        max = 3},
        {name = "bls_mobs:frosted_amphibian_heart",
        chance = 2,
        min = 1,
        max = 1},
        {name = "bls_mobs:amphibian_ribs",
        chance = 2,
        min = 1,
        max = 1},
        {name = "bls_mobs:little_ice_tooth",
        chance = 2,
        min = 0,
        max = 4},
    },
    armor = 80,
    drawtype = "front",
    water_damage = 0,
    lava_damage = 30,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=4,
    blood_texture="bls_mobs_blood.png",
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    double_melee_attack = true,
    animation = {
        speed_normal = 20,
        speed_run = 25,
        stand_start = 0,
        stand_end = 80,
        walk_start = 110,
        walk_end = 150,
        run_start = 80,
        run_end = 100,
        punch_start = 175,
        punch_end = 190,
        punch2_start = 200,
        punch2_end = 215
    },
    do_custom = function(self)
        bls_mobs.putting_ability(self, "default:ice", self.run_velocity)
    end,
})


mobs:spawn_specific(
    "bls_mobs:snow_biter",
    {"caverealms:thin_ice", "default:ice"},
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    2, -- aoc
    -7000, -- min_height
    -700 -- max_height
)
