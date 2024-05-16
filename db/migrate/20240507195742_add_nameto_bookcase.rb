class AddNametoBookcase < ActiveRecord::Migration[7.1]
  def change
    add_column :bookcases, :name, :string
  end
end
