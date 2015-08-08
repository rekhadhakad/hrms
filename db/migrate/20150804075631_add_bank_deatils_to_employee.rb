class AddBankDeatilsToEmployee < ActiveRecord::Migration
  def change
  	add_column :employees, :pan_no, :string
  	add_column :employees, :national_id_no, :string
  	add_column :employees, :bank_acc_no, :string
  	add_column :employees, :ifsc_code, :string
  	add_column :employees, :bank_name, :string
  	add_column :employees, :branch_address, :string
  end
end
