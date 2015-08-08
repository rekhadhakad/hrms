class CreateEmployeeContacts < ActiveRecord::Migration
  def change
    create_table :employee_contacts do |t|
      t.integer :employee_id
      t.text :address
      t.text :current_address
      t.string :home_phone
      t.string :mobile_no
      t.string :alternet_mobile_no
      t.string :email
      t.string :father_contact_no

      t.timestamps null: false
    end
  end
end
