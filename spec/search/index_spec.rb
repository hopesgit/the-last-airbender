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
    expect(current_path).to eq('/search')
    # Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
    expect(page).to have_content('Total Members: 97')
    # And I should see a list with the detailed information for all 97 members of the Fire Nation.
    # And for each of the members I should see:
    within ('.nation') do
      within ('#member-1') do
        expect(page).to have_content('Name:')
        expect(page).to have_content('Picture:')
        expect(page).to have_content('Allies:')
        expect(page).to have_content('Enemies:')
        expect(page).to have_content('Affiliations:')
      end
    end
    # The name of the member (and their photo, if they have one)
    # The list of allies and a list of enemies (if they have any)
    # Any affiliation that the member has (if they have any)
    end
  end
end
