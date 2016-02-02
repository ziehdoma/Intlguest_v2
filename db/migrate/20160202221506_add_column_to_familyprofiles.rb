class AddColumnToFamilyprofiles < ActiveRecord::Migration
  def change
    add_column :familyprofiles, :availability, :boolean
  end
end
