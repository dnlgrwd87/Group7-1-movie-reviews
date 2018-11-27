require 'rails_helper.rb'

feature "Reviewer destroys a review" do
    scenario "Reviewer successfully navigates to the listing reviews page from the home page" do
        visit root_path
        click_link "Reviews"
        expect(page).to have_content("List of reviews")
    end
end