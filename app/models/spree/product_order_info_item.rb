module Spree
  class ProductOrderInfoItem < ActiveRecord::Base
    belongs_to :product
    belongs_to :order_info_item
  end
end
