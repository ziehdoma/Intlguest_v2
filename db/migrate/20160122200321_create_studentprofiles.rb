class CreateStudentprofiles < ActiveRecord::Migration
  def change
    create_table :studentprofiles do |t|
      t.string :fname
      t.string :lname
      t.text :bio
      t.string :university
      t.integer :zipcode
      t.string :planguage
      t.string :slanguage
      t.boolean :smoker
      t.boolean :allergies
      t.text :all_desc
      t.datetime :startduration
      t.datetime :endduration
      t.string :phone

      t.timestamps null: false
    end
  end
end
