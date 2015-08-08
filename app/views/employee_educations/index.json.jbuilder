json.array!(@employee_educations) do |employee_education|
  json.extract! employee_education, :id, :employee_id, :exam_passed, :board_or_university, :institut_name, :specialization, :marks
  json.url employee_education_url(employee_education, format: :json)
end
