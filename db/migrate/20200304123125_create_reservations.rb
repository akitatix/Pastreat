class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :price
      t.integer :nb_pc
      t.integer :nb_cr
      t.references :user, null: false, foreign_key: true
      t.references :boulangerie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
