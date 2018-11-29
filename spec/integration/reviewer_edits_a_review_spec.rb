require 'rails_helper.rb'

feature "Reviewer edits a review" do
    scenario "Reviewer successfully creates a new review and edits it" do
        # new review must be created first to store in the test database
        visit new_review_path
        expect(page).to have_content("Add a review")
        fill_in "review[title]", with: "Harry Potter 4"
        fill_in "review[author]", with: "Mr. Reviewer"
        fill_in "review[rating]", with: "10"
        fill_in "review[text]", with: "The movie was very good and was very true to the book. I sincerely think that it could not have been improved."
        click_button "Submit"
        visit reviews_path
        
        # click first "Edit" link in case there are more than one
        first('.action-buttons').click_link "Edit"
        expect(page).to have_content "Edit your review"
        fill_in "review[title]", with: "Harry Potter 1"
        click_button "Submit"
        expect(page).to have_content("Harry Potter 1")
    end
end