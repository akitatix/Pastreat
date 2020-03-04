class CreateBoulangeries < ActiveRecord::Migration[6.0]
  def change
    create_table :boulangeries do |t|
      t.string :name
      t.string :position
      t.string :badge
      t.integer :prix_cr
      t.integer :prix_pc
      t.time :time_open
      t.time :time_close

      t.timestamps
    end
  end
end
