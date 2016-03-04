require 'test_helper'

class StockTransControllerTest < ActionController::TestCase
  setup do
    @stock_tran = stock_tran(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_tran)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_tran" do
    assert_difference('StockTran.count') do
      post :create, stock_tran: { aufnr: @stock_tran.aufnr, barcode_id: @stock_tran.barcode_id, created_by: @stock_tran.created_by, created_ip: @stock_tran.created_ip, created_mac: @stock_tran.created_mac, ebeln: @stock_tran.ebeln, ebelp: @stock_tran.ebelp, lgort: @stock_tran.lgort, lgort_old: @stock_tran.lgort_old, master_id: @stock_tran.master_id, mblnr: @stock_tran.mblnr, meins: @stock_tran.meins, mjahr: @stock_tran.mjahr, mtype: @stock_tran.mtype, posnr: @stock_tran.posnr, prdln: @stock_tran.prdln, qty: @stock_tran.qty, status: @stock_tran.status, updated_by: @stock_tran.updated_by, updated_ip: @stock_tran.updated_ip, updated_mac: @stock_tran.updated_mac, vbeln: @stock_tran.vbeln, zeile: @stock_tran.zeile }
    end

    assert_redirected_to stock_tran_path(assigns(:stock_tran))
  end

  test "should show stock_tran" do
    get :show, id: @stock_tran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_tran
    assert_response :success
  end

  test "should update stock_tran" do
    patch :update, id: @stock_tran, stock_tran: { aufnr: @stock_tran.aufnr, barcode_id: @stock_tran.barcode_id, created_by: @stock_tran.created_by, created_ip: @stock_tran.created_ip, created_mac: @stock_tran.created_mac, ebeln: @stock_tran.ebeln, ebelp: @stock_tran.ebelp, lgort: @stock_tran.lgort, lgort_old: @stock_tran.lgort_old, master_id: @stock_tran.master_id, mblnr: @stock_tran.mblnr, meins: @stock_tran.meins, mjahr: @stock_tran.mjahr, mtype: @stock_tran.mtype, posnr: @stock_tran.posnr, prdln: @stock_tran.prdln, qty: @stock_tran.qty, status: @stock_tran.status, updated_by: @stock_tran.updated_by, updated_ip: @stock_tran.updated_ip, updated_mac: @stock_tran.updated_mac, vbeln: @stock_tran.vbeln, zeile: @stock_tran.zeile }
    assert_redirected_to stock_tran_path(assigns(:stock_tran))
  end

  test "should destroy stock_tran" do
    assert_difference('StockTran.count', -1) do
      delete :destroy, id: @stock_tran
    end

    assert_redirected_to stock_trans_path
  end
end
