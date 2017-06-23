class AddNameToAdvisor < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :name, :string
  end
end
