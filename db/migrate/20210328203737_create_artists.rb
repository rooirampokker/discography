class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :index
      t.string :name

      t.timestamps
    end
  end
end
