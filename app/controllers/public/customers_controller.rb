class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def create
  end

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
  end

  def unsubscribe
    @customer = current_customer
  end

  def withdraw
    @customer = current_customer
    @customer.id = current_customer.id
    @customer.update(is_active: false)
    reset_session
    redirect_to root_path
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :is_active)
  end
end
