json.array!(@schools) do |school|
  json.extract! school, :id, :name, :phone, :residence, :email, :school_type
  json.url school_url(school, format: :json)
end
