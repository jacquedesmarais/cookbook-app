Rails.application.routes.draw do
  get '/one_recipe_url' => 'recipes#one_recipe_action'
  get 'all_recipes_url' => 'recipes#all_recipes_action'
end
