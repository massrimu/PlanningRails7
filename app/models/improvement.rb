class Improvement < ApplicationRecord
  # belongs_to :user
  acts_as_votable
  belongs_to :project
  validates_presence_of :title, :author, :description, :principle
  has_attached_file :image, styles: { medium: "700x700>", thumb: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  resourcify
end
