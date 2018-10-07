class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @recipes = RecipesService.get_recipes(nil)

  end

  def create
    @items = RecipesService.get_recipes(params[:items])
  end

end

