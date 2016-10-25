class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :first_guess
      t.integer :second_guess
      t.integer :third_guess

      t.timestamps null: false
    end
  end
end
