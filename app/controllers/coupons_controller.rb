class CouponsController < ApplicationController

# before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    # @coupon = Coupon.new
  end

  def create
    # Coupon.create(coupon_params)
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    # @coupon.update(coupon_code: params[:coupon_code])
    # @coupon.update(store: params[:store])
    # byebug
    @coupon.save
    redirect_to coupon_path(@coupon) #takes you back to that actual page for the item or whatever
  end


  private
  def coupon_params
    params.permit(:coupon_code,:store)
  end

  def set_coupon
    Coupon.create(params[:coupon])
  end



end
