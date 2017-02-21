Deface::Override.new(
    original: '4eb7076dca5af6532b6d825af25735c91c1821b0',
    virtual_path: 'spree/admin/shared/sub_menu/_product',
    name: 'add_order_info_items_to_product_admin_submenu',
    insert_bottom: '[data-hook="admin_product_sub_tabs"]',
    text: "<%= tab label: Spree.t(:order_info_items), route: :admin_order_info_items %>"
)
