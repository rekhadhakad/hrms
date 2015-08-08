class AddFieldsToEmaployee < ActiveRecord::Migration
  def change
  	add_column :employees, :address, :string
  	add_column :employees, :current_address, :string
  	add_column :employees, :home_phone, :string
  	add_column :employees, :mobile_no, :string
  	add_column :employees, :alternet_mobile_no, :string
  	add_column :employees, :email, :string
  	add_column :employees, :father_contact_no, :string
  end
end
