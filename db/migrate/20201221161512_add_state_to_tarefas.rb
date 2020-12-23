class AddStateToTarefas < ActiveRecord::Migration[6.1]
  def change
    add_column :tarefas, :state, :string, default: 'Pendente'
  end
end
