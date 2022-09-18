class AddUrlImageToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :url_image, :string
  end
end
