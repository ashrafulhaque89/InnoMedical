json.extract! appointment, :id, :description, :cost, :startdate, :finishdate, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
