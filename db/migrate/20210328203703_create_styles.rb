class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string :index
      t.string :style

      t.timestamps
    end
  end
end
