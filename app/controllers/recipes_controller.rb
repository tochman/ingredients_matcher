class RecipesController < ApplicationController
    def index
        @recipes = RecipesService.get_recipes[1]
    end
end
