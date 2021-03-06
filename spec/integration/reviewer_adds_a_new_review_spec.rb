require 'rails_helper.rb'

feature "Reviewer adds a review" do
    scenario "Reviewer successfully navigates to the new reviews page from the listing reviews page" do
        visit reviews_path
        expect(page).to have_content("List of reviews")
        click_link "Add a review now"
        expect(page).to have_content("Add a review")
        expect(page).to have_field("review[title]")
        expect(page).to have_field("review[author]")
        expect(page).to have_field("review[rating]")
        expect(page).to have_field("review[text]")
    end

    scenario "Reviewer successfully creates a new review" do
        visit new_review_path
        expect(page).to have_content("Add a review")
        fill_in "review[title]", with: "Harry Potter 4"
        fill_in "review[author]", with: "Mr. Reviewer"
        fill_in "review[rating]", with: "10"
        fill_in "review[text]", with: "The movie was very good and was very true to the book. I sincerely think that it could not have been improved."
        click_button "Submit"
        expect(page).to have_content("Harry Potter 4")
        expect(page).to have_content("Mr. Reviewer")
        expect(page).to have_content("10")
        expect(page).to have_content("The movie was very good and was very true to the book. I sincerely think that it could not have been improved.")
        expect(page).not_to have_content("Submit")
    end
end