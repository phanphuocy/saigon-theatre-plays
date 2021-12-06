class AddFieldsToPlays < ActiveRecord::Migration[6.1]
  def change
    add_column :plays, :starts_at, :datetime
  end
end
