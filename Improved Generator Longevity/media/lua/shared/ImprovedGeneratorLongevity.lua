function SetGenConditionMax()
  local name = "Base.Generator" -- Generator is the object we want from newitems.txt
  local item = ScriptManager.instance:getItem(name) -- Load the item we picked

  local option = SandboxVars.ImprovedGeneratorLongevity.GeneratorConditionMax -- Get value from SandboxVars

  -- Set the max condition parameter here
  if item then
    item:DoParam("ConditionMax = "..option)
  end
end

Events.OnInitWorld.Add(SetGenConditionMax)