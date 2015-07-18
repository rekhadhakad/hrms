json.array!(@employees) do |employee|
  json.extract! employee, :id, :employee_no, :first_name, :middle_name, :last_name, :date_of_birth, :marital_status, :father_name, :mother_name, :department, :technology, :date_of_join
  json.url employee_url(employee, format: :json)
end
