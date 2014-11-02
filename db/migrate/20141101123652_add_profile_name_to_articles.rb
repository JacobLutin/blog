class AddProfileNameToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :profile_name, :string
    add_column :articles, :age, :integer
  end
end
