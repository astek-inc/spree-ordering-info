class RenameOrderInfoItemsProductsJoinTable < ActiveRecord::Migration
  def self.up
    rename_table :order_info_items_products, :order_info_items_spree_products
  end

  def self.down
    rename_table :order_info_items_spree_products, :order_info_items_products
  end
end
