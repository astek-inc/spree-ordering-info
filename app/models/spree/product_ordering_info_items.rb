module Spree
  class ProductOrderingInfoItem < ActiveRecord::Base
    self.table_name = 'product_ordering_info_items'
    has_and_belongs_to_many :products
  end
end
