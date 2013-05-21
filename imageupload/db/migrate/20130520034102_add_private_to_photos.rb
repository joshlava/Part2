class AddPrivateToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :private, :boolean
  end
end
