class DropPhotosTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :photos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
    
end
