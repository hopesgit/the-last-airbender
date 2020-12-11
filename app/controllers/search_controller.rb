class SearchController < ApplicationController
  def index
    search = params[:nation].split("_").map {|word| word.capitalize}.join("+")
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/")

    response = conn.get("characters?affiliation=#{search}")
    parsed = JSON.parse(response.body, symbolize_headers: true)
    binding.pry
  end
end
