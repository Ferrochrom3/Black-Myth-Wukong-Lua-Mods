local function logMessage(message)
    print("================================================= [Improved Dodge] " .. message)
end


local function registerBuffHook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_BuffAdd_Multicast_Invoke",
        function(Context, BuffID, Caster, RootCaster, Duration, BuffSourceType, bRecursed, BattleAttrSnapShot)
            local buff = BuffID:get()

            if buff == 10105 then     -- Slowed dodge (default 0.4s)
                Duration:set(600)
            elseif buff == 10106 then -- 0th (default 0.4s)
                Duration:set(600)
            elseif buff == 10107 then -- 1st (default 0.433s)
                Duration:set(633)
            elseif buff == 10108 then -- 2nd (default 0.466s)
                Duration:set(666)
            elseif buff == 10109 then -- 3rd (default 0.5s)
                Duration:set(700)
            end
        end)
end


ExecuteWithDelay(10000, function()
    logMessage("Buff Hook Registered")
    registerBuffHook()
end)
