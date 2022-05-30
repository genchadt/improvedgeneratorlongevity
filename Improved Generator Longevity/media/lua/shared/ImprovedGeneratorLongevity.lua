function SetGenConditionMax()
  local name = "Base.Generator" -- Generator is the object we want from newitems.txt
  local option = SandboxVars.ImprovedGeneratorLongevity.GeneratorConditionMax -- Get value from SandboxVars

  local item = ScriptManager.instance:getItem(name) -- Load the item we picked

  -- Set the max condition parameter here
  if item then
    item:DoParam("ConditionMax = "..option)
  end

  print("Generator Max Condition: "..option)
end

Events.OnInitWorld.Add(SetGenConditionMax)