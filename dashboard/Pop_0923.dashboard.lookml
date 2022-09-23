- dashboard: pop_0923
  title: Pop_0923
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: hxRWohBvU6b6D30EMnEWfD
  elements:
  - title: Pop_0923
    name: Pop_0923
    model: looker_poc
    explore: pop_arbitrary
    type: looker_line
    fields: [pop_arbitrary.days_from_first_period, pop_arbitrary.period_selected,
      pop_arbitrary.total_sale_price]
    pivots: [pop_arbitrary.period_selected]
    filters: {}
    sorts: [pop_arbitrary.period_selected, pop_arbitrary.days_from_first_period]
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
    interpolation: linear
    defaults_version: 1
    listen:
      First Period Filter: pop_arbitrary.first_period_filter
      Second Period Filter: pop_arbitrary.second_period_filter
      First or second period: pop_arbitrary.period_selected
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Second Period Filter
    title: Second Period Filter
    type: field_filter
    default_value: 2019/07/01 to 2019/08/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_poc
    explore: pop_arbitrary
    listens_to_filters: []
    field: pop_arbitrary.second_period_filter
  - name: First Period Filter
    title: First Period Filter
    type: field_filter
    default_value: 2019/06/01 to 2019/07/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_poc
    explore: pop_arbitrary
    listens_to_filters: []
    field: pop_arbitrary.first_period_filter
  - name: First or second period
    title: First or second period
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_poc
    explore: pop_arbitrary
    listens_to_filters: []
    field: pop_arbitrary.period_selected
