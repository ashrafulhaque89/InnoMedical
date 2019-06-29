require 'test_helper'

class DoctorAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_app = doctor_apps(:one)
  end

  test "should get index" do
    get doctor_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_app_url
    assert_response :success
  end

  test "should create doctor_app" do
    assert_difference('DoctorApp.count') do
      post doctor_apps_url, params: { doctor_app: { appointment_id: @doctor_app.appointment_id, doctor_id: @doctor_app.doctor_id } }
    end

    assert_redirected_to doctor_app_url(DoctorApp.last)
  end

  test "should show doctor_app" do
    get doctor_app_url(@doctor_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_app_url(@doctor_app)
    assert_response :success
  end

  test "should update doctor_app" do
    patch doctor_app_url(@doctor_app), params: { doctor_app: { appointment_id: @doctor_app.appointment_id, doctor_id: @doctor_app.doctor_id } }
    assert_redirected_to doctor_app_url(@doctor_app)
  end

  test "should destroy doctor_app" do
    assert_difference('DoctorApp.count', -1) do
      delete doctor_app_url(@doctor_app)
    end

    assert_redirected_to doctor_apps_url
  end
end
