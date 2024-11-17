
-- Slowdown Item
local sdc_item =  util.table.deepcopy(data.raw.item["hazard-concrete"])
sdc_item.name = "slowdown-concrete"
sdc_item.order = "b[concrete]-e[refined-slowdown]"
sdc_item.icon = "__slowdownconcrete__/graphics/item-slow-concrete.png"
sdc_item.place_as_tile = {
  result = "slowdown-concrete-left",
  condition_size = 1,
  condition = {layers={water_tile=true}}
}
data.raw.item["slowdown-concrete"] = sdc_item
-- Slowdown Tile Left
local sdc_tile_left =  util.table.deepcopy(data.raw.tile["hazard-concrete-left"])
sdc_tile_left.name = "slowdown-concrete-left"
sdc_tile_left.order = "a[artificial]-c[tier-3]-e[refined-slowdown-concrete-left]"
sdc_tile_left.next_direction = "slowdown-concrete-right"
sdc_tile_left.minable.result = "slowdown-concrete"
sdc_tile_left.walking_speed_modifier = 0.7
sdc_tile_left.vehicle_friction_modifier = 4
sdc_tile_left.variants.material_background.picture = "__slowdownconcrete__/graphics/tile-slow-concrete-left-hr.png"
data.raw.tile["slowdown-concrete-left"] = sdc_tile_left
-- Slowdown Tile Right
local sdc_tile_right =  util.table.deepcopy(data.raw.tile["hazard-concrete-right"])
sdc_tile_right.name = "slowdown-concrete-right"
sdc_tile_right.order = "a[artificial]-c[tier-3]-f[refined-slowdown-concrete-right]"
sdc_tile_right.next_direction = "slowdown-concrete-left"
sdc_tile_right.minable.result = "slowdown-concrete"
sdc_tile_right.walking_speed_modifier = 0.7
sdc_tile_right.vehicle_friction_modifier = 4
sdc_tile_right.variants.material_background.picture = "__slowdownconcrete__/graphics/tile-slow-concrete-right-hr.png"
data.raw.tile["slowdown-concrete-right"] = sdc_tile_right
-- Slowdown Recipe
local sdc_recipe = util.table.deepcopy(data.raw.recipe["hazard-concrete"])
sdc_recipe.name = "slowdown-concrete"
sdc_recipe.ingredients = {
  {type = "item", name = "hazard-concrete", amount = 10},
  {type = "item", name = "plastic-bar", amount = 3},
  {type = "item", name = "iron-plate", amount = 1}
}
sdc_recipe.results = {{type="item", name="slowdown-concrete", amount=10}}
data.raw.recipe["slowdown-concrete"] = sdc_recipe


-- Refined Slowdown Item
local rsdc_item =  util.table.deepcopy(data.raw.item["refined-hazard-concrete"])
rsdc_item.name = "refined-slowdown-concrete"
rsdc_item.order = "b[concrete]-e[refined-slowdown]"
rsdc_item.icon = "__slowdownconcrete__/graphics/item-refined-slow-concrete.png"
rsdc_item.place_as_tile = {
  result = "refined-slowdown-concrete-left",
  condition_size = 1,
  condition = {layers={water_tile=true}}
}
data.raw.item["refined-slowdown-concrete"] = rsdc_item
-- Refined Slowdown Tile Left
local rsdc_tile_left =  util.table.deepcopy(data.raw.tile["refined-hazard-concrete-left"])
rsdc_tile_left.name = "refined-slowdown-concrete-left"
rsdc_tile_left.order = "a[artificial]-c[tier-3]-e[refined-slowdown-concrete-left]"
rsdc_tile_left.next_direction = "refined-slowdown-concrete-right"
rsdc_tile_left.minable.result = "refined-slowdown-concrete"
rsdc_tile_left.walking_speed_modifier = 0.5
rsdc_tile_left.vehicle_friction_modifier = 6
rsdc_tile_left.variants.material_background.picture = "__slowdownconcrete__/graphics/tile-refined-slow-concrete-left-hr.png"
data.raw.tile["refined-slowdown-concrete-left"] = rsdc_tile_left
-- Refined Slowdown Tile Right
local rsdc_tile_right =  util.table.deepcopy(data.raw.tile["refined-hazard-concrete-right"])
rsdc_tile_right.name = "refined-slowdown-concrete-right"
rsdc_tile_right.order = "a[artificial]-c[tier-3]-f[refined-slowdown-concrete-right]"
rsdc_tile_right.next_direction = "refined-slowdown-concrete-left"
rsdc_tile_right.minable.result = "refined-slowdown-concrete"
rsdc_tile_right.walking_speed_modifier = 0.5
rsdc_tile_right.vehicle_friction_modifier = 6
rsdc_tile_right.variants.material_background.picture = "__slowdownconcrete__/graphics/tile-refined-slow-concrete-right-hr.png"
data.raw.tile["refined-slowdown-concrete-right"] = rsdc_tile_right
-- Refined Slowdown Recipe
local rsdc_recipe = util.table.deepcopy(data.raw.recipe["refined-hazard-concrete"])
rsdc_recipe.name = "refined-slowdown-concrete"
rsdc_recipe.ingredients = {
  {type = "item", name = "refined-hazard-concrete", amount = 10},
  {type = "item", name = "plastic-bar", amount = 3},
  {type = "item", name = "steel-plate", amount = 1}
}
rsdc_recipe.results = {{type="item", name="refined-slowdown-concrete", amount=10}}
data.raw.recipe["refined-slowdown-concrete"] = rsdc_recipe


-- Slowdown Concrete Tech
local sdctech =   {
  type = "technology",
  name = "slowdown-concrete",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__slowdownconcrete__/graphics/tech-slowconcrete.png",
  prerequisites = {"concrete", "plastics"},
  unit =
  {
    count = 50,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 30
  },
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "slowdown-concrete"
    },
    {
      type = "unlock-recipe",
      recipe = "refined-slowdown-concrete"
    }
  },
  order = "c-c-d"
}
data.raw.technology["slowdown-concrete"] = sdctech