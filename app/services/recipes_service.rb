require 'rest-client'

module RecipesService

    def self.get_recipes
        headers = {'application/json', 'id:35382': Rails.application.credentials.recipesearchapi [fc4dba13f609082f9b1488b63f415a5f] }
        url = "https://www.food2fork.com/api/search?key=fc4dba13f609082f9b1488b63f415a5f&q=ingredient"
        JSON.parse(RestClient.get(url, headers).body)


    end
end


# fc4dba13f609082f9b1488b63f415a5f

# https://www.food2fork.com/api/search?key=fc4dba13f609082f9b1488b63f415a5f&q=ingredient
# #{API-KEY}    #{ingredient}