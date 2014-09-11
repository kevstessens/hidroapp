class SubDataTable < ActiveRecord::Base
  belongs_to :data_table
  has_many :data_rows

  validates_presence_of :data_table, :time_in_minutes


end
