require "application_system_test_case"

class ToolingsTest < ApplicationSystemTestCase
  setup do
    @tooling = toolings(:one)
  end

  test "visiting the index" do
    visit toolings_url
    assert_selector "h1", text: "Toolings"
  end

  test "creating a Tooling" do
    visit toolings_url
    click_on "New Tooling"

    fill_in "Commodity", with: @tooling.commodity
    fill_in "Deliver to", with: @tooling.deliver_to
    fill_in "Go1 1 actual", with: @tooling.go1_1_actual
    fill_in "Go1 1 correlated", with: @tooling.go1_1_correlated
    fill_in "Go1 1 design number", with: @tooling.go1_1_design_number
    fill_in "Go1 1 design target", with: @tooling.go1_1_design_target
    fill_in "Go1 1 target", with: @tooling.go1_1_target
    fill_in "Go1 2 actual", with: @tooling.go1_2_actual
    fill_in "Go1 2 design number", with: @tooling.go1_2_design_number
    fill_in "Go1 2 target", with: @tooling.go1_2_target
    fill_in "Go1 go2 lt", with: @tooling.go1_go2_lt
    fill_in "Go2 1 actual", with: @tooling.go2_1_actual
    fill_in "Go2 1 design number", with: @tooling.go2_1_design_number
    fill_in "Go2 2 actual", with: @tooling.go2_2_actual
    fill_in "Go2 2 correlated", with: @tooling.go2_2_correlated
    fill_in "Go2 2 design number", with: @tooling.go2_2_design_number
    fill_in "Go2 2 design target", with: @tooling.go2_2_design_target
    fill_in "Go2 2 target", with: @tooling.go2_2_target
    fill_in "Go2 3 actual", with: @tooling.go2_3_actual
    fill_in "Go2 3 design change", with: @tooling.go2_3_design_change
    fill_in "Go2 t1 lt", with: @tooling.go2_t1_lt
    fill_in "Part level", with: @tooling.part_level
    fill_in "Part type", with: @tooling.part_type
    fill_in "Raw material lt", with: @tooling.raw_material_lt
    fill_in "T1 t2 lt", with: @tooling.t1_t2_lt
    fill_in "T2 t3 lt", with: @tooling.t2_t3_lt
    fill_in "T3 t4 lt", with: @tooling.t3_t4_lt
    fill_in "T4 linetry lt", with: @tooling.t4_linetry_lt
    fill_in "Tool source", with: @tooling.tool_source
    click_on "Create Tooling"

    assert_text "Tooling was successfully created"
    click_on "Back"
  end

  test "updating a Tooling" do
    visit toolings_url
    click_on "Edit", match: :first

    fill_in "Commodity", with: @tooling.commodity
    fill_in "Deliver to", with: @tooling.deliver_to
    fill_in "Go1 1 actual", with: @tooling.go1_1_actual
    fill_in "Go1 1 correlated", with: @tooling.go1_1_correlated
    fill_in "Go1 1 design number", with: @tooling.go1_1_design_number
    fill_in "Go1 1 design target", with: @tooling.go1_1_design_target
    fill_in "Go1 1 target", with: @tooling.go1_1_target
    fill_in "Go1 2 actual", with: @tooling.go1_2_actual
    fill_in "Go1 2 design number", with: @tooling.go1_2_design_number
    fill_in "Go1 2 target", with: @tooling.go1_2_target
    fill_in "Go1 go2 lt", with: @tooling.go1_go2_lt
    fill_in "Go2 1 actual", with: @tooling.go2_1_actual
    fill_in "Go2 1 design number", with: @tooling.go2_1_design_number
    fill_in "Go2 2 actual", with: @tooling.go2_2_actual
    fill_in "Go2 2 correlated", with: @tooling.go2_2_correlated
    fill_in "Go2 2 design number", with: @tooling.go2_2_design_number
    fill_in "Go2 2 design target", with: @tooling.go2_2_design_target
    fill_in "Go2 2 target", with: @tooling.go2_2_target
    fill_in "Go2 3 actual", with: @tooling.go2_3_actual
    fill_in "Go2 3 design change", with: @tooling.go2_3_design_change
    fill_in "Go2 t1 lt", with: @tooling.go2_t1_lt
    fill_in "Part level", with: @tooling.part_level
    fill_in "Part type", with: @tooling.part_type
    fill_in "Raw material lt", with: @tooling.raw_material_lt
    fill_in "T1 t2 lt", with: @tooling.t1_t2_lt
    fill_in "T2 t3 lt", with: @tooling.t2_t3_lt
    fill_in "T3 t4 lt", with: @tooling.t3_t4_lt
    fill_in "T4 linetry lt", with: @tooling.t4_linetry_lt
    fill_in "Tool source", with: @tooling.tool_source
    click_on "Update Tooling"

    assert_text "Tooling was successfully updated"
    click_on "Back"
  end

  test "destroying a Tooling" do
    visit toolings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tooling was successfully destroyed"
  end
end
