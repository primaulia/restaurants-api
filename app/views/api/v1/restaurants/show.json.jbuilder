json.extract! @restaurant, :id, :name, :address, :created_at, :user_id
json.comments @comments do |comment|
  json.extract! comment, :content, :user_id
end
