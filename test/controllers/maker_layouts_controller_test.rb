require 'test_helper'

class MakerLayoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maker_layout = maker_layouts(:one)
  end

  test "should get index" do
    get maker_layouts_url
    assert_response :success
  end

  test "should get new" do
    get new_maker_layout_url
    assert_response :success
  end

  test "should create maker_layout" do
    assert_difference('MakerLayout.count') do
      post maker_layouts_url, params: { maker_layout: { address: @maker_layout.address, city: @maker_layout.city, country: @maker_layout.country, location_code: @maker_layout.location_code, state: @maker_layout.state, supplier_number: @maker_layout.supplier_number } }
    end

    assert_redirected_to maker_layout_url(MakerLayout.last)
  end

  test "should show maker_layout" do
    get maker_layout_url(@maker_layout)
    assert_response :success
  end

  test "should get edit" do
    get edit_maker_layout_url(@maker_layout)
    assert_response :success
  end

  test "should update maker_layout" do
    patch maker_layout_url(@maker_layout), params: { maker_layout: { address: @maker_layout.address, city: @maker_layout.city, country: @maker_layout.country, location_code: @maker_layout.location_code, state: @maker_layout.state, supplier_number: @maker_layout.supplier_number } }
    assert_redirected_to maker_layout_url(@maker_layout)
  end

  test "should destroy maker_layout" do
    assert_difference('MakerLayout.count', -1) do
      delete maker_layout_url(@maker_layout)
    end

    assert_redirected_to maker_layouts_url
  end
end
