require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "creating a Sale" do
    visit sales_url
    click_on "New Sale"

    fill_in "Actualstockonhand", with: @sale.actualStockOnHand
    fill_in "Apncode", with: @sale.apncode
    fill_in "Author", with: @sale.author
    fill_in "Itemdescription", with: @sale.itemDescription
    fill_in "Lastbyprice", with: @sale.lastByPrice
    fill_in "Productcategory", with: @sale.productCategory
    fill_in "Rrp", with: @sale.rrp
    fill_in "Totaldiscountgiven", with: @sale.totalDiscountGiven
    fill_in "Transdate", with: @sale.transDate
    fill_in "Transdocumentnumber", with: @sale.transDocumentNumber
    fill_in "Transrreference", with: @sale.transRreference
    fill_in "Transtime", with: @sale.transTime
    fill_in "Transtotalextaxvalue", with: @sale.transTotalExtaxValue
    fill_in "Transtotaltax", with: @sale.transTotaltax
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "updating a Sale" do
    visit sales_url
    click_on "Edit", match: :first

    fill_in "Actualstockonhand", with: @sale.actualStockOnHand
    fill_in "Apncode", with: @sale.apncode
    fill_in "Author", with: @sale.author
    fill_in "Itemdescription", with: @sale.itemDescription
    fill_in "Lastbyprice", with: @sale.lastByPrice
    fill_in "Productcategory", with: @sale.productCategory
    fill_in "Rrp", with: @sale.rrp
    fill_in "Totaldiscountgiven", with: @sale.totalDiscountGiven
    fill_in "Transdate", with: @sale.transDate
    fill_in "Transdocumentnumber", with: @sale.transDocumentNumber
    fill_in "Transrreference", with: @sale.transRreference
    fill_in "Transtime", with: @sale.transTime
    fill_in "Transtotalextaxvalue", with: @sale.transTotalExtaxValue
    fill_in "Transtotaltax", with: @sale.transTotaltax
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale" do
    visit sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale was successfully destroyed"
  end
end
