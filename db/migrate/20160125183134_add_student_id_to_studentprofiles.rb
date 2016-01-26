class AddStudentIdToStudentprofiles < ActiveRecord::Migration
  def change
    add_column :studentprofiles, :student_id, :integer
  end
end
