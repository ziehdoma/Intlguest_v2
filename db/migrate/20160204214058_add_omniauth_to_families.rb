class AddOmniauthToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :provider, :string
    add_column :families, :uid, :string
  end
end
