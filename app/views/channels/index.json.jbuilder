json.array!(@channels) do |channel|
  json.extract! channel, :name
  json.url channel_url(channel, format: :json)
end
