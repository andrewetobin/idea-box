require 'rails_helper'

describe 'user creates a new idea' do
  it 'creates a new article' do
    new_title = "Great Idea"
    visit ideas_path
    click_link "Create a New Idea"
    fill_in "idea[title]", with: new_title
    fill_in "idea[body]",  with: "New Body!"
    click_on "Create Idea"

    expect(page).to have_content(new_title)
    expect(page).to have_content("New Body!")
  end

end
