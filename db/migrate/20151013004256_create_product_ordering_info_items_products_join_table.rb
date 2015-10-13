class CreateProductOrderingInfoItemsProductsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :product_ordering_info_items, :products do |t|
      t.index :product_ordering_info_item_id
      t.index :product_id
    end
  end
end
