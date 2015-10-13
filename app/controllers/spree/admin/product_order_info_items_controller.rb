module Spree
  module Admin
    class ProductOrderInfoItemsController < ResourceController

      #belongs_to 'spree/product', :find_by => :slug

      before_action :load_product, only: [:index, :edit,]
      before_action :load_order_info_items, only: [:index, :edit,]

      private

        def load_product
          @product = Spree::Product.friendly.find(params[:product_id])
          @tmp = params
        end

        def load_order_info_items
          @order_info_items = Spree::OrderInfoItem.all
        end
    end
  end
end
