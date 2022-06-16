-- Code inspired by DarkSlayerEX's Item Tweaker API mod.

if not ItemTweak then ItemTweak = {} end
if not TweakItem then TweakItem = {} end
if not TweakItemValues then TweakItemValues = {} end

function ItemTweak.tweakItems()
    local item
    -- iterate through each value in TweakItemValues
    for k,v in pairs(TweakItemValues) do
        -- iterate through nested table in TweakItemValues (itemProperty = propertyValue)
        for t,y in pairs(v) do
            item = ScriptManager.Instance:getItem(k)
            if item ~= nil then
                item.DoParam(t.." = "..y)
            end
        end
    end
end

-- Accept an item's name, property to be edited, and the desired value
-- Then, pass it into the TweakItemValues table
function TweakItem(itemName, itemProperty, propertyValue)
    if not TweakItemValues[itemName] then
        TweakItemValues[itemName] = {}
    end
    -- indices 1 and 2 are strings, indice 3 is another table
    TweakItemValues[itemName][itemProperty] = propertyValue
end

Events.OnGameBoot.Add(ItemTweak.tweakItems)