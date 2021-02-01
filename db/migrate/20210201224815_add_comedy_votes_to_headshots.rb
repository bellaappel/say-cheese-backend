class AddComedyVotesToHeadshots < ActiveRecord::Migration[6.0]
  def change
    add_column :headshots, :comedy_votes, :integer
  end
end
