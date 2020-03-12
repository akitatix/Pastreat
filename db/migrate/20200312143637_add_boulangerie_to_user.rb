class AddBoulangerieToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :boulangerie, foreign_key: true
  end
end
