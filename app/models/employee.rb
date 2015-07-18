class Employee < ActiveRecord::Base

	def self.search(search)
	  where("first_name LIKE ?", "%#{search}%") 
	end

end
