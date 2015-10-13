module Spree
  Product.class_eval do
    # has_many :product_order_info_items
    # has_many :order_info_items, :through => :product_order_info_items

    has_and_belongs_to_many :order_info_items
  end
end
