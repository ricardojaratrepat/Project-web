json.extract! document, :id, :ticket_id, :type, :file, :created_at, :updated_at
json.url document_url(document, format: :json)
