class RemoveLocationFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :location
  end
end
