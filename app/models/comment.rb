class Comment < ApplicationRecord

  # relations
  belongs_to :post

  # validations
  validates :content, presence: true, length: { maximum: 200}

end
