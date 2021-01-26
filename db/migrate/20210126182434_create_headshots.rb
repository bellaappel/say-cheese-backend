class CreateHeadshots < ActiveRecord::Migration[6.0]
  def change
    create_table :headshots do |t|
      t.string :image_src
      t.text :caption

      t.timestamps
    end
  end
end
