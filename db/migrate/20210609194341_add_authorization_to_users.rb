class AddAuthorizationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :authorized_user, :boolean
  end
end
