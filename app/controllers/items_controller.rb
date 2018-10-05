class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    binding.pry
    @recipes = RecipesService.get_recipes(nil)

  end

  def create
    @recipes = RecipesService.get_recipes(params[:items])
  end

end

