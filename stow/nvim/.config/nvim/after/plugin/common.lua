function PluginSetUp(func, moduleNames)
    for _, moduleName in ipairs(moduleNames) do
        local exists, _ = pcall(require, moduleName)
        if not exists then
            print(moduleName, 'plugin not found!')
        else
            func()
            return -- exit after first successful setup
        end
    end
end

