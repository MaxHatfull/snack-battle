class AddRedactedNameToChocolates < ActiveRecord::Migration[6.1]
  def change
    add_column :chocolates, :redacted_name, :string
  end
end
