class Idea < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :body
  has_many :idea_categories
  has_many :categories, through: :idea_categories
end
