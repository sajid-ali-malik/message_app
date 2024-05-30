json.extract! content, :id, :value, :content_type, :message_id, :created_at, :updated_at
json.url content_url(content, format: :json)
