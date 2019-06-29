json.extract! patient_history, :id, :medical_history, :picture, :created_at, :updated_at
json.url patient_history_url(patient_history, format: :json)
