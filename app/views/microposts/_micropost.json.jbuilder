json.extract! micropost, :id, :doctor_notes, :patient_id, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
