class CreateDataRows < ActiveRecord::Migration
  def change
    create_table :data_rows do |t|
      t.integer :sub_data_table_id
      t.integer :year
      t.double :t
      t.double :i
      t.double :small_n
      t.double :big_n
      t.double :p
      t.double :r
      t.double :d

      t.timestamps
    end
  end
end
