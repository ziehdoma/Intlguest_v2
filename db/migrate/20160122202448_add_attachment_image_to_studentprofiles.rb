class AddAttachmentImageToStudentprofiles < ActiveRecord::Migration
  def self.up
    change_table :studentprofiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :studentprofiles, :image
  end
end
