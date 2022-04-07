json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :description, :image, :webpage
  json.url book_url(book, format: :json)
end
