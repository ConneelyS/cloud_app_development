require "application_system_test_case"

class DoctorNotesTest < ApplicationSystemTestCase
  setup do
    @doctor_note = doctor_notes(:one)
  end

  test "visiting the index" do
    visit doctor_notes_url
    assert_selector "h1", text: "Doctor Notes"
  end

  test "creating a Doctor note" do
    visit doctor_notes_url
    click_on "New Doctor Note"

    fill_in "Content", with: @doctor_note.content
    fill_in "Patient", with: @doctor_note.patient_id
    click_on "Create Doctor note"

    assert_text "Doctor note was successfully created"
    click_on "Back"
  end

  test "updating a Doctor note" do
    visit doctor_notes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @doctor_note.content
    fill_in "Patient", with: @doctor_note.patient_id
    click_on "Update Doctor note"

    assert_text "Doctor note was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor note" do
    visit doctor_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor note was successfully destroyed"
  end
end
