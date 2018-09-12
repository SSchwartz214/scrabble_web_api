require 'rails_helper'

describe "As a guest user" do
  context "visiting root page" do
    it "searches for a word" do
# As a guest user (no sign in necessary)
# When I visit "/"
visit '/'
# And I fill in a text box with "foxes"
fill_in :q, with: "foxes"
# And I click "Validate Word"
click_on "Validate Word"

expect(current_path).to eq search_path
# Then I should see a message that says "'foxes' is a valid word and its root form is 'fox'."
expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'.")
    end
  end
end

# As a guest user
# When I visit "/"
# And I fill in a text box with "foxez"
# And I click "Validate Word"
# Then I should see a message that says "'foxez' is not a valid word."
