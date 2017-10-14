class Comment < ApplicationRecord

  # relations
  belongs_to :post
  belongs_to :user

  # validations
  validates :content, presence: true, length: { maximum: 200}

end
