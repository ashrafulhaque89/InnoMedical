require "application_system_test_case"

class PatientHistoriesTest < ApplicationSystemTestCase
  setup do
    @patient_history = patient_histories(:one)
  end

  test "visiting the index" do
    visit patient_histories_url
    assert_selector "h1", text: "Patient Histories"
  end

  test "creating a Patient history" do
    visit patient_histories_url
    click_on "New Patient History"

    fill_in "Medical history", with: @patient_history.medical_history
    fill_in "Picture", with: @patient_history.picture
    click_on "Create Patient history"

    assert_text "Patient history was successfully created"
    click_on "Back"
  end

  test "updating a Patient history" do
    visit patient_histories_url
    click_on "Edit", match: :first

    fill_in "Medical history", with: @patient_history.medical_history
    fill_in "Picture", with: @patient_history.picture
    click_on "Update Patient history"

    assert_text "Patient history was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient history" do
    visit patient_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient history was successfully destroyed"
  end
end
