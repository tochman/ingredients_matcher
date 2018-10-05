require 'rest-client'

module RecipesService

    def self.get_recipes
        headers = {'Content-Type': 'application/json'} 
        url = "https://www.food2fork.com/api/search?key=#{Rails.application.credentials.api[:api_key]}&q=pork"
        JSON.parse(RestClient.get(url, headers).body)
    end
end