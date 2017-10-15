class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # relations
  has_many :posts, dependent: :destroy
  has_many :users

  # follow
  acts_as_followable
  acts_as_follower



end
