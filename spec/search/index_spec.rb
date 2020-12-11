require 'rails_helper'

describe 'As a user' do
  describe 'When I visit "/" and Select "Fire Nation" from the select field' do
    it 'does these things' do
    # (Note: Use the existing select field)
    visit '/'
    find(id: 'nation').select('Fire Nation')
    # And I click "Search For Members“
    click_button('Search For Members')

    # Then I should be on page “/search”
    expect(current_path).to eq(search_path)
    # Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
    # And I should see a list with the detailed information for all 97 members of the Fire Nation.
    end
  end
end
