json.extract! locker, :id, :lockerNumber, :lockerCombo, :inUse, :resident_id, :lockerNotes, :created_at, :updated_at
json.url locker_url(locker, format: :json)