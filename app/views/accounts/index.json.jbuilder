json.array!(@accounts) do |account|
  json.extract! account, :id, :user_name, :description, :premium, :income
  json.url account_url(account, format: :json)
end
