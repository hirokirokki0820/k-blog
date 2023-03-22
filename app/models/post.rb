class Post < ApplicationRecord
  has_rich_text :content
  # has_many_attached :images
  belongs_to :admin
end
