require 'test_helper'

class PatientProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_profile = patient_profiles(:one)
  end

  test "should get index" do
    get patient_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_profile_url
    assert_response :success
  end

  test "should create patient_profile" do
    assert_difference('PatientProfile.count') do
      post patient_profiles_url, params: { patient_profile: { ethnicity: @patient_profile.ethnicity, gender: @patient_profile.gender } }
    end

    assert_redirected_to patient_profile_url(PatientProfile.last)
  end

  test "should show patient_profile" do
    get patient_profile_url(@patient_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_profile_url(@patient_profile)
    assert_response :success
  end

  test "should update patient_profile" do
    patch patient_profile_url(@patient_profile), params: { patient_profile: { ethnicity: @patient_profile.ethnicity, gender: @patient_profile.gender } }
    assert_redirected_to patient_profile_url(@patient_profile)
  end

  test "should destroy patient_profile" do
    assert_difference('PatientProfile.count', -1) do
      delete patient_profile_url(@patient_profile)
    end

    assert_redirected_to patient_profiles_url
  end
end
