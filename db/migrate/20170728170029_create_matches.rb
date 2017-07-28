class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.references :winner, foreign_key: {to_table: :clips}
      t.references :loser, foreign_key: {to_table: :clips}

      t.timestamps
    end
  end
end
