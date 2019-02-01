require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { cast_machine_mat_target: @event.cast_machine_mat_target, comp_elect_assy_mat_target: @event.comp_elect_assy_mat_target, event_name: @event.event_name, line: @event.line, pipe_tube_mat_target: @event.pipe_tube_mat_target, plant_id: @event.plant_id, plastic_mat_target: @event.plastic_mat_target, project_id: @event.project_id, rubber_metal_mat_target: @event.rubber_metal_mat_target, stamp_weld_mat_target: @event.stamp_weld_mat_target, tier3_delivery: @event.tier3_delivery, trim_delivery: @event.trim_delivery, trim_dsps_delivery: @event.trim_dsps_delivery, weld_delivery: @event.weld_delivery, weld_dsps_delivery: @event.weld_dsps_delivery, wire_harness_mat_target: @event.wire_harness_mat_target } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { cast_machine_mat_target: @event.cast_machine_mat_target, comp_elect_assy_mat_target: @event.comp_elect_assy_mat_target, event_name: @event.event_name, line: @event.line, pipe_tube_mat_target: @event.pipe_tube_mat_target, plant_id: @event.plant_id, plastic_mat_target: @event.plastic_mat_target, project_id: @event.project_id, rubber_metal_mat_target: @event.rubber_metal_mat_target, stamp_weld_mat_target: @event.stamp_weld_mat_target, tier3_delivery: @event.tier3_delivery, trim_delivery: @event.trim_delivery, trim_dsps_delivery: @event.trim_dsps_delivery, weld_delivery: @event.weld_delivery, weld_dsps_delivery: @event.weld_dsps_delivery, wire_harness_mat_target: @event.wire_harness_mat_target } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
