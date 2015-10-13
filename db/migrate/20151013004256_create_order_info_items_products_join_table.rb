class CreateOrderInfoItemsProductsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :order_info_items, :products do |t|
      t.index :order_info_item_id
      t.index :product_id
    end
  end
end
