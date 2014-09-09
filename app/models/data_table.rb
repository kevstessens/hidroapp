class DataTable < ActiveRecord::Base
  has_many :sub_data_tables
  belongs_to :user

end
