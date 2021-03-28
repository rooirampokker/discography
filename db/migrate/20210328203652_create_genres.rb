class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :index
      t.string :genre

      t.timestamps
    end
  end
end
