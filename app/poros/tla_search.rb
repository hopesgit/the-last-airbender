class TLASearch
  def self.characters_by_nation(search)
    response = self.conn.get("characters?affiliation=#{search}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/") do |f|
      f.params['perPage'] = 100
    end
  end
end
