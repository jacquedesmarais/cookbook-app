class RecipesController < ApplicationController

  def index
    # if session[:count] == nil
    #   session[:count] = 0
    # end

    # session[:count] += 1
    # @counter = session[:count]

    @recipes = Recipe.all
    sort_attribute = params[:sort]
    if sort_attribute
      @recipes = @recipes.order(sort_attribute)
    end
  end

  def new
    
  end

  def create
    recipe = Recipe.new(
                        title: params[:title],
                        user_id: current_user.id,
                        ingredients: params[:ingredients],
                        directions: params[:directions],
                        prep_time: params[:prep_time]
                        )
    recipe.save
    flash[:success] = "Recipe Successfully Created"
    redirect_to "/recipes/#{ recipe.id }"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])

    recipe.assign_attributes(
                            title: params[:title],
                            chef: params[:chef],
                            ingredients: params[:ingredients],
                            directions: params[:directions]
                            )

    recipe.save
    flash[:success] = "Recipe Successfully Updated"
    redirect_to "/recipes/#{ recipe.id }"
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    flash[:warning] = "Recipe Successfully Destroyed"
    redirect_to "/"
  end

end
