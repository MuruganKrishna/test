json.extract! company_detail, :id, :name, :created_at, :updated_at
json.url company_detail_url(company_detail, format: :json)
