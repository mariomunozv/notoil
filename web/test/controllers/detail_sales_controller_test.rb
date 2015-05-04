require 'test_helper'

class DetailSalesControllerTest < ActionController::TestCase
  setup do
    @detail_sale = detail_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_sale" do
    assert_difference('DetailSale.count') do
      post :create, detail_sale: { name: @detail_sale.name, product_id: @detail_sale.product_id, quantity: @detail_sale.quantity, sale_id: @detail_sale.sale_id, valor: @detail_sale.valor }
    end

    assert_redirected_to detail_sale_path(assigns(:detail_sale))
  end

  test "should show detail_sale" do
    get :show, id: @detail_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_sale
    assert_response :success
  end

  test "should update detail_sale" do
    patch :update, id: @detail_sale, detail_sale: { name: @detail_sale.name, product_id: @detail_sale.product_id, quantity: @detail_sale.quantity, sale_id: @detail_sale.sale_id, valor: @detail_sale.valor }
    assert_redirected_to detail_sale_path(assigns(:detail_sale))
  end

  test "should destroy detail_sale" do
    assert_difference('DetailSale.count', -1) do
      delete :destroy, id: @detail_sale
    end

    assert_redirected_to detail_sales_path
  end
end
