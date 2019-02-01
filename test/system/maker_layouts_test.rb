require "application_system_test_case"

class MakerLayoutsTest < ApplicationSystemTestCase
  setup do
    @maker_layout = maker_layouts(:one)
  end

  test "visiting the index" do
    visit maker_layouts_url
    assert_selector "h1", text: "Maker Layouts"
  end

  test "creating a Maker layout" do
    visit maker_layouts_url
    click_on "New Maker Layout"

    fill_in "Address", with: @maker_layout.address
    fill_in "City", with: @maker_layout.city
    fill_in "Country", with: @maker_layout.country
    fill_in "Location code", with: @maker_layout.location_code
    fill_in "State", with: @maker_layout.state
    fill_in "Supplier number", with: @maker_layout.supplier_number
    click_on "Create Maker layout"

    assert_text "Maker layout was successfully created"
    click_on "Back"
  end

  test "updating a Maker layout" do
    visit maker_layouts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @maker_layout.address
    fill_in "City", with: @maker_layout.city
    fill_in "Country", with: @maker_layout.country
    fill_in "Location code", with: @maker_layout.location_code
    fill_in "State", with: @maker_layout.state
    fill_in "Supplier number", with: @maker_layout.supplier_number
    click_on "Update Maker layout"

    assert_text "Maker layout was successfully updated"
    click_on "Back"
  end

  test "destroying a Maker layout" do
    visit maker_layouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maker layout was successfully destroyed"
  end
end
