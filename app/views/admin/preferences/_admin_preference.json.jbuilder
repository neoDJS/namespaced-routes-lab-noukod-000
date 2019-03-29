json.extract! admin_preference, :id, :song_order, :artist_order, :created_at, :updated_at
json.url admin_preference_url(admin_preference, format: :json)
