class AddPhoneNumberToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :phone_number, :integer
  end
end
