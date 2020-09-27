require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { actualStockOnHand: @sale.actualStockOnHand, apncode: @sale.apncode, author: @sale.author, itemDescription: @sale.itemDescription, lastByPrice: @sale.lastByPrice, productCategory: @sale.productCategory, rrp: @sale.rrp, totalDiscountGiven: @sale.totalDiscountGiven, transDate: @sale.transDate, transDocumentNumber: @sale.transDocumentNumber, transRreference: @sale.transRreference, transTime: @sale.transTime, transTotalExtaxValue: @sale.transTotalExtaxValue, transTotaltax: @sale.transTotaltax } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { actualStockOnHand: @sale.actualStockOnHand, apncode: @sale.apncode, author: @sale.author, itemDescription: @sale.itemDescription, lastByPrice: @sale.lastByPrice, productCategory: @sale.productCategory, rrp: @sale.rrp, totalDiscountGiven: @sale.totalDiscountGiven, transDate: @sale.transDate, transDocumentNumber: @sale.transDocumentNumber, transRreference: @sale.transRreference, transTime: @sale.transTime, transTotalExtaxValue: @sale.transTotalExtaxValue, transTotaltax: @sale.transTotaltax } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
