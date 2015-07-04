json.array!(@projects) do |project|
  json.extract! project, :id, :name, :deadline, :done, :duration, :user_id
  json.url project_url(project, format: :json)
end
