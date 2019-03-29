class CreateAdminPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_preferences do |t|
      t.string :song_order
      t.string :artist_order

      t.timestamps
    end
  end
end
