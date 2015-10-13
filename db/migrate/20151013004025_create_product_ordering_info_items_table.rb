class CreateProductOrderingInfoItemsTable < ActiveRecord::Migration
  def change
    create_table :product_ordering_info_items do |t|
      t.string :name
      t.text :description
    end
  end
end
