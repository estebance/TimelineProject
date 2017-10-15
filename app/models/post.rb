class Post < ApplicationRecord

  # relations
  belongs_to :user
  has_many :comments, dependent: :destroy

  # validations
  validates :title, presence: true, length: { maximum: 200}
  validates :content, presence: true, length: { maximum: 200}


end
