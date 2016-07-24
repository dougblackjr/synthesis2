json.extract! drug, :id, :name, :description, :standardtest, :standardDetectionTime, :maxDetectionTime, :created_at, :updated_at
json.url drug_url(drug, format: :json)