require 'test_helper'

class ProduntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produnt = produnts(:one)
  end

  test "should get index" do
    get produnts_url
    assert_response :success
  end

  test "should get new" do
    get new_produnt_url
    assert_response :success
  end

  test "should create produnt" do
    assert_difference('Produnt.count') do
      post produnts_url, params: { produnt: { name: @produnt.name, price: @produnt.price, vender: @produnt.vender } }
    end

    assert_redirected_to produnt_url(Produnt.last)
  end

  test "should show produnt" do
    get produnt_url(@produnt)
    assert_response :success
  end

  test "should get edit" do
    get edit_produnt_url(@produnt)
    assert_response :success
  end

  test "should update produnt" do
    patch produnt_url(@produnt), params: { produnt: { name: @produnt.name, price: @produnt.price, vender: @produnt.vender } }
    assert_redirected_to produnt_url(@produnt)
  end

  test "should destroy produnt" do
    assert_difference('Produnt.count', -1) do
      delete produnt_url(@produnt)
    end

    assert_redirected_to produnts_url
  end
end
