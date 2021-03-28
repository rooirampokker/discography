class AddStyleToArtists < ActiveRecord::Migration[5.0]
  def change
    add_reference :artists, :style, foreign_key: true
  end
end
