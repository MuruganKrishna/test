class Assert < ApplicationRecord
  belongs_to :company_detail
  scope :query,->{Assert.all}
  def self.samquery
    Employee.first
  end
end
