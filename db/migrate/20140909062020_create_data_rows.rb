class CreateDataRows < ActiveRecord::Migration
  def change
    create_table :data_rows do |t|
      t.integer :sub_data_table_id
      t.integer :year
      t.decimal :t
      t.decimal :i
      t.decimal :small_n
      t.decimal :big_n
      t.decimal :p
      t.decimal :r
      t.decimal :d

      t.timestamps
    end
  end
end
