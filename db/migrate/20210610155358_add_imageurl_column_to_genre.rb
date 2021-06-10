class AddImageurlColumnToGenre < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :img_url, :string
  end
end
