module Spree
  Product.class_eval do
    has_and_belongs_to_many :order_info_items, :uniq => true

    def set_order_info_item name
      item = Spree::OrderInfoItem.find_by(name: name)
      self.order_info_items << item unless item.nil? || self.order_info_items.include?(item)
    end
  end
end
