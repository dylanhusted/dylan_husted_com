class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :bio
      t.text   :description
      t.string :website
      t.text   :links
      t.string :full_logo
      t.string :square_logo
      t.string :stage


      t.timestamps
    end
    add_index :startups, :stage
  end
end
