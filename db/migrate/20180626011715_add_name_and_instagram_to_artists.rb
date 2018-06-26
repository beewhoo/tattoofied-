class AddNameAndInstagramToArtists < ActiveRecord::Migration[5.2]
  def change
      change_table :artists do |t|
        t.string "name"
        t.string "instagram"
        t.text "phone_number"
      end
    end
  end
