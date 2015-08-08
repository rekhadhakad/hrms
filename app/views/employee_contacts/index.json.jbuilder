json.array!(@employee_contacts) do |employee_contact|
  json.extract! employee_contact, :id, :employee_id, :address, :current_address, :home_phone, :mobile_no, :alternet_mobile_no, :email, :father_contact_no
  json.url employee_contact_url(employee_contact, format: :json)
end
