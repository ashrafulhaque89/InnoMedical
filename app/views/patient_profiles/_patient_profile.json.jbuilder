json.extract! patient_profile, :id, :gender, :ethnicity, :created_at, :updated_at
json.url patient_profile_url(patient_profile, format: :json)
