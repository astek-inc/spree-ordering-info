Deface::Override.new(
    :virtual_path => 'spree/admin/shared/_product_tabs',
    :name => 'add_order_info_to_products_admin_submenu',
    :insert_bottom => "[data-hook='admin_product_tabs']",
    :text => "<%= content_tag :li, class: ('active' if current == :order_info) do %>
      <%= link_to_with_icon 'info-sign', Spree.t(:order_info), spree.admin_product_order_info_items_url(@product) %>
    <% end if can?(:admin, Spree::Product) %>"
)
