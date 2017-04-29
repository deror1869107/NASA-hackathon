class ChangeInjuriesInCatalogs < ActiveRecord::Migration[5.1]
	def up
   change_column :catalogs, :injuries, :string
  end

  def down
   change_column :catalogs, :injuries, :integer
  end
end
