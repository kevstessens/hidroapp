json.array!(@sub_data_tables) do |sub_data_table|
  json.extract! sub_data_table, :id, :data_table_id, :time_in_minutes
  json.url sub_data_table_url(sub_data_table, format: :json)
end
