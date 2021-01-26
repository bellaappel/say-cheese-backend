class AddHeadshotIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :headshot_id, :string
  end
end
