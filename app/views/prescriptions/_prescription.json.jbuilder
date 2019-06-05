json.extract! prescription, :id, :medicine_name, :instructions, :prescription_date, :valid_until_date, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
