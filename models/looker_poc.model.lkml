# Define the database connection to be used for this model.
connection: "looker_poc"

# include all the views
include: "/views/**/*.view"
include: "/**/*.dashboard"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: looker_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Looker Poc"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: orders {
  join: order_items{
    sql_on:${orders.order_id}=${order_items.order_id};;
    relationship:many_to_one}
  join: products{
    sql_on:${order_items.product_id}=${products.id};;
    relationship:many_to_one}
  join: users {
    sql_on:${orders.user_id}=${users.id};;
    relationship:many_to_one}
  }

explore: order_items {
 conditionally_filter:{
    filters: [order_items.created_year: "2021"]
    unless: [order_items.created_month]
 }

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id}=${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id}=${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id}=${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id}=${distribution_centers.id} ;;
    relationship: many_to_one
  }

  join: core_products {
    type: left_outer
    sql_on: ${inventory_items.product_id}=${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: events {}

explore: inventory_items {}

explore: distribution_centers {}

explore: products {}

explore: users {}

explore: pop_arbitrary {
  label: "PoP Method 6: Compare two arbitrary date ranges"
  always_filter: {
    filters: [first_period_filter: "NOT NULL", second_period_filter: "NOT NULL", period_selected:"-NULL"]
  }
}
