class AddPosterAndCapacityToPlays < ActiveRecord::Migration[6.1]
  def change
    add_column :plays, :image_file_name, :string, default: ""
    add_column :plays, :capacity, :integer, default: 1
  end
end
