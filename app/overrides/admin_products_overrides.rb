Deface::Override.new(
	:virtual_path  => "spree/admin/products/index",
	:insert_top => '[data-hook="admin_products_index_headers"]',
	:text          => '<th width=4><%= check_box_tag "check-all", 1, false, :id => "check-all" %></th>',
	:name => "Check all products"
)
Deface::Override.new(
	:virtual_path  => "spree/admin/products/index",
	:insert_top => '[data-hook="admin_products_index_rows"]',
	:text          => '<td><%= check_box_tag "product_ids[]", product.id, false, :class => "product-select" %></td>',
	:name => "Check product"
)
Deface::Override.new(
	:virtual_path  => "spree/admin/products/index",
	:insert_bottom => '[data-hook="admin_products_sidebar"]',
	:partial       => 'spree/admin/products/edit_multiple',
	:name 				 => "Edit multiple products form"
)