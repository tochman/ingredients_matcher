class RecipesController < ApplicationController
    def index
        @recipes = RecipesService.get_recipes
        binding.pry
    end
end
