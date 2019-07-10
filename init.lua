bls_mobs = {}
function bls_mobs.log(level, message)
    minetest.log(level, ('[bls_mobs] %s'):format(message))
end

bls_mobs.log('action', 'loading...')

bls_mobs.mymapgenis = tonumber(minetest.settings:get('blsmobs_mymapgenis')) or 7
bls_mobs.multimobs = tonumber(minetest.settings:get('blsmobs_multimobs')) or 100000
bls_mobs.difficulty = tonumber(minetest.settings:get('blsmobs_mob_difficulty')) or 1
bls_mobs.lessvirulent = minetest.settings:get_bool("bls_mobs.lessvirulent") or false
bls_mobs.safebones = minetest.settings:get_bool("bls_mobs.safebones") or false
bls_mobs.cryosave = minetest.settings:get_bool("bls_mobs.cryosave") or false

local path = minetest.get_modpath("bls_mobs")
dofile(path..'/api.lua')
dofile(path..'/darts.lua')
dofile(path..'/materials.lua')
dofile(path..'/mobs/init.lua')
