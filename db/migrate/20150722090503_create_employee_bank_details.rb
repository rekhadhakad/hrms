class CreateEmployeeBankDetails < ActiveRecord::Migration
  def change
    create_table :employee_bank_details do |t|
      t.integer :employee_id
      t.string :pan_no
      t.string :national_id_no
      t.string :bank_acc_no
      t.string :ifsc_code
      t.string :bank_name
      t.string :branch_address

      t.timestamps null: false
    end
  end
end
