require 'rails_helper'

describe 'user sees idea show page' do
  it "shows idea show page" do
    idea_1 = Idea.create(title: "New Idea", body: "check it out")

    visit ideas_path

    click_on idea_1.title

    expect(current_path).to eq(idea_path(idea_1))
    expect(page).to have_content(idea_1.title)
    expect(page).to have_content(idea_1.body)
  end

end
