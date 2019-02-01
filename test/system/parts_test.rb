require "application_system_test_case"

class PartsTest < ApplicationSystemTestCase
  setup do
    @part = parts(:one)
  end

  test "visiting the index" do
    visit parts_url
    assert_selector "h1", text: "Parts"
  end

  test "creating a Part" do
    visit parts_url
    click_on "New Part"

    fill_in "Color", with: @part.color
    fill_in "Makerlayout", with: @part.makerlayout_id
    fill_in "Part name", with: @part.part_name
    fill_in "Part number", with: @part.part_number
    fill_in "Process 1", with: @part.process_1
    fill_in "Process 2", with: @part.process_2
    fill_in "Process 3", with: @part.process_3
    click_on "Create Part"

    assert_text "Part was successfully created"
    click_on "Back"
  end

  test "updating a Part" do
    visit parts_url
    click_on "Edit", match: :first

    fill_in "Color", with: @part.color
    fill_in "Makerlayout", with: @part.makerlayout_id
    fill_in "Part name", with: @part.part_name
    fill_in "Part number", with: @part.part_number
    fill_in "Process 1", with: @part.process_1
    fill_in "Process 2", with: @part.process_2
    fill_in "Process 3", with: @part.process_3
    click_on "Update Part"

    assert_text "Part was successfully updated"
    click_on "Back"
  end

  test "destroying a Part" do
    visit parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part was successfully destroyed"
  end
end
