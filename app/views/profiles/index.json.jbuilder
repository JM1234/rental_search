json.array!(@profiles) do |profile|
  json.extract! profile, :id, :full_name, :email_address, :address, :about, :contact_no
  json.url profile_url(profile, format: :json)
end
