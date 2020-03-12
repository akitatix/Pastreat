class AddEmailToBoulangeries < ActiveRecord::Migration[6.0]
  def change
    add_column :boulangeries, :email, :string
  end
end
