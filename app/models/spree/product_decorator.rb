module Spree
  Product.class_eval do
    has_and_belongs_to_many :product_ordering_info_items
  end
end
