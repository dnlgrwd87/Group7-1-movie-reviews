require 'rails_helper.rb'

feature "Reviewer edits a review" do
    scenario "Reviewer successfully navigates to the edit review page from the listing reviews page" do
        visit reviews_path
        expect(page).to have_content("List of reviews")
    end
end