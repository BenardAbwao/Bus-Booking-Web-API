class AddPasswordDigestToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :password_digest, :string
  end
end
