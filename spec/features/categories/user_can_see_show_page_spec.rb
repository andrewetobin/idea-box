require 'rails_helper'

describe 'category show page' do
  it "show info on single category" do
    idea = Idea.create(title: "go to Arkanas", body: "all of these great places")

      category = idea.categories.create(name: "Travel")
      visit idea_path(idea)

      click_on "Travel"

      expect(page).to have_content(idea.title)
  end
end
