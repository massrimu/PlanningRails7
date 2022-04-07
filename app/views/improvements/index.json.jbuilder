json.array!(@improvements) do |improvement|
  json.extract! improvement, :id, :title, :author, :principle, :description
  json.url improvement_url(improvement, format: :json)
end
