class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :studentprofile, index: true, foreign_key: true
      t.references :familyprofile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
