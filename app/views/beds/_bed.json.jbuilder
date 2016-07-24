json.extract! bed, :id, :bedNumber, :place_id, :bedLocation, :occupied, :resident_id, :bedNotes, :created_at, :updated_at
json.url bed_url(bed, format: :json)