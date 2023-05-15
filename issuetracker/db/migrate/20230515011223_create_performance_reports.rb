class CreatePerformanceReports < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_reports do |t|
      t.references :executive_user, null: false, foreign_key: true
      t.integer :created_tickets
      t.integer :closed_tickets
      t.integer :open_tickets
      t.float :average_evaluation

      t.timestamps
    end
  end
end
