json.array!(@symptoms) do |symptom|
  json.extract! symptom, :id, :name, :diseases_id
  json.url symptom_url(symptom, format: :json)
end
