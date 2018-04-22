json.extract! patient, :id, :first_name, :last_name, :address, :date_birth, :phone, :infection, :injury, :observation, :created_at, :updated_at
json.url patient_url(patient, format: :json)
