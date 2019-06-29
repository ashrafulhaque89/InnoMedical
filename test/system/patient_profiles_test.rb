require "application_system_test_case"

class PatientProfilesTest < ApplicationSystemTestCase
  setup do
    @patient_profile = patient_profiles(:one)
  end

  test "visiting the index" do
    visit patient_profiles_url
    assert_selector "h1", text: "Patient Profiles"
  end

  test "creating a Patient profile" do
    visit patient_profiles_url
    click_on "New Patient Profile"

    fill_in "Ethnicity", with: @patient_profile.ethnicity
    fill_in "Gender", with: @patient_profile.gender
    click_on "Create Patient profile"

    assert_text "Patient profile was successfully created"
    click_on "Back"
  end

  test "updating a Patient profile" do
    visit patient_profiles_url
    click_on "Edit", match: :first

    fill_in "Ethnicity", with: @patient_profile.ethnicity
    fill_in "Gender", with: @patient_profile.gender
    click_on "Update Patient profile"

    assert_text "Patient profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient profile" do
    visit patient_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient profile was successfully destroyed"
  end
end
