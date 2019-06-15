class AddGroupToGroups < ActiveRecord::Migration[5.2]
  def change
  	add_column :groups, :group, :string
  end
end
