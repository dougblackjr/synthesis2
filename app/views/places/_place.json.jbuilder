json.extract! place, :id, :name, :address, :city, :state, :country, :zip, :phone, :created_at, :updated_at
json.url place_url(place, format: :json)