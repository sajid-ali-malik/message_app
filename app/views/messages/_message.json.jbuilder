json.extract! message, :id, :medium, :sent_at, :edited_at, :deleted_at, :created_at, :updated_at
json.url message_url(message, format: :json)
