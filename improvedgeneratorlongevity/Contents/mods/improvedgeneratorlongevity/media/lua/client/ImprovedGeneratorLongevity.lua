if getActivatedMods():contains("GCT_API") then
  require("ItemTweak")
end

function SetGenConditionMax()
  -- Set all relevant variables - item ID, param we need changed, user value from Sandbox Vars
  local itemID = { "Base.Generator" }
  local param = "ConditionMax"
  local value = SandboxVars.ImprovedGeneratorLongevity.GeneratorConditionMax

  -- If the item and value exist, tweak the values
  if itemID ~= nil and value ~= nil then
    for k,v in pairs(itemID) do
      TweakItem(v, param, value)
    end
  end
  print("Generator Max Condition: "..value)
end

Events.OnGameBoot.Add(SetGenConditionMax)