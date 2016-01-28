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
      t.string :duration
      t.string :num_to_host
      t.boolean :meals
      t.integer :family_id
      t.attachment :image

      t.timestamps null: false
    end
  end
end


