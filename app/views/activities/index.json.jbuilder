json.array!(@activities) do |activity|
  json.extract! activity, :id, :title, :description, :start_time, :end_time, :location, :organizer, :related_link
  json.url activity_url(activity, format: :json)
end
