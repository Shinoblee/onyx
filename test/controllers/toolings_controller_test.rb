require 'test_helper'

class ToolingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tooling = toolings(:one)
  end

  test "should get index" do
    get toolings_url
    assert_response :success
  end

  test "should get new" do
    get new_tooling_url
    assert_response :success
  end

  test "should create tooling" do
    assert_difference('Tooling.count') do
      post toolings_url, params: { tooling: { commodity: @tooling.commodity, deliver_to: @tooling.deliver_to, go1_1_actual: @tooling.go1_1_actual, go1_1_correlated: @tooling.go1_1_correlated, go1_1_design_number: @tooling.go1_1_design_number, go1_1_design_target: @tooling.go1_1_design_target, go1_1_target: @tooling.go1_1_target, go1_2_actual: @tooling.go1_2_actual, go1_2_design_number: @tooling.go1_2_design_number, go1_2_target: @tooling.go1_2_target, go1_go2_lt: @tooling.go1_go2_lt, go2_1_actual: @tooling.go2_1_actual, go2_1_design_number: @tooling.go2_1_design_number, go2_2_actual: @tooling.go2_2_actual, go2_2_correlated: @tooling.go2_2_correlated, go2_2_design_number: @tooling.go2_2_design_number, go2_2_design_target: @tooling.go2_2_design_target, go2_2_target: @tooling.go2_2_target, go2_3_actual: @tooling.go2_3_actual, go2_3_design_change: @tooling.go2_3_design_change, go2_t1_lt: @tooling.go2_t1_lt, part_level: @tooling.part_level, part_type: @tooling.part_type, raw_material_lt: @tooling.raw_material_lt, t1_t2_lt: @tooling.t1_t2_lt, t2_t3_lt: @tooling.t2_t3_lt, t3_t4_lt: @tooling.t3_t4_lt, t4_linetry_lt: @tooling.t4_linetry_lt, tool_source: @tooling.tool_source } }
    end

    assert_redirected_to tooling_url(Tooling.last)
  end

  test "should show tooling" do
    get tooling_url(@tooling)
    assert_response :success
  end

  test "should get edit" do
    get edit_tooling_url(@tooling)
    assert_response :success
  end

  test "should update tooling" do
    patch tooling_url(@tooling), params: { tooling: { commodity: @tooling.commodity, deliver_to: @tooling.deliver_to, go1_1_actual: @tooling.go1_1_actual, go1_1_correlated: @tooling.go1_1_correlated, go1_1_design_number: @tooling.go1_1_design_number, go1_1_design_target: @tooling.go1_1_design_target, go1_1_target: @tooling.go1_1_target, go1_2_actual: @tooling.go1_2_actual, go1_2_design_number: @tooling.go1_2_design_number, go1_2_target: @tooling.go1_2_target, go1_go2_lt: @tooling.go1_go2_lt, go2_1_actual: @tooling.go2_1_actual, go2_1_design_number: @tooling.go2_1_design_number, go2_2_actual: @tooling.go2_2_actual, go2_2_correlated: @tooling.go2_2_correlated, go2_2_design_number: @tooling.go2_2_design_number, go2_2_design_target: @tooling.go2_2_design_target, go2_2_target: @tooling.go2_2_target, go2_3_actual: @tooling.go2_3_actual, go2_3_design_change: @tooling.go2_3_design_change, go2_t1_lt: @tooling.go2_t1_lt, part_level: @tooling.part_level, part_type: @tooling.part_type, raw_material_lt: @tooling.raw_material_lt, t1_t2_lt: @tooling.t1_t2_lt, t2_t3_lt: @tooling.t2_t3_lt, t3_t4_lt: @tooling.t3_t4_lt, t4_linetry_lt: @tooling.t4_linetry_lt, tool_source: @tooling.tool_source } }
    assert_redirected_to tooling_url(@tooling)
  end

  test "should destroy tooling" do
    assert_difference('Tooling.count', -1) do
      delete tooling_url(@tooling)
    end

    assert_redirected_to toolings_url
  end
end
