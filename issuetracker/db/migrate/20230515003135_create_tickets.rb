class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :requesting_user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :priority
      t.string :state
      t.datetime :incident_date
      t.date :deadline
      t.string :category
      t.references :executive_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
