connection: "mock_dashboard"

# include all the views
include: "/views/**/*.view"

datagroup: mock_dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mock_dashboard_default_datagroup

explore: final_data {}
explore: prediction_likelihood {}
explore: prediction_capacity {}
explore: customer_view {}
