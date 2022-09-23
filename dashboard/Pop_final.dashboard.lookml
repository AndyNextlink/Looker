- name: add_a_unique_name_1663904110
  title: Untitled Visualization
  model: looker_poc
  explore: pop_arbitrary
  type: looker_line
  fields: [pop_arbitrary.days_from_first_period, pop_arbitrary.period_selected, pop_arbitrary.total_sale_price]
  pivots: [pop_arbitrary.period_selected]
  filters:
    pop_arbitrary.first_period_filter: 2019/06/01 to 2019/07/01
    pop_arbitrary.second_period_filter: 2019/07/01 to 2019/08/01
    pop_arbitrary.period_selected: "-NULL"
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
