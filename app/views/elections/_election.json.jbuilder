json.extract! election, :id, :start_date, :end_date, :groups, :title, :created_at, :updated_at
json.url election_url(election, format: :json)
