class GroupPurchase < ApplicationRecord
  belongs_to :group
  belongs_to :purchase

  after_create :total_purchases_group_add

  def total_purchases_group_add
    group.increment!(:total_purchases, purchase.amount)
  end
end
