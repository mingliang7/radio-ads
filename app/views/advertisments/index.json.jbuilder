json.array!(@advertisments) do |advertisment|
  json.extract! advertisment, :id, :image, :say
  json.url advertisment_url(advertisment, format: :json)
end
