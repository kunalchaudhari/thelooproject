json.array!(@toilets) do |toilet|
  json.extract! toilet, :id, :lat, :lng, :name, :description, :open_hours, :closing_hours, :open_closing_note, :managed_by, :type, :genders, :no_of_toilets, :no_of_bathrooms, :no_of_urinals, :paid
  json.url toilet_url(toilet, format: :json)
end
