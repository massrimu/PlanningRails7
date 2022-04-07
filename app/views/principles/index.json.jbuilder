json.array!(@principles) do |principle|
  json.extract! principle, :id, :title, :author, :description, :image, :casestudy, :case_webpage
  json.url principle_url(principle, format: :json)
end
