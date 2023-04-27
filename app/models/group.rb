class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :purchases, through: :group_purchases
end
