class DataRow < ActiveRecord::Base
  belongs_to :sub_data_table

  def calc_i
    self.t/(self.sub_data_table.time_in_minutes/60.0)
  end

  def calc_n
    n=0
    DataRow.where(:sub_data_table_id => self.sub_data_table_id).all.each do |dataTable|
      if dataTable.calc_i >= self.calc_i
        n=n+1
      end
    end
    n
  end

  def calc_big_n
    DataRow.where(:sub_data_table_id => self.sub_data_table_id).all.count
  end

  def calc_p
    (self.calc_n - 0.5)/ self.calc_big_n
  end

  def calc_r
    1/self.calc_p
  end


end
