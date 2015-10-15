Spree::Admin::ProductsController.class_eval do

  before_action :handle_order_info_item_ids, only: :update

  Spree::PermittedAttributes.product_attributes.push :order_info_item_ids

  private
    def handle_order_info_item_ids
      if params[:product].nil?
        params[:product] = {:order_info_item_ids => []}
      end
    end

end
