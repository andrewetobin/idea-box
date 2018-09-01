require 'rails_helper'

describe 'user sees ideas index page' do
  it 'shows all idead'do
    idea_1 = Idea.create(title: "New Idea", body: "check it out")
    idea_2 = Idea.create(title: "Another Idea", body: "whoa")

    visit ideas_path

    expect(page).to have_content(idea_1.title)
    expect(page).to have_content(idea_2.title)
  end
end
