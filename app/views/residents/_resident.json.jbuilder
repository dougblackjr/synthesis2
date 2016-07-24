json.extract! resident, :id, :firstname, :lastname, :dob, :ssn, :picture, :has_active_admission, :restricted, :place_id, :created_at, :updated_at
json.url resident_url(resident, format: :json)