class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
    	t.string :nome
    	t.datetime :dt_inicio
    	t.datetime :dt_fim
		t.timestamps null: false
    end
  end
end
