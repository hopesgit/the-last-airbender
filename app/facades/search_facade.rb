class SearchFacade
  def self.call_api(value)
    data = TLASearch.characters_by_nation(value)
    data.map do |character|
      Character.new(character)
    end
  end
end
