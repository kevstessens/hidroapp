class SubDataTablesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_sub_data_table, only: [:show, :edit, :update, :destroy]

  # GET /sub_data_tables
  # GET /sub_data_tables.json
  def index
    @sub_data_tables = SubDataTable.all
  end

  # GET /sub_data_tables/1
  # GET /sub_data_tables/1.json
  def show
  end

  # GET /sub_data_tables/new
  def new
    @data_table = DataTable.find(params[:data_table_id])
    @sub_data_table = SubDataTable.new
    @sub_data_table.data_table_id = params[:data_table_id]
  end

  # GET /sub_data_tables/1/edit
  def edit
  end

  # POST /sub_data_tables
  # POST /sub_data_tables.json
  def create
    @sub_data_table = SubDataTable.new(sub_data_table_params)

    respond_to do |format|
      if @sub_data_table.save
        format.html { redirect_to @sub_data_table.data_table, notice: 'Se creó el set de datos correctamente.' }
        format.json { render :show, status: :created, location: @sub_data_table }
      else
        format.html { render :new }
        format.json { render json: @sub_data_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_data_tables/1
  # PATCH/PUT /sub_data_tables/1.json
  def update
    respond_to do |format|
      if @sub_data_table.update(sub_data_table_params)
        format.html { redirect_to @sub_data_table, notice: 'Sub data table was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_data_table }
      else
        format.html { render :edit }
        format.json { render json: @sub_data_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_data_tables/1
  # DELETE /sub_data_tables/1.json
  def destroy
    @sub_data_table.destroy
    respond_to do |format|
      format.html { redirect_to sub_data_tables_url, notice: 'Sub data table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_data_table
      @sub_data_table = SubDataTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_data_table_params
      params.require(:sub_data_table).permit(:data_table_id, :time_in_minutes,
                                             data_rows_attributes: [:t,:year,:sub_data_table_id, :id])
    end
end
