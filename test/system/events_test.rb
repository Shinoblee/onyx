require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Cast machine mat target", with: @event.cast_machine_mat_target
    fill_in "Comp elect assy mat target", with: @event.comp_elect_assy_mat_target
    fill_in "Event name", with: @event.event_name
    fill_in "Line", with: @event.line
    fill_in "Pipe tube mat target", with: @event.pipe_tube_mat_target
    fill_in "Plant", with: @event.plant_id
    fill_in "Plastic mat target", with: @event.plastic_mat_target
    fill_in "Project", with: @event.project_id
    fill_in "Rubber metal mat target", with: @event.rubber_metal_mat_target
    fill_in "Stamp weld mat target", with: @event.stamp_weld_mat_target
    fill_in "Tier3 delivery", with: @event.tier3_delivery
    fill_in "Trim delivery", with: @event.trim_delivery
    fill_in "Trim dsps delivery", with: @event.trim_dsps_delivery
    fill_in "Weld delivery", with: @event.weld_delivery
    fill_in "Weld dsps delivery", with: @event.weld_dsps_delivery
    fill_in "Wire harness mat target", with: @event.wire_harness_mat_target
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Cast machine mat target", with: @event.cast_machine_mat_target
    fill_in "Comp elect assy mat target", with: @event.comp_elect_assy_mat_target
    fill_in "Event name", with: @event.event_name
    fill_in "Line", with: @event.line
    fill_in "Pipe tube mat target", with: @event.pipe_tube_mat_target
    fill_in "Plant", with: @event.plant_id
    fill_in "Plastic mat target", with: @event.plastic_mat_target
    fill_in "Project", with: @event.project_id
    fill_in "Rubber metal mat target", with: @event.rubber_metal_mat_target
    fill_in "Stamp weld mat target", with: @event.stamp_weld_mat_target
    fill_in "Tier3 delivery", with: @event.tier3_delivery
    fill_in "Trim delivery", with: @event.trim_delivery
    fill_in "Trim dsps delivery", with: @event.trim_dsps_delivery
    fill_in "Weld delivery", with: @event.weld_delivery
    fill_in "Weld dsps delivery", with: @event.weld_dsps_delivery
    fill_in "Wire harness mat target", with: @event.wire_harness_mat_target
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
