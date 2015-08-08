json.array!(@employee_bank_details) do |employee_bank_detail|
  json.extract! employee_bank_detail, :id, :employee_id, :pan_no, :national_id_no, :bank_acc_no, :ifsc_code, :bank_name, :branch_address
  json.url employee_bank_detail_url(employee_bank_detail, format: :json)
end
