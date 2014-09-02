class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
    	t.string :title
    	t.belongs_to :gallery

    	t.timestamps
    end
  end
end
