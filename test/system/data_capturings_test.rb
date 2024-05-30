require "application_system_test_case"

class DataCapturingsTest < ApplicationSystemTestCase
  setup do
    @data_capturing = data_capturings(:one)
  end

  test "visiting the index" do
    visit data_capturings_url
    assert_selector "h1", text: "Data capturings"
  end

  test "should create data capturing" do
    visit data_capturings_url
    click_on "New data capturing"

    fill_in "Age", with: @data_capturing.age
    fill_in "Contact number", with: @data_capturing.contact_number
    fill_in "Course", with: @data_capturing.course
    fill_in "Full name", with: @data_capturing.full_name
    fill_in "Level", with: @data_capturing.level
    fill_in "Participant class", with: @data_capturing.participant_class
    fill_in "Programme", with: @data_capturing.programme
    fill_in "Project number", with: @data_capturing.project_number
    fill_in "School", with: @data_capturing.school
    click_on "Create Data capturing"

    assert_text "Data capturing was successfully created"
    click_on "Back"
  end

  test "should update Data capturing" do
    visit data_capturing_url(@data_capturing)
    click_on "Edit this data capturing", match: :first

    fill_in "Age", with: @data_capturing.age
    fill_in "Contact number", with: @data_capturing.contact_number
    fill_in "Course", with: @data_capturing.course
    fill_in "Full name", with: @data_capturing.full_name
    fill_in "Level", with: @data_capturing.level
    fill_in "Participant class", with: @data_capturing.participant_class
    fill_in "Programme", with: @data_capturing.programme
    fill_in "Project number", with: @data_capturing.project_number
    fill_in "School", with: @data_capturing.school
    click_on "Update Data capturing"

    assert_text "Data capturing was successfully updated"
    click_on "Back"
  end

  test "should destroy Data capturing" do
    visit data_capturing_url(@data_capturing)
    click_on "Destroy this data capturing", match: :first

    assert_text "Data capturing was successfully destroyed"
  end
end
