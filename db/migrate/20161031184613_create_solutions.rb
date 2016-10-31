class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :first_guess
      t.integer :second_guess
      t.integer :third_guess
      t.string :outcome

      t.timestamps null: false
    end
  end
end
