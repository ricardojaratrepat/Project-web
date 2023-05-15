class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.references :ticket, null: false, foreign_key: true
      t.string :type
      t.binary :file

      t.timestamps
    end
  end
end
