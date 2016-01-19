class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places, :force => true do |t|

    	t.string :name
    	t.date :date
	    t.text :description
	    t.string :address
	    t.string :category

      	t.timestamps
    end
  end
end
