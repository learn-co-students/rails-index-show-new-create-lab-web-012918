class RenameStoreToCouponStoreInCoupons < ActiveRecord::Migration
  def change
    rename_column :coupons, :store, :coupon_store
  end
end
