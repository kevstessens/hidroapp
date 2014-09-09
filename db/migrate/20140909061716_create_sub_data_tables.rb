class CreateSubDataTables < ActiveRecord::Migration
  def change
    create_table :sub_data_tables do |t|
      t.integer :data_table_id
      t.integer :time_in_minutes

      t.timestamps
    end
  end
end
