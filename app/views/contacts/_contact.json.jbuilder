json.extract! contact, :id, :name, :message_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
