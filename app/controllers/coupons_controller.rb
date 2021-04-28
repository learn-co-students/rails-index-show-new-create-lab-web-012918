class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new

  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    # byebug
    redirect_to coupon_url(@coupon)
  end

end
