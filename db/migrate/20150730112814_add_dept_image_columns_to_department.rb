class AddDeptImageColumnsToDepartment < ActiveRecord::Migration
  def up
    add_attachment :departments, :dept_img
  end

  def down
    remove_attachment :departments, :dept_img
  end
end
