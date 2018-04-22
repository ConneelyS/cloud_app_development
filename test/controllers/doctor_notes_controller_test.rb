require 'test_helper'

class DoctorNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_note = doctor_notes(:one)
  end

  test "should get index" do
    get doctor_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_note_url
    assert_response :success
  end

  test "should create doctor_note" do
    assert_difference('DoctorNote.count') do
      post doctor_notes_url, params: { doctor_note: { content: @doctor_note.content, patient_id: @doctor_note.patient_id } }
    end

    assert_redirected_to doctor_note_url(DoctorNote.last)
  end

  test "should show doctor_note" do
    get doctor_note_url(@doctor_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_note_url(@doctor_note)
    assert_response :success
  end

  test "should update doctor_note" do
    patch doctor_note_url(@doctor_note), params: { doctor_note: { content: @doctor_note.content, patient_id: @doctor_note.patient_id } }
    assert_redirected_to doctor_note_url(@doctor_note)
  end

  test "should destroy doctor_note" do
    assert_difference('DoctorNote.count', -1) do
      delete doctor_note_url(@doctor_note)
    end

    assert_redirected_to doctor_notes_url
  end
end
