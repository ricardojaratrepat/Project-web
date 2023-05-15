json.extract! ticket, :id, :requesting_user_id, :title, :description, :priority, :state, :incident_date, :deadline, :category, :executive_user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
