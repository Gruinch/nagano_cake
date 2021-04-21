class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @address = Address.new
    @address.customer_id = current_customer.id
    @addresses = current_customer.addresses
  end
  
  def create
     @address = Address.new
     @address.customer_id = current_customer.id
     @address.save
     redirect_to addresses_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def address_params
    params.require(:address).permit(:customer_id, :address, :postal_code, :name)
  end

end
