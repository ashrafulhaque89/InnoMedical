require "application_system_test_case"

class DoctorAppsTest < ApplicationSystemTestCase
  setup do
    @doctor_app = doctor_apps(:one)
  end

  test "visiting the index" do
    visit doctor_apps_url
    assert_selector "h1", text: "Doctor Apps"
  end

  test "creating a Doctor app" do
    visit doctor_apps_url
    click_on "New Doctor App"

    fill_in "Appointment", with: @doctor_app.appointment_id
    fill_in "Doctor", with: @doctor_app.doctor_id
    click_on "Create Doctor app"

    assert_text "Doctor app was successfully created"
    click_on "Back"
  end

  test "updating a Doctor app" do
    visit doctor_apps_url
    click_on "Edit", match: :first

    fill_in "Appointment", with: @doctor_app.appointment_id
    fill_in "Doctor", with: @doctor_app.doctor_id
    click_on "Update Doctor app"

    assert_text "Doctor app was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor app" do
    visit doctor_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor app was successfully destroyed"
  end
end
