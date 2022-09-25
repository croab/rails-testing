json.extract! event, :id, :title, :description, :price, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
