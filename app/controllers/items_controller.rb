class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @recipes = []
  end

  def create
    @items = Item.all
    @recipes = RecipesService.get_recipes(params[:items])['recipes']
    render :index
  end

end

