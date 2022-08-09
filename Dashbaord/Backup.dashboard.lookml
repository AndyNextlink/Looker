- dashboard: looker_poc
  title: Looker_POC
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Wwwi29Iq0niFUPONPtt7rX
  elements:
  - title: Looker_POC
    name: Looker_POC
    model: looker_poc
    explore: orders
    type: looker_column
    fields: [orders.created_month, order_items.total_sale_price, products.brand]
    filters: {}
    sorts: [orders.created_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Brand: products.brand
    row: 0
    col: 0
    width: 12
    height: 12
  - title: ScatterPlot
    name: ScatterPlot
    model: looker_poc
    explore: order_items
    type: looker_scatter
    fields: [core_products.brand, core_products.retail_price]
    filters:
      order_items.created_year: '2021'
    sorts: [core_products.brand]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 12
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: 10 Deep
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_poc
    explore: orders
    listens_to_filters: []
    field: products.brand
