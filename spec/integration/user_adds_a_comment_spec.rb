require 'rails_helper.rb'

feature "User adds a comment" do
    scenario "User creates a new review and creates a new comment" do
        # new review must be created first to store in the test database
        visit new_review_path
        expect(page).to have_content("Add a review")
        fill_in "Movie Title", with: "Harry Potter 4"
        fill_in "Author", with: "Mr. Reviewer"
        fill_in "Rating", with: "10"
        fill_in "Write your review", with: "The movie was very good and was very true to the book. I sincerely think that it could not have been improved."
        click_button "Submit"
        
        # user leaves a comment
        expect(page).to have_content "Leave a comment"
        find(".leave-comment").click
        fill_in "Username", with: "Cool user"
        fill_in "Comment", with: "This is a really well thought out review. I enjoyed it"
        click_button "Post"
        expect(page).to have_content "Cool user"
        expect(page).to have_content "This is a really well thought out review. I enjoyed it"
    end
end