require 'rest-client'

module RecipesService

    def self.get_recipes
        # headers = {'Content-Type': 'application/json', : Rails.application.credentials.api[:api_key]}
        url = "https://www.food2fork.com/api/search?key=#{Rails.application.credentials.api[:api_key]}&q=pork"
        JSON.parse(RestClient.get(url).body)
        # get_recipes.get_everything(q: query,
        #                             sources: "source_url"
        #                             title: "title"                         
        #                             image: "image_url",
        #                             page: 2)  

    end
end