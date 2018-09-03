require 'rails_helper'

describe 'user creates a new idea' do
  it 'creates a new article' do
    # @category_1 = Category.create(name: "Music")
    # @category_2 = Category.create(name: "Travel")
    new_title = "Great Idea"
    visit ideas_path
    # select 'Travel', from: "category-dropdown"
    click_link "Create a New Idea"
    fill_in "idea[title]", with: new_title
    fill_in "idea[body]",  with: "New Body!"
    click_on "Create Idea"

    expect(page).to have_content(new_title)
    expect(page).to have_content("New Body!")
  end

end
