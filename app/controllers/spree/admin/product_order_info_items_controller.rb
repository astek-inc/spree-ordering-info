module Spree
  module Admin
    class ProductOrderInfoItemsController < ResourceController

      before_action :load_product, only: [:index, :edit]
      before_action :load_order_info_items, only: [:index, :edit]

      private

        def load_product
          @product = Spree::Product.friendly.find(params[:product_id])
          @product_order_info_item_ids = @product.order_info_items.map(&:id)
        end

        def load_order_info_items
          @order_info_items = Spree::OrderInfoItem.all
        end
    end
  end
end
