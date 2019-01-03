class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :blocks
  has_many :addresses
  has_many :friendships
  has_many :contacts
  has_many :followers
  has_many :posts
  has_many :reactions
  has_many :blocks
  has_many :messages
  has_many :strikes
end
