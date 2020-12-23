class CreateTarefas < ActiveRecord::Migration[6.1]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.string :descricao
      t.date :entrega_date
      t.timestamps
    end
  end
end
