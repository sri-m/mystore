json.array!(@contacts) do |contact|
  json.extract! contact, :id, :f1, :f2, :f3, :f4, :f5, :f6, :f7, :f8, :f9_id, :f10, :f11, :f12, :f13
  json.url contact_url(contact, format: :json)
end
