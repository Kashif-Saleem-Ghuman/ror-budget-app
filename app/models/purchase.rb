class Purchase < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_purchases
end