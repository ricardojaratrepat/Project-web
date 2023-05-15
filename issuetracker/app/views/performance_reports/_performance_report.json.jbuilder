json.extract! performance_report, :id, :executive_user_id, :created_tickets, :closed_tickets, :open_tickets, :average_evaluation, :created_at, :updated_at
json.url performance_report_url(performance_report, format: :json)
