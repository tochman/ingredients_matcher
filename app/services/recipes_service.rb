require 'rest-client'

module RecipesService

    def self.get_recipes(items)
        seach_recipe = items.to_s
        headers = {'Content-Type': 'application/json'} 
        url = "https://www.food2fork.com/api/search?key=#{Rails.application.credentials.api[:api_key]}&q=#{seach_recipe}"
        JSON.parse(RestClient.get(url, headers).body)["recipes"]
    end
end