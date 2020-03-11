class AddImageToBoulangerie < ActiveRecord::Migration[6.0]
  def change
    add_column :boulangeries, :image, :string
  end
end
