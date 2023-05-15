json.extract! comment, :id, :ticket_id, :text, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
