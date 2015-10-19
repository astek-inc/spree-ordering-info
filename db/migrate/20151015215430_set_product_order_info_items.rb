class SetProductOrderInfoItems < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute('TRUNCATE TABLE order_info_items_spree_products')

    # Add "colors may vary, order a sample" to all products which have a sample variant
    Spree::Variant.where("sku LIKE '%_sample'").pluck(:product_id).each do |product_id|
      ActiveRecord::Base.connection.execute("INSERT INTO order_info_items_spree_products (
        order_info_item_id,
        product_id
      ) VALUES (
        1,
        #{product_id}
      )")
    end

    # Add "print to order, allow 7-10 days" to products with wallpaper tiles taxon
    Spree::Product.find_by_sql('SELECT product_id FROM spree_products_taxons WHERE taxon_id = 306').each do |product|
      ActiveRecord::Base.connection.execute("INSERT INTO order_info_items_spree_products (
        order_info_item_id,
        product_id
      ) VALUES (
        3,
        #{product.id}
      )")
    end

    # Add "sold as a double roll" to all products which have a sold by double roll property
    Spree::ProductProperty.where(:property_id => 15, :value => 'Double Roll').pluck(:product_id).each do |product_id|
      ActiveRecord::Base.connection.execute("INSERT INTO order_info_items_spree_products (
        order_info_item_id,
        product_id
      ) VALUES (
        8,
        #{product_id}
      )")
    end

  end

  def down
    ActiveRecord::Base.connection.execute('TRUNCATE TABLE order_info_items_spree_products')
  end
end
