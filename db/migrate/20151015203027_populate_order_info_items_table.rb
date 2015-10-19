class PopulateOrderInfoItemsTable < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute('TRUNCATE TABLE order_info_items')
    ActiveRecord::Base.connection.execute('ALTER SEQUENCE order_info_items_id_seq RESTART WITH 1')

    order_info_items = [
        {:name => 'Colors may vary', :description => 'Colors displayed online may vary slightly from the actual product. Please order a sample if color is crucial.'},
        {:name => 'Please confirm availability', :description => 'Please confirm availability before placing your order. Items that are not in stock may have a delivery time of up to 4-5 weeks.'},
        {:name => 'Print to order', :description => 'This is a print to order product. Please allow 7-10 days for production before shipment.'},
        {:name => 'Comes with bleed', :description => 'This product comes with a bleed that has to be trimmed off.'},
        {:name => 'Multiple panels', :description => 'Comes in multiple panels.'},
        {:name => 'Made to order -- final sale', :description => 'This made to order item is final sale. See our <a href="/">return policy</a> on made to order products.'},
        {:name => 'Printed as mural', :description => 'Item is printed as a mural. Can be repeated if necessary.'},
        {:name => 'Double roll', :description => 'Packaged as a double roll.'},
    ]

    order_info_items.each do |item|
      Spree::OrderInfoItem.create!(item)
    end
  end

  def down
    ActiveRecord::Base.connection.execute('TRUNCATE TABLE order_info_items')
    ActiveRecord::Base.connection.execute('ALTER SEQUENCE order_info_items_id_seq RESTART WITH 1')
  end
end
