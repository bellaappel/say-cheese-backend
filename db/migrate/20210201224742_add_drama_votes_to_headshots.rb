class AddDramaVotesToHeadshots < ActiveRecord::Migration[6.0]
  def change
    add_column :headshots, :drama_votes, :integer
  end
end
