class DataRowsController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_data_row, only: [:show, :edit, :update, :destroy]

  # GET /data_rows
  # GET /data_rows.json
  def index
    @data_rows = DataRow.all
  end

  # GET /data_rows/1
  # GET /data_rows/1.json
  def show
  end

  # GET /data_rows/new
  def new
    @data_row = DataRow.new
  end

  # GET /data_rows/1/edit
  def edit
  end

  # POST /data_rows
  # POST /data_rows.json
  def create
    @data_row = DataRow.new(data_row_params)

    respond_to do |format|
      if @data_row.save
        format.html { redirect_to @data_row, notice: 'Data row was successfully created.' }
        format.json { render :show, status: :created, location: @data_row }
      else
        format.html { render :new }
        format.json { render json: @data_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_rows/1
  # PATCH/PUT /data_rows/1.json
  def update
    respond_to do |format|
      if @data_row.update(data_row_params)
        format.html { redirect_to @data_row, notice: 'Data row was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_row }
      else
        format.html { render :edit }
        format.json { render json: @data_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_rows/1
  # DELETE /data_rows/1.json
  def destroy
    @data_row.destroy
    respond_to do |format|
      format.html { redirect_to data_rows_url, notice: 'Data row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_row
      @data_row = DataRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_row_params
      params.require(:data_row).permit(:sub_data_table_id, :year, :t, :i, :small_n, :big_n, :p, :r, :d)
    end
end
