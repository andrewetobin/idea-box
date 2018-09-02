require 'rails_helper'

describe Category, type: :model do
  describe 'relationships' do
    it {should have_many(:idea_categories)}
    it {should have_many(:ideas).through(:idea_categories)}
  end
  # describe 'instance methods' do
  #   it 'create string from name' do
  #     tag_1 = Category.create(name: "travel")
  #     tag_2 = Category.create(name: "music")
  #
  #     expect(tag_1.to_s).to eq(tag_1.name)
  #     expect(tag_2.to_s).to eq(tag_2.name)
    # end
  # end
end
