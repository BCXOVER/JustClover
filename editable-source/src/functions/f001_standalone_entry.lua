
-- Start the recovered application with the API slots used by its own code.
-- f96 clears the former loader seed cells at entry; it retains ffi and SHA256.
F.f1=function(function_metadata,upvalues)
    return function()
        if startup_blocked then return end
        current_function,current_pc="f1",1
        local ffi_module=andromeda_environment.require("ffi")
        local apis={}
        local binding_paths={[19]="globals.frametime",[23]="globals.tickcount",[26]="globals.curtime",[27]="globals.mapname",[28]="globals.tickinterval",[29]="globals.framecount",[30]="globals.realtime",[31]="globals.maxplayers",[32]="entity.get_local_player",[33]="entity.is_alive",[36]="entity.set_prop",[37]="entity.get_player_weapon",[39]="entity.hitbox_position",[40]="entity.get_player_resource",[41]="entity.get_esp_data",[42]="entity.is_dormant",[43]="entity.get_player_name",[44]="entity.get_game_rules",[45]="entity.get_classname",[46]="entity.get_origin",[47]="entity.get_prop",[49]="entity.get_players",[50]="entity.is_enemy",[52]="client.current_threat",[54]="client.userid_to_entindex",[56]="client.set_event_callback",[57]="client.screen_size",[58]="client.trace_bullet",[60]="client.color_log",[66]="client.random_int",[67]="client.latency",[70]="client.log",[78]="client.trace_line",[81]="client.register_esp_flag",[86]="client.exec",[87]="client.random_float",[91]="client.eye_position",[93]="client.camera_angles",[95]="client.unset_event_callback",[96]="client.system_time",[99]="ui.reference",[108]="ui.is_menu_open",[110]="ui.set",[117]="ui.type",[120]="ui.get",[121]="database.read",[122]="database.write",[125]="renderer.load_svg",[127]="renderer.circle_outline",[128]="renderer.rectangle",[129]="renderer.gradient",[130]="renderer.circle",[131]="renderer.text",[135]="renderer.triangle",[136]="renderer.measure_text",[138]="renderer.indicator",[139]="renderer.texture",[141]="plist.set",[144]="math.ceil",[148]="math.cos",[150]="math.random",[151]="math.max",[152]="math.atan2",[154]="math.floor",[155]="math.sqrt",[157]="math.atan",[160]="math.pow",[161]="math.abs",[162]="math.min",[163]="math.sin",[171]="math.rad"}
        for index,path in pairs(binding_paths) do
            local value=andromeda_environment
            for part in path:gmatch("[^.]+") do
                if part=="ffi" and value==andromeda_environment then
                    value=ffi_module
                elseif value~=nil then
                    value=value[part]
                end
            end
            apis[index]=value
        end
        setmetatable(apis,{__index=function(_,index)
            local path=binding_paths[index]
            if path then error("ANDROMEDA_MISSING_API: "..path,0) end
            error("ANDROMEDA_UNRESOLVED_API_SLOT: "..tostring(index),0)
        end})
        local crypto=make_function(D.f29,nil)()
        local cells={[17]=function()end}
        local application_upvalues={
            [0]={[1]=7,[2]=cells},
            [1]={[1]=15,[2]=cells},
            [2]={[1]=17,[2]=cells},
            [3]=ffi_module,
            [4]=crypto,
        }
        local application=make_function(D.f96,application_upvalues)
        setfenv(application,andromeda_environment)
        return application(apis)
    end
end
