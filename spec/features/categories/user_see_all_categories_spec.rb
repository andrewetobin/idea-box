require 'rails_helper'

describe 'user visits categories index' do
  it "shows all categories" do
    category_1 = Category.create(name: "Travel")
    category_2 = Category.create(name: "Music")

    visit categories_path

    expect(page).to have_content(category_1.name)
    expect(page).to have_content(category_2.name)
  end


end
