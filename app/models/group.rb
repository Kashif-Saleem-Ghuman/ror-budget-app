class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_purchases, dependent: :destroy
  has_many :purchases, through: :group_purchases

  has_one_attached :icon
  validates :name, :icon, presence: true
end
