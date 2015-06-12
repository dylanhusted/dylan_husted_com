class AddRoleToStartups < ActiveRecord::Migration
  def change
  	add_column :startups, :role, :string
  end
end
