json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :quantity, :effect, :modifier
  json.url item_url(item, format: :json)
end
