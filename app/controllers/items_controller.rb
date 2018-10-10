class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @recipes = []
  end

  def create
    @items = RecipesService.get_recipes(params[:items])
  end

end

