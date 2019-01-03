class Strike < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :striker, class_name: 'User'
  validates :reason_to_strike, presence: true
end
