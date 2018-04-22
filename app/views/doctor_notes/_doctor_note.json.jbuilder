json.extract! doctor_note, :id, :content, :patient_id, :created_at, :updated_at
json.url doctor_note_url(doctor_note, format: :json)
