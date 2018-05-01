--[[
local fireArmor = table.deepcopy(data.raw.armor["heavy-armor"])

fireArmor.name = "fire-armor"
fireArmor.icons= {
   {
      icon=fireArmor.icon,
      tint={r=1,g=0,b=0,a=0.3}
   },
}

fireArmor.resistances = {
   {
      type = "physical",
      decrease = 6,
      percent = 10
   },
   {
      type = "explosion",
      decrease = 10,
      percent = 30
   },
   {
      type = "acid",
      decrease = 5,
      percent = 30
   },
   {
      type = "fire",
      decrease = 0,
      percent = 100
   },
}

local recipe = table.deepcopy(data.raw.recipe["heavy-armor"])
recipe.enabled = true
recipe.name = "fire-armor"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "fire-armor"
    
data:extend{fireArmor,recipe}
]]
--local filterWagonT = table.deepcopy(data.raw.type["cargo-wagon"])

local filterWagonE = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
filterWagonE.name = "filter-wagon"
filterWagonE.minable = {mining_time = 1, result = "filter-wagon"},
data:extend({filterWagonE})

local filterWagonI = table.deepcopy(data.raw.item["splitter"])
filterWagonI.name = "filter-wagon"
filterWagonI.place_result = "filter-wagon"
filterWagonI.icon = "__base__/graphics/icons/cargo-wagon.png"
filterWagonI.icon_size = 32
filterWagonI.flags = {"goes-to-quickbar"}
filterWagonI.subgroup = "transport"
filterWagonI.order = "a[train-system]-g[cargo-wagon]"
filterWagonI.stack_size = 5
data:extend({filterWagonI})

local recipe = table.deepcopy(data.raw.recipe["cargo-wagon"])
recipe.enabled = true
recipe.name = "filter-wagon"
--recipe.ingredients = {{"copper-plate",1},{"steel-plate",1}}
recipe.result = "filter-wagon"
data:extend{recipe}