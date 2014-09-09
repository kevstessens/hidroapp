require 'test_helper'

class DataRowsControllerTest < ActionController::TestCase
  setup do
    @data_row = data_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_row" do
    assert_difference('DataRow.count') do
      post :create, data_row: { big_n: @data_row.big_n, d: @data_row.d, i: @data_row.i, p: @data_row.p, r: @data_row.r, small_n: @data_row.small_n, sub_data_table_id: @data_row.sub_data_table_id, t: @data_row.t, year: @data_row.year }
    end

    assert_redirected_to data_row_path(assigns(:data_row))
  end

  test "should show data_row" do
    get :show, id: @data_row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_row
    assert_response :success
  end

  test "should update data_row" do
    patch :update, id: @data_row, data_row: { big_n: @data_row.big_n, d: @data_row.d, i: @data_row.i, p: @data_row.p, r: @data_row.r, small_n: @data_row.small_n, sub_data_table_id: @data_row.sub_data_table_id, t: @data_row.t, year: @data_row.year }
    assert_redirected_to data_row_path(assigns(:data_row))
  end

  test "should destroy data_row" do
    assert_difference('DataRow.count', -1) do
      delete :destroy, id: @data_row
    end

    assert_redirected_to data_rows_path
  end
end
