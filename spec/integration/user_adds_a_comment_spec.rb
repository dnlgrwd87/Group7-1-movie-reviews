require 'rails_helper.rb'

feature "User adds a comment" do
    scenario "User creates a new review and creates a new comment" do
        # new review must be created first to store in the test database
        visit new_review_path
        expect(page).to have_content("Add a review")
        fill_in "review[title]", with: "Harry Potter 4"
        fill_in "review[author]", with: "Mr. Reviewer"
        fill_in "review[rating]", with: "10"
        fill_in "review[text]", with: "The movie was very good and was very true to the book. I sincerely think that it could not have been improved."
        click_button "Submit"
        
        # user leaves a comment
        expect(page).to have_content "Leave a comment"
        find(".leave-comment").click
        fill_in "comment[author]", with: "Cool user"
        fill_in "comment[body]", with: "This is a really well thought out review. I enjoyed it"
        click_button "Post"
        expect(page).to have_content "Cool user"
        expect(page).to have_content "This is a really well thought out review. I enjoyed it"
        expect(page).not_to have_content "Post"
    end
end