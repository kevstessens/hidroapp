json.array!(@data_rows) do |data_row|
  json.extract! data_row, :id, :sub_data_table_id, :year, :t, :i, :small_n, :big_n, :p, :r, :d
  json.url data_row_url(data_row, format: :json)
end
