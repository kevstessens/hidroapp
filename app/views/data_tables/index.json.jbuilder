json.array!(@data_tables) do |data_table|
  json.extract! data_table, :id, :name
  json.url data_table_url(data_table, format: :json)
end
