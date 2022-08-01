connection: "looker_poc"

include: "/views/*.view.lkml"

label: "First_Model"

explore: order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id}=${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${order_items.product_id}=${products.id};;
    relationship: many_to_one
    fields: [products.brand,products.category,products.department]
  }

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id}=${users.id} ;;
    relationship: many_to_one
  }

  #testing
}
