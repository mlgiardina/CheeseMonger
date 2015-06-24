json.array!(@cheeses) do |cheese|
  json.extract! cheese, :id, :user_id, :name
  json.url cheese_url(cheese, format: :json)
end
