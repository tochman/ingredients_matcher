class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @items = RecipesService.get_recipes
  end
end
