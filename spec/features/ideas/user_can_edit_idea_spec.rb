require 'rails_helper'


describe "user edits an idea" do
  describe "user start from idea show page" do
    it "edits and idea" do
      new_title = "New Title!"
      new_body = "New BOdy!"
      idea_1 = Idea.create(title: "This is an Idea", body: "Lot of words.....")

      visit idea_path(idea_1)
      click_on "Edit"

      fill_in "idea[title]", with: new_title
      fill_in "idea[body]",  with: new_body
      click_on "Update Idea"


      expect(current_path).to eq(idea_path(idea_1))
      expect(page).to have_content(new_title)
      expect(page).to have_content(new_body)
      expect(page).to have_content("Idea '#{new_title}' Updated!")
    end
  end
end
