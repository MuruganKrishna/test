json.extract! employee, :id, :name, :email, :designation, :company_detail_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
