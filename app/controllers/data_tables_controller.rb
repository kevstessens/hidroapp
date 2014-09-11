class DataTablesController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_data_table, only: [:show, :edit, :update, :destroy]

  # GET /data_tables
  # GET /data_tables.json
  def index
    @data_tables = DataTable.where(:user_id => current_user.id).all.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /data_tables/1
  # GET /data_tables/1.json
  def show
  end

  # GET /data_tables/new
  def new
    @data_table = DataTable.new
  end

  # GET /data_tables/1/edit
  def edit
  end

  # POST /data_tables
  # POST /data_tables.json
  def create
    @data_table = DataTable.new(data_table_params)

    respond_to do |format|
      @data_table.user =current_user
      if @data_table.save
        format.html { redirect_to @data_table, notice: 'Data table was successfully created.' }
        format.json { render :show, status: :created, location: @data_table }
      else
        format.html { render :new }
        format.json { render json: @data_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_tables/1
  # PATCH/PUT /data_tables/1.json
  def update
    respond_to do |format|
      if @data_table.update(data_table_params)
        format.html { redirect_to @data_table, notice: 'Data table was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_table }
      else
        format.html { render :edit }
        format.json { render json: @data_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_tables/1
  # DELETE /data_tables/1.json
  def destroy
    @data_table.destroy
    respond_to do |format|
      format.html { redirect_to data_tables_url, notice: 'Data table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_table
      @data_table = DataTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_table_params
      params.require(:data_table).permit(:name, :user_id)
    end
end
