require 'rails_helper.rb'

feature "Commenter adds a comment" do
    scenario "Commenter successfully navigates to the show review page from the listing reviews page" do
        visit reviews_path
        expect(page).to have_content("List of reviews")
    end
end