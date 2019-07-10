
--non eatable craftitems
function bls_mobs.register_noneatcraftitems (name, descr)
    minetest.register_craftitem("bls_mobs:"..name, {
        description = descr,
        image = name..".png",
    })
end

bls_mobs.register_noneatcraftitems ('sky_feather','Sky Feather')
bls_mobs.register_noneatcraftitems ('snake_scute','Snake Scute')
bls_mobs.register_noneatcraftitems ('great_energy_globe','Great Energy Globe')
bls_mobs.register_noneatcraftitems ('superior_energy_globe','Superior Energy Globe')
bls_mobs.register_noneatcraftitems ('lava_titan_eye','Lava Titan Eye')
bls_mobs.register_noneatcraftitems ('ice_tooth','Ice Tooth')
bls_mobs.register_noneatcraftitems ('little_ice_tooth','Little Ice Tooth')
bls_mobs.register_noneatcraftitems ('digested_sand',"Digested Sand")
bls_mobs.register_noneatcraftitems ('black_ice_tooth','Black Ice Tooth')
bls_mobs.register_noneatcraftitems ('manticore_fur','Manticore Fur')
bls_mobs.register_noneatcraftitems ('bloco_skin','Bloco Skin')
bls_mobs.register_noneatcraftitems ('manticore_spine','Manticore Spine')
bls_mobs.register_noneatcraftitems ('night_feather','Night Feather')
bls_mobs.register_noneatcraftitems ('sun_feather','Sun Feather')
bls_mobs.register_noneatcraftitems ('stoneater_mandible','Stoneater Mandible')
bls_mobs.register_noneatcraftitems ('life_energy','Life Energy')
bls_mobs.register_noneatcraftitems ('energy_globe','Energy Globe')
bls_mobs.register_noneatcraftitems ('sand_bloco_skin','Sand Bloco Skin')
bls_mobs.register_noneatcraftitems ('sandworm_skin','Sandworm Skin')
bls_mobs.register_noneatcraftitems ('sky_iron','Sky Iron')
bls_mobs.register_noneatcraftitems ('web_string','Cobweb String')
bls_mobs.register_noneatcraftitems ('dense_web_string','Dense Cobweb String')

function bls_mobs.register_eatcraftitems (name, descr, gnam)
    minetest.register_craftitem("bls_mobs:"..name, {
        description = descr,
        image =name..".png",
        on_use = minetest.item_eat(gnam),
        groups = { meat=1, eatable=1 },
    })
end

bls_mobs.register_eatcraftitems ('heron_leg','Moonheron Leg',2)
bls_mobs.register_eatcraftitems ('chichibios_heron_leg',"Chichibio's Moonheron Leg",4)
bls_mobs.register_eatcraftitems ('spider_leg','Spider Leg',-1)
bls_mobs.register_eatcraftitems ('roasted_spider_leg','Roasted Spider Leg',4)
bls_mobs.register_eatcraftitems ('worm_flesh','Worm Flesh',-2)
bls_mobs.register_eatcraftitems ('roasted_worm_flesh','Roasted Worm Flesh',4)
bls_mobs.register_eatcraftitems ('amphibian_heart','Amphibian Heart',1)
bls_mobs.register_eatcraftitems ('roasted_amphibian_heart','Roasted Amphibian Heart',8)
bls_mobs.register_eatcraftitems ('raw_scrausics_wing','Raw Scrausics Wing',1)
bls_mobs.register_eatcraftitems ('spicy_scrausics_wing','Spicy Scrausics Wing',6)
bls_mobs.register_eatcraftitems ('phoenix_nuggets','Phoenix Nuggets',20)
bls_mobs.register_eatcraftitems ('phoenix_tear','Phoenix Tear',20)
bls_mobs.register_eatcraftitems ('frosted_amphibian_heart','Frosted Amphibian Heart',-1)
bls_mobs.register_eatcraftitems ('amphibian_ribs','Amphibian Ribs',2)
bls_mobs.register_eatcraftitems ('roasted_amphibian_ribs','Roasted Amphibian Ribs',6)
bls_mobs.register_eatcraftitems ('spider_meat','Spider Meat',-1)
bls_mobs.register_eatcraftitems ('roasted_spider_meat','Roasted Spider Meat',3)
bls_mobs.register_eatcraftitems ('silk_gland','Silk Gland',-1)
bls_mobs.register_eatcraftitems ('roasted_silk_gland','Roasted Silk Gland',3)
bls_mobs.register_eatcraftitems ('super_silk_gland','Super Silk Gland',-8)
bls_mobs.register_eatcraftitems ('roasted_super_silk_gland','Roasted Super Silk Gland',2)
--nodes

minetest.register_node("bls_mobs:web", {
	description = "Web",
	inventory_image = "web.png",
	tiles = {"web.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "bls_mobs:web",
	liquid_alternative_source = "bls_mobs:web",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("bls_mobs:thick_web", {
	description = "Thick Web",
	inventory_image = "thick_web.png",
	tiles = {"thick_web.png"} ,
    drawtype = "firelike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "",
	drowning = 2,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "bls_mobs:thick_web",
	liquid_alternative_source = "bls_mobs:thick_web",
	liquid_viscosity = 30,
	groups = {flammable=2, liquid=1},
})

minetest.register_node("bls_mobs:phoenix_fire", {
    description = "Phoenix Fire",
    drawtype = "firelike",
    tiles = {{
        name = "phoenix_fire_animated.png",
        animation = {type = "vertical_frames",
            aspect_w = 16, aspect_h = 16, length = 1},
    }},
    inventory_image = "phoenix_fire.png",
    light_source = 15,
    groups = {igniter = 1, snappy=1},
    drop = '',
    walkable = false,
    buildable_to = false,
    damage_per_second = 4,
})

minetest.register_node("bls_mobs:venomous_gas", {
	description = "Venomous Gas",
	inventory_image = minetest.inventorycube("venomous_gas.png"),
	drawtype = "airlike",
	tiles = {
		{name="venomous_gas_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	damage_per_second = 1,
	post_effect_color = {a=100, r=1, g=100, b=1},
	groups = {flammable = 2},
})

--abms

minetest.register_abm({
    nodenames = {"bls_mobs:phoenix_fire"},
    neighbors = {"air"},
    interval = 3,
    chance = 2,
    action = function(pos, node)
        minetest.set_node({x = pos.x, y = pos.y , z = pos.z}, {name = "air"})
    end
})

minetest.register_abm({
    nodenames = {"bls_mobs:venomous_gas"},
    neighbors = {"air"},
    interval = 3,
    chance = 5,
    action = function(pos, node)
        minetest.set_node({x = pos.x, y = pos.y , z = pos.z}, {name = "air"})
    end
})


--tools

minetest.register_tool('bls_mobs:sun_sword', {
    description = 'Sun Sword',
    inventory_image = 'sun_sword.png',
    tool_capabilities = {
        full_punch_interval = 0.6,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=0.80, [2]=0.40, [3]=0.20}, uses=70, maxlevel=1},
            fleshy={times={[2]=0.6, [3]=0.2}, uses=70, maxlevel=1}
        },
        damage_groups = {fleshy=10},
    },
    minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
        if puncher:get_wielded_item():get_name() == 'bls_mobs:sun_sword' then
            if node.name ~= "air" and not minetest.is_protected(pos, "") then
                minetest.add_node(pointed_thing.above, {name = "fire:basic_flame"})
            end
        end
    end)
})

minetest.register_tool("bls_mobs:night_sword", {
    description = "Night Sword",
    inventory_image = "night_sword.png",
    tool_capabilities = {
        full_punch_interval =0.4 ,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=0.4, [2]=0.3, [3]=0.2}, uses=300, maxlevel=1},
            fleshy={times={[2]=0.7, [3]=0.3}, uses=300, maxlevel=1}
        },
        damage_groups = {fleshy=12},
    },
})

minetest.register_node("bls_mobs:rope", {
    description = "Rope",
    paramtype = "light",
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    drawtype = "plantlike",
    drops = "bls_mobs:rope",
    tiles = { "rope.png" },
    groups = {snappy=1},
})

minetest.register_tool("bls_mobs:stoneater_pick", {
    description = "Stoneater Pickaxe",
    inventory_image = "stoneater_pick.png",
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level=0,
        groupcaps={
            cracky = {times={[3]=0.0}, uses=200, maxlevel=1},
        },
        damage_groups = {fleshy=5},
    },
})

minetest.register_tool("bls_mobs:little_ice_tooth_knife", {
    description = "Little Ice Tooth Knife",
    inventory_image = "little_ice_tooth_knife.png",
    tool_capabilities = {
        full_punch_interval =0.3 ,
        max_drop_level=1,
        groupcaps={
            fleshy={times={[2]=1.0, [3]=0.4}, uses=4, maxlevel=1},
            snappy={times={[2]=0.80, [3]=0.3}, uses=7, maxlevel=1},
        },
        damage_groups = {fleshy=5},
    },
})

minetest.register_tool("bls_mobs:manticore_spine_knife", {
    description = "Manticore Spine Knife",
    inventory_image = "manticore_spine_knife.png",
    tool_capabilities = {
        full_punch_interval =0.4 ,
        max_drop_level=1,
        groupcaps={
            fleshy={times={[2]=1.0, [3]=0.4}, uses=6, maxlevel=1},
            snappy={times={[2]=0.80, [3]=0.3}, uses=6, maxlevel=1},
        },
        damage_groups = {fleshy=6},
    },
})

--recipes

minetest.register_craft({
    output = 'bls_mobs:web_string',
    recipe = {
        {'bls_mobs:web', 'bls_mobs:web'},
        {'bls_mobs:web', 'bls_mobs:web'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:dense_web_string',
    recipe = {
        {'bls_mobs:web_string', 'bls_mobs:web_string', 'bls_mobs:web_string'},
        {'bls_mobs:web_string', 'bls_mobs:web_string', 'bls_mobs:web_string'},
        {'bls_mobs:web_string', 'bls_mobs:web_string', 'bls_mobs:web_string'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:black_ice_tooth',
    type = "shapeless",
    recipe = {'bls_mobs:digested_sand', 'bls_mobs:ice_tooth'},
})

minetest.register_craft({
    output = 'bls_mobs:web 4',
    type = "shapeless",
    recipe = {'bls_mobs:silk_gland'},
})

minetest.register_craft({
    output = 'bls_mobs:energy_globe',
    recipe = {
        {'bls_mobs:life_energy', 'bls_mobs:life_energy', 'bls_mobs:life_energy'},
        {'bls_mobs:life_energy', 'bls_mobs:life_energy', 'bls_mobs:life_energy'},
        {'bls_mobs:life_energy', 'bls_mobs:life_energy', 'bls_mobs:life_energy'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:great_energy_globe',
    recipe = {
        {'bls_mobs:energy_globe', 'bls_mobs:energy_globe', 'bls_mobs:energy_globe'},
        {'bls_mobs:energy_globe', 'bls_mobs:energy_globe', 'bls_mobs:energy_globe'},
        {'bls_mobs:energy_globe', 'bls_mobs:energy_globe', 'bls_mobs:energy_globe'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:superior_energy_globe',
    recipe = {
        {'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe'},
        {'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe'},
        {'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe', 'bls_mobs:great_energy_globe'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:life_energy 9',
    type = "shapeless",
    recipe = {'bls_mobs:energy_globe'}
})

minetest.register_craft({
    output = 'bls_mobs:energy_globe 9',
    type = "shapeless",
    recipe = {'bls_mobs:great_energy_globe'}
})

minetest.register_craft({
    output = 'bls_mobs:great_energy_globe 9',
    type = "shapeless",
    recipe = {'bls_mobs:superior_energy_globe'}
})

minetest.register_craft({
    output = 'bls_mobs:rope 12',
    recipe = {
        {'bls_mobs:web_string'},
        {'bls_mobs:web_string'},
        {'bls_mobs:web_string'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:sky_feather',
    type = "shapeless",
    recipe = {'bls_mobs:sun_feather','bls_mobs:night_feather'}
})

minetest.register_craft({
    output = 'bls_mobs:sun_sword',
    recipe = {
        {'default:diamond'},
        {'bls_mobs:sun_feather'},
        {'group:stick'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:night_sword',
    recipe = {
        {'default:diamond'},
        {'bls_mobs:night_feather'},
        {'group:stick'},
    }
})

function bls_mobs.register_recipe (ingredient, dish, tictac)
    minetest.register_craft({
        type = "cooking",
        output = "bls_mobs:"..dish,
        recipe = "bls_mobs:"..ingredient,
        cooktime = tictac,
    })
end

bls_mobs.register_recipe ('worm_flesh', 'roasted_worm_flesh', 12)
bls_mobs.register_recipe ('spider_leg', 'roasted_spider_leg', 6)
bls_mobs.register_recipe ('amphibian_heart', 'roasted_amphibian_heart', 6)
bls_mobs.register_recipe ('frosted_amphibian_heart', 'amphibian_heart', 8)
bls_mobs.register_recipe ('heron_leg', 'chichibios_heron_leg', 20)
bls_mobs.register_recipe ('raw_scrausics_wing', 'spicy_scrausics_wing', 12)
bls_mobs.register_recipe ('amphibian_ribs', 'roasted_amphibian_ribs', 12)
bls_mobs.register_recipe ('spider_meat', 'roasted_spider_meat', 6)
bls_mobs.register_recipe ('silk_gland', 'roasted_silk_gland', 4)

minetest.register_craft({
    output = 'bls_mobs:sky_iron 30',
    recipe = {
        {'default:steelblock', 'default:steelblock', 'default:steelblock'},
        {'default:steelblock', 'bls_mobs:sky_feather', 'default:steelblock'},
        {'default:steelblock', 'default:steelblock', 'default:steelblock'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:stoneater_pick',
    recipe = {
        {'bls_mobs:stoneater_mandible', 'bls_mobs:stoneater_mandible', 'bls_mobs:stoneater_mandible'},
        {'', 'group:stick', ''},
        {'', 'group:stick', ''},
    }
})

minetest.register_craft({
    output = 'bls_mobs:little_ice_tooth_knife',
    recipe = {
        {'bls_mobs:little_ice_tooth'},
        {'group:stick'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:manticore_spine_knife',
    recipe = {
        {'bls_mobs:manticore_spine'},
        {'group:stick'},
    }
})

minetest.register_craft({
    output = 'bls_mobs:tarantula_warhammer',
    recipe = {
        {'bls_mobs:tarantula_chelicerae'},
        {'group:stick'},
        {'group:stick'},
    }
})

--Eggs
function bls_mobs_register_egg (name, descr)
    minetest.register_craftitem("bls_mobs:".. name, {
        description = descr .. " Egg",
        image = name.."_egg.png",
        on_place = function(itemstack, placer, pointed_thing)
            local pos1=minetest.get_pointed_thing_position(pointed_thing, true)
            pos1.y=pos1.y+1.5
            core.after(0.1, function()
                minetest.add_entity(pos1, "bls_mobs:".. name)
            end)
            itemstack:take_item()
            return itemstack
        end,
    })
end

function bls_mobs_register_egg2 (name, descr)                --mobs you can't catch
    minetest.register_craftitem("bls_mobs:".. name.."_egg", {
        description = descr .. " Egg",
        image = name.."_egg.png",
        on_place = function(itemstack, placer, pointed_thing)
            local pos1=minetest.get_pointed_thing_position(pointed_thing, true)
            pos1.y=pos1.y+1.5
            core.after(0.1, function()
                minetest.add_entity(pos1, "bls_mobs:".. name)
            end)
            itemstack:take_item()
            return itemstack
        end,
    })
end

bls_mobs_register_egg('stone_eater', 'Stoneater')
bls_mobs_register_egg('signosigno', 'Signosigno')
bls_mobs_register_egg('bloco', 'Bloco')
bls_mobs_register_egg('sand_bloco', 'Sand Bloco')
bls_mobs_register_egg2('echidna', 'Echidna')
bls_mobs_register_egg('snow_biter', 'Snow Biter')
bls_mobs_register_egg2('icelamander', 'Icelamander')
bls_mobs_register_egg('icesnake', 'Icesnake')
bls_mobs_register_egg2('lava_titan', 'Lava Titan')
bls_mobs_register_egg2('phoenix', 'Phoenix')
bls_mobs_register_egg2('night_master', 'Night Master')
bls_mobs_register_egg('scrausics', 'Scrausics')
bls_mobs_register_egg('moonheron', 'Moonheron')
bls_mobs_register_egg('sandworm', 'Sandworm')
bls_mobs_register_egg2('giant_sandworm', 'Giant Sandworm')
bls_mobs_register_egg('black_widow', 'Black Widow')
bls_mobs_register_egg('uloboros', 'Uloboros')
bls_mobs_register_egg2('tarantula', 'Tarantula')
bls_mobs_register_egg('daddy_long_legs', 'Daddy Long Legs')
bls_mobs_register_egg('manticore', 'Manticore')
