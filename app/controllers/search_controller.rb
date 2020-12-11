class SearchController < ApplicationController
  def index
    search = params[:nation].split("_").map {|word| word.capitalize}.join("+")
    @characters = SearchFacade.call_api(search)
    @count = @characters.count
  end
end
