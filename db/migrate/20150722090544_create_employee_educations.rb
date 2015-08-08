class CreateEmployeeEducations < ActiveRecord::Migration
  def change
    create_table :employee_educations do |t|
      t.integer :employee_id
      t.string :exam_passed
      t.string :board_or_university
      t.string :institut_name
      t.string :specialization
      t.string :marks

      t.timestamps null: false
    end
  end
end
