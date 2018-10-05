class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @recipes = RecipesService.get_recipes["recipes"]
  end

  def create
    binding.pry
  end

end
