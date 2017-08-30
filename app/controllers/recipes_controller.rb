class RecipesController < ApplicationController

def one_recipe_action
  @title = "Recipe"
  @recipe = Recipe.last
  render 'one_recipe_page.html.erb'
end

def all_recipes_action
  @title = "All Recipe"
  @recipes = Recipe.all
  render 'all_recipes_page.html.erb'
end

end
