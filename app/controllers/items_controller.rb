class ItemsController < ApplicationController
  def index
    @items = Item.all
    @recipes = RecipesService.get_recipes["recipes"]
    binding.pry
  end
end
