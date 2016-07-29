module Spree
  class OrderInfoItem < ActiveRecord::Base
    self.table_name = 'order_info_items'
    has_and_belongs_to_many :products, :uniq => true
  end
end
