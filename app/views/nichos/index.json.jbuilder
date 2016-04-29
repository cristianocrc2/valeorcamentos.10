json.array!(@nichos) do |nicho|
  json.extract! nicho, :id, :nicho, :ativo
  json.url nicho_url(nicho, format: :json)
end
