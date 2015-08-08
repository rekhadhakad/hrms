class AddColumnJoinDateToEmployees < ActiveRecord::Migration
  def change
  	remove_column :employees, :date_of_join
    add_column :employees, :joining_date, :date
  end
end





