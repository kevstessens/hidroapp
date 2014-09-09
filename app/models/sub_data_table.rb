class SubDataTable < ActiveRecord::Base
  belongs_to :data_table
  has_many :data_rows
end
