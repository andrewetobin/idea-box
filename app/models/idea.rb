class Idea < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :body
  has_many :idea_categories, dependent: :destroy
  has_many :categories, through: :idea_categories
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
