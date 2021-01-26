class AddUserIdToHeadshots < ActiveRecord::Migration[6.0]
  def change
    add_column :headshots, :user_id, :string
  end
end
