class CreateSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :solutions do |t|
      t.references :ticket, null: false, foreign_key: true
      t.date :date
      t.text :feedback
      t.boolean :selected
      t.integer :evaluation

      t.timestamps
    end
  end
end
