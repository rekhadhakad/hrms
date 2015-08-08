class Employee < ActiveRecord::Base
	#has_one :employee_bank_detail
	#has_one :employee_contact
	#has_one :employee_education
	#belongs_to :department
	
  #validates :first_name, :last_name,  :technology,  presence: true
  #validates :employee_no, uniqueness: true, length: { maximum: 8 }
  
    include MultiStepModel
	def self.search(search)
	  where("first_name LIKE ?", "%#{search}%") 
	end

  def self.total_steps
    4
  end
end
