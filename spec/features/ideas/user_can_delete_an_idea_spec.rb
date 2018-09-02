require 'rails_helper'

describe 'user deletes an idea' do
  describe "they link from the show page" do
    it 'deletes an idea' do
      idea_1 = Idea.create(title: "New Idea", body: "check it out")
      idea_2 = Idea.create(title: "Another Idea", body: "whoa")

      visit ideas_path
      click_link "New Idea"

      expect(current_path).to eq(idea_path(idea_1))
      click_on "Delete"

      expect(current_path).to eq(ideas_path)
      expect(page).to have_content("Another Idea")
    end
  end
end
