class SessionsController < ApplicationController
  before_filter :authenticate_user!, only: [:index]
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  def new
  end

  def study
    @data_tables = DataTable.all
  end

  def calculate_study
    @data_table = DataTable.find(params['data_table_id'])
    @graph_data = Array.new
    @max_axis = 0
    @data_table.sub_data_tables.order("time_in_minutes ASC").each do |table|
      graph_table = GraphTuple.new
      graph_table.key = table.time_in_minutes
      dif = 99999
      table.data_rows.each do |rows|
        diference = Math.sqrt(((params['recurrence'].to_i) - rows.calc_r)*((params['recurrence'].to_i) - rows.calc_r))
        if diference < dif
          graph_table.value=rows.calc_i
          dif = diference
        end
      end
      if !graph_table.key.nil? and !graph_table.value.nil?
        @graph_data << graph_table
        if graph_table.value > @max_axis
          @max_axis = graph_table.value
        end
      end
    end

    @graph_data = @graph_data.to_json.html_safe


  end

  def index
    @data_tables = DataTable.all.last(5)
  end
end
