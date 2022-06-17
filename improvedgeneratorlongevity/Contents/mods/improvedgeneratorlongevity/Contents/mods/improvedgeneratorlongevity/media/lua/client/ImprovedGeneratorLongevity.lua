function SetGenConditionMax()
  -- Set all relevant variables - item ID, param we need changed, user value from Sandbox Vars
  Generator = { "Base.Generator" }
  local param = "ConditionMax"
  local val = SandboxVars.ImprovedGeneratorLongevity.GeneratorConditionMax
  local item
  
  if Generator ~= nil and val ~= nil then
    for k,v in pairs(Generator) do
      item = ScriptManager.instance:getItem(v)
      if item ~= nil then
        item:DoParam(param.." = "..val)
        print("GENERATOR ITEM "..v.." MAX CONDITION SET TO: "..val)
      end
    end
  end
end

Events.OnInitWorld.Add(SetGenConditionMax)