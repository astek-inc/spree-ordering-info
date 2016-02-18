module Spree
  class ProductOrderInfoItem < ActiveRecord::Base
    self.table_name = 'order_info_items_spree_products'
    belongs_to :product
    belongs_to :order_info_item
  end
end
