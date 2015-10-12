Deface::Override.new(
    :virtual_path => 'spree/admin/shared/_product_tabs',
    :name => 'add_ordering_info_to_products_admin_submenu',
    :insert_bottom => "[data-hook='admin_product_tabs']",
    :text => 'xxx'
)
