json.array!(@news) do |news|
  json.extract! news, :id, :Title, :Content
  json.url news_url(news, format: :json)
end
