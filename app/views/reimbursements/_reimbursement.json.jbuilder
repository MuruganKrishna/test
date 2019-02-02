json.extract! reimbursement, :id, :purpose, :cost, :employee_id, :created_at, :updated_at
json.url reimbursement_url(reimbursement, format: :json)
