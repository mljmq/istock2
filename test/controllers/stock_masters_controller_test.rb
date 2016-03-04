require 'test_helper'

class StockMastersControllerTest < ActionController::TestCase
  setup do
    @stock_master = stock_master(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_master)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_master" do
    assert_difference('StockMaster.count') do
      post :create, stock_master: { aufnr: @stock_master.aufnr, box_cnt: @stock_master.box_cnt, charg: @stock_master.charg, ebeln: @stock_master.ebeln, ebelp: @stock_master.ebelp, maktx: @stock_master.maktx, matkl: @stock_master.matkl, matnr: @stock_master.matnr, mblnr: @stock_master.mblnr, meins: @stock_master.meins, menge: @stock_master.menge, mjahr: @stock_master.mjahr, pallet_cnt: @stock_master.pallet_cnt, prdln: @stock_master.prdln, werks: @stock_master.werks, zeile: @stock_master.zeile }
    end

    assert_redirected_to stock_master_path(assigns(:stock_master))
  end

  test "should show stock_master" do
    get :show, id: @stock_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_master
    assert_response :success
  end

  test "should update stock_master" do
    patch :update, id: @stock_master, stock_master: { aufnr: @stock_master.aufnr, box_cnt: @stock_master.box_cnt, charg: @stock_master.charg, ebeln: @stock_master.ebeln, ebelp: @stock_master.ebelp, maktx: @stock_master.maktx, matkl: @stock_master.matkl, matnr: @stock_master.matnr, mblnr: @stock_master.mblnr, meins: @stock_master.meins, menge: @stock_master.menge, mjahr: @stock_master.mjahr, pallet_cnt: @stock_master.pallet_cnt, prdln: @stock_master.prdln, werks: @stock_master.werks, zeile: @stock_master.zeile }
    assert_redirected_to stock_master_path(assigns(:stock_master))
  end

  test "should destroy stock_master" do
    assert_difference('StockMaster.count', -1) do
      delete :destroy, id: @stock_master
    end

    assert_redirected_to stock_masters_path
  end
end
