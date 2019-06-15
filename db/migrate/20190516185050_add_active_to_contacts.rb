class AddActiveToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :active, :boolean
  end
end
