class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
