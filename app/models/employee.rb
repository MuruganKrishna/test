class Employee < ApplicationRecord
  belongs_to :company_detail
  has_many :attendances
  has_many :reimbursement
  has_one :salary
end
