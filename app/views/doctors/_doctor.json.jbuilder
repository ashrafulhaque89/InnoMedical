json.extract! doctor, :id, :firstname, :lastname, :phone, :field, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
