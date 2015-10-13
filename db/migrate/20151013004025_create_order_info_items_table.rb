class CreateOrderInfoItemsTable < ActiveRecord::Migration
  def up
    create_table :order_info_items do |t|
      t.string :name
      t.text :description
    end
  end

  def down
    drop_table :order_info_items
  end
end
