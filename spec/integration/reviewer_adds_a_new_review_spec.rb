require 'rails_helper.rb'

feature "Reviewer adds a review" do
    scenario "Reviewer successfully navigates to the new reviews page from the listing reviews page" do
        visit reviews_path
        expect(page).to have_content("List of reviews")
        click_link "New review"
        expect(page).to have_content("Add a review")
        expect(page).to have_field("Movie Title")
        expect(page).to have_field("Author")
        expect(page).to have_field("Rating")
        expect(page).to have_field("Write your review")
    end
end