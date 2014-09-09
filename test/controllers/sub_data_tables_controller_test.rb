require 'test_helper'

class SubDataTablesControllerTest < ActionController::TestCase
  setup do
    @sub_data_table = sub_data_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_data_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_data_table" do
    assert_difference('SubDataTable.count') do
      post :create, sub_data_table: { data_table_id: @sub_data_table.data_table_id, time_in_minutes: @sub_data_table.time_in_minutes }
    end

    assert_redirected_to sub_data_table_path(assigns(:sub_data_table))
  end

  test "should show sub_data_table" do
    get :show, id: @sub_data_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_data_table
    assert_response :success
  end

  test "should update sub_data_table" do
    patch :update, id: @sub_data_table, sub_data_table: { data_table_id: @sub_data_table.data_table_id, time_in_minutes: @sub_data_table.time_in_minutes }
    assert_redirected_to sub_data_table_path(assigns(:sub_data_table))
  end

  test "should destroy sub_data_table" do
    assert_difference('SubDataTable.count', -1) do
      delete :destroy, id: @sub_data_table
    end

    assert_redirected_to sub_data_tables_path
  end
end
