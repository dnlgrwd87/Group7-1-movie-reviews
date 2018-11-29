require 'rails_helper.rb'

feature "Reviewer navigates the website using the navigation bar" do
    scenario "User successfully navigates from the home page to the new review page using the navbar" do
        visit root_path
        within('nav') do
            click_on 'New review'
        end
        expect(page).to have_current_path(new_review_path)
    end
    
    scenario "User successfully navigates from the new review page to the reviews list page using the navbar" do
        visit new_review_path
        within('nav') do
            click_on 'Reviews'
        end
        expect(page).to have_current_path(reviews_path)
    end
    
    scenario "User successfully navigates from the reviews list page to the home page using the navbar" do
        visit reviews_path
        within('nav') do
            click_on 'Home'
        end
        expect(page).to have_current_path(root_path)
    end
end