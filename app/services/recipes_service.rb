require 'rest-client'

module RecipesService

    def self.get_recipes
        headers = {'Content-Type': 'application/json', 'id:35382': Rails.application.credentials.api[:api_key]}
        url = "https://www.food2fork.com/api/search?key=#{Rails.application.credentials.api[:api_key]}&q=#{ingredient}"
        JSON.parse(RestClient.get(url, headers).body)
    end
end

# https://www.food2fork.com/api/search?key=&q=ingredient
# #{API-KEY}    #{ingredient}