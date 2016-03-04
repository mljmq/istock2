require 'test_helper'

class BarcodesControllerTest < ActionController::TestCase
  setup do
    @barcode = barcode(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barcode)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barcode" do
    assert_difference('Barcode.count') do
      post :create, barcode: { child: @barcode.child, lgort: @barcode.lgort, menge: @barcode.menge, name: @barcode.name, parent_id: @barcode.parent_id, status: @barcode.status, stock_master_id: @barcode.stock_master_id }
    end

    assert_redirected_to barcode_path(assigns(:barcode))
  end

  test "should show barcode" do
    get :show, id: @barcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barcode
    assert_response :success
  end

  test "should update barcode" do
    patch :update, id: @barcode, barcode: { child: @barcode.child, lgort: @barcode.lgort, menge: @barcode.menge, name: @barcode.name, parent_id: @barcode.parent_id, status: @barcode.status, stock_master_id: @barcode.stock_master_id }
    assert_redirected_to barcode_path(assigns(:barcode))
  end

  test "should destroy barcode" do
    assert_difference('Barcode.count', -1) do
      delete :destroy, id: @barcode
    end

    assert_redirected_to barcodes_path
  end
end
