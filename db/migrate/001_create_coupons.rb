class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupon do |t|
      t.string :coupon_code
      t.string :store
    end

  end
end
