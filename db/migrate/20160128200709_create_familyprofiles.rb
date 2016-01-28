class CreateFamilyprofiles < ActiveRecord::Migration
  def change
    create_table :familyprofiles do |t|
      t.string :fname
      t.string :lname
      t.string :town
      t.integer :zipcode
      t.string :state
      t.text :bio
      t.boolean :pets
      t.string :pet_desc
      t.boolean :children
      t.string :phone
      t.boolean :smokers
      t.boolean :smoking_allowed
      t.string :room_type
      t.string :duration_value

      t.timestamps null: false
    end
  end
end
