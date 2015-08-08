class Department < ActiveRecord::Base
	has_many :employee
	has_attached_file :dept_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :dept_img, :content_type => /\Aimage\/.*\Z/
end
