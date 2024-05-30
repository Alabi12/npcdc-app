require "test_helper"

class DataCapturingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_capturing = data_capturings(:one)
  end

  test "should get index" do
    get data_capturings_url
    assert_response :success
  end

  test "should get new" do
    get new_data_capturing_url
    assert_response :success
  end

  test "should create data_capturing" do
    assert_difference("DataCapturing.count") do
      post data_capturings_url, params: { data_capturing: { age: @data_capturing.age, contact_number: @data_capturing.contact_number, course: @data_capturing.course, full_name: @data_capturing.full_name, level: @data_capturing.level, participant_class: @data_capturing.participant_class, programme: @data_capturing.programme, project_number: @data_capturing.project_number, school: @data_capturing.school } }
    end

    assert_redirected_to data_capturing_url(DataCapturing.last)
  end

  test "should show data_capturing" do
    get data_capturing_url(@data_capturing)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_capturing_url(@data_capturing)
    assert_response :success
  end

  test "should update data_capturing" do
    patch data_capturing_url(@data_capturing), params: { data_capturing: { age: @data_capturing.age, contact_number: @data_capturing.contact_number, course: @data_capturing.course, full_name: @data_capturing.full_name, level: @data_capturing.level, participant_class: @data_capturing.participant_class, programme: @data_capturing.programme, project_number: @data_capturing.project_number, school: @data_capturing.school } }
    assert_redirected_to data_capturing_url(@data_capturing)
  end

  test "should destroy data_capturing" do
    assert_difference("DataCapturing.count", -1) do
      delete data_capturing_url(@data_capturing)
    end

    assert_redirected_to data_capturings_url
  end
end
