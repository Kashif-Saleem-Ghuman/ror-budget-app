class PurchasesController < ApplicationController
  def index
    @current_user = current_user
    @group = Group.find(params[:group_id])
    @group_purchases = Group.find(params[:group_id]).group_purchases.order(created_at: :desc)
  end

  def new
    @current_user = current_user
    @group = Group.find_by_id(params[:group_id])
    @available_groups = current_user.groups.reject { |f| @group.purchases.include?(f) }
  end

  def create
    @purchase = current_user.purchases.new(name: params[:name], amount: params[:amount])

    if @purchase.save
      @group_purchase = GroupPurchase.new(group_id: params[:groups], purchase_id: @purchase.id)
      @group_purchase.save
      redirect_to group_purchases_path(group_id: params[:groups]), notice: 'Your Transaction is created successfully 🎉'
    else
      flash[:alert] = 'Something went wrong, Try again!'
      render :new
    end
  end
end
