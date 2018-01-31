json.extract! gossip, :id, :anonymous_author, :content, :created_at, :updated_at
json.url gossip_url(gossip, format: :json)
