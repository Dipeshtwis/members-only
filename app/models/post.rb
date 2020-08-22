class Post < ApplicationRecord
  belongs_to :member
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :body, presence: true, length: { minimum: 3, maximum: 800 }
end
