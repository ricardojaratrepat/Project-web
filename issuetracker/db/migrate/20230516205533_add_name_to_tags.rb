class AddNameToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :name, :string, null: false
  end
end
