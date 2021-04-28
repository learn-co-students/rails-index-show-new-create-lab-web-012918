class UndoRenameForStore < ActiveRecord::Migration
  def change
    rename_column :coupons, :coupon_store, :store
  end
end
