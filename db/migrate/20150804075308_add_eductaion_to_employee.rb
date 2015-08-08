class AddEductaionToEmployee < ActiveRecord::Migration
  def change
  	 add_column :employees, :exam_passed, :string
  	 add_column :employees, :board_or_university, :string
  	 add_column :employees, :institut_name, :string
  	 add_column :employees, :specialization, :string
  	 add_column :employees, :marks, :string
  end
end
