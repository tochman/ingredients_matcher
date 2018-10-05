class ItemsController < ApplicationController
  def index
    @items = Item.all
    @recipes = RecipesService.get_recipes{"image_url"}
  end
end
