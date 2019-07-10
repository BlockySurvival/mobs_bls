mobs:register_arrow("bls_mobs:lava_arrow", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"transparent.png"},
    velocity = 10,
    -- direct hit
    hit_player = function(self, player)
        local pos = self.object:getpos()
        if minetest.is_protected(pos, "") then
            return
        end
        for dy=-1, 6, 1 do
            for dx=-1, 1, 2 do
                for dz=-1, 1, 2 do
                    local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
                    local n = minetest.env:get_node(p).name
                    if n~="default:lava_flowing" and not minetest.is_protected(p, "") then
                        minetest.set_node(p, {name="default:lava_flowing"})
                    end
                end
            end
        end
    end,
})


mobs:register_arrow("bls_mobs:phoenix_arrow", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"transparent.png"},
    velocity = 8,
    -- direct hit
    hit_player = function(self, player)
    end,

    on_step = function(self, dtime)

        local pos = self.object:getpos()
        if minetest.is_protected(pos, "") then
            return
        end

        local n = minetest.env:get_node(pos).name

        if self.timer == 0 then
            self.timer = os.time()
        end

        if os.time() - self.timer > 5 or minetest.is_protected(pos, "") or ((n~="air") and (n~="bls_mobs:phoenix_fire")) then
            self.object:remove()
        end

        if math.random(1,2)==2 then
            minetest.env:set_node(pos, {name="bls_mobs:phoenix_fire"})
        end

        if math.random(1,6)==1 then
            local dx = math.random(-1,1)
            local dy = math.random(-1,1)
            local dz = math.random(-1,1)
            local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
            local n = minetest.env:get_node(p).name
            if n=="air" then
                minetest.env:set_node(p, {name="bls_mobs:phoenix_fire"})
            end
        end

    end,
})


mobs:register_arrow("bls_mobs:spine", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"manticore_spine_flying.png"},
    velocity = 10,
    -- direct hit
    hit_player = function(self, player)
        player:punch(self.object, 1.0, {
            full_punch_interval = 1.0,
            damage_groups = {fleshy = 2},
        }, nil)
    end,

    hit_mob = function(self, player)
        player:punch(self.object, 1.0, {
            full_punch_interval = 1.0,
            damage_groups = {fleshy = 2},
        }, nil)
    end,
})

function bls_mobs:affectbones(mobe) -- as function for adaptable heuristic
    return not bls_mobs.safebones
end

function bls_mobs.ice_explosion(pos)
    for i=pos.x-math.random(0, 1), pos.x+math.random(0, 1), 1 do
        for j=pos.y-1, pos.y+4, 1 do
            for k=pos.z-math.random(0, 1), pos.z+math.random(0, 1), 1 do
                local p = {x=i, y=j, z=k}
                local n = minetest.env:get_node(p).name
                if minetest.get_item_group(n, "unbreakable") == 1 or minetest.is_protected(p, "") or (n == "bones:bones" and not bls_mobs:affectbones(self)) then
                else
                    minetest.set_node({x=i, y=j, z=k}, {name="default:ice"})
                end
            end
        end
    end
end

mobs:register_arrow("bls_mobs:snow_arrow", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"transparent.png"},
    velocity =20,
    -- direct hit
    hit_player = function(self, player)
        local pos = self.object:getpos()
        bls_mobs.ice_explosion(pos)
    end,

    hit_mob = function(self, player)
        local pos = self.object:getpos()
        bls_mobs.ice_explosion(pos)
    end,
    hit_node = function(self, pos, node)
        bls_mobs.ice_explosion(pos)
    end,
})


mobs:register_arrow("bls_mobs:webball", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"web_ball.png"},
    velocity = 8,
    -- direct hit
    hit_player = function(self, player)
        local p = player:getpos()
        bls_mobs.explosion_web(p)
    end,

    hit_mob = function(self, player)
        player:punch(self.object, 1.0, {
            full_punch_interval = 1.0,
            damage_groups = {fleshy = 1},
        }, nil)
    end,

    hit_node = function(self, pos, node)
        bls_mobs.explosion_web(pos)
    end
})

function bls_mobs.explosion_web(pos)
    if minetest.is_protected(pos, "") then
        return
    end
    pos.y = round(pos.y)
    if minetest.is_protected(pos, "") then
        return
    end
    for i=pos.x-1, pos.x+1, 1 do
        for j=pos.y-3, pos.y, 1 do
            for k=pos.z-1, pos.z+1, 1 do
                local p = {x=i,y=j,z=k}
                local k = {x=i,y=j+1,z=k}
                local current = minetest.env:get_node(p).name
                local ontop  = minetest.env:get_node(k).name
                if     (current ~= "air") and
                    (current ~= "bls_mobs:web") and
                    (ontop == "air") and not
                    minetest.is_protected(p,"") and not
                    minetest.is_protected(k,"") then
                        minetest.set_node(k, {name="bls_mobs:web"})
                end
            end
        end
    end
end


-- thick_web arrow
mobs:register_arrow("bls_mobs:thickwebball", {
    visual = "sprite",
    visual_size = {x = 2, y = 2},
    textures = {"thick_web_ball.png"},
    velocity = 8,
    -- direct hit
    hit_player = function(self, player)
        local p = player:getpos()
        bls_mobs.explosion_thickweb(p)
    end,

    hit_mob = function(self, player)
        player:punch(self.object, 1.0, {
            full_punch_interval = 1.0,
            damage_groups = {fleshy = 6},
        }, nil)
    end,

    hit_node = function(self, pos, node)
        bls_mobs.explosion_thickweb(pos)
    end
})

function bls_mobs.explosion_thickweb(pos)
    if minetest.is_protected(pos, "") then
        return
    end
    pos.y = round(pos.y)
    if minetest.is_protected(pos, "") then
        return
    end
    for i=pos.x+0, pos.x+0, 1 do
        for j=pos.y-2, pos.y, 1 do
            for k=pos.z+0, pos.z+0, 1 do
                local p = {x=i,y=j,z=k}
                local k = {x=i,y=j+1,z=k}
                local current = minetest.env:get_node(p).name
                local ontop  = minetest.env:get_node(k).name
                if     (current ~= "air") and
                    (current ~= "bls_mobs:thick_web") and
                    (ontop == "air") and not
                    minetest.is_protected(p,"") and not
                    minetest.is_protected(k,"") then
                        minetest.set_node(k, {name="bls_mobs:thick_web"})
                end
            end
        end
    end
end

function bls_mobs.gas_explosion(pos)
    if minetest.is_protected(pos, "") then
        return
    end
    for dx=-2,2 do
        for dy=-1,4 do
            for dz=-2,2 do
                local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
                if minetest.is_protected(p, "") then
                    return
                end
                local n = minetest.env:get_node(p).name
                if n== "air" then
                    minetest.set_node(p, {name="bls_mobs:venomous_gas"})
                end
            end
        end
    end
end

mobs:register_arrow("bls_mobs:super_gas", {
    visual = "sprite",
    visual_size = {x = 1, y = 1},
    textures = {"transparent.png"},
    velocity = 8,
    -- direct hit
    hit_player = function(self, player)
        local p = player:getpos()
        bls_mobs.gas_explosion(p)
    end,

    hit_node = function(self, pos, node)
        bls_mobs.gas_explosion(pos)
    end
})


