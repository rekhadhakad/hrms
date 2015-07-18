class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_no
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :marital_status
      t.string :father_name
      t.string :mother_name
      t.string :department
      t.string :technology
      t.string :date_of_join

      t.timestamps null: false
    end
  end
end
