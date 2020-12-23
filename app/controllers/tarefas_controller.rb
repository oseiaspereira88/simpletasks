class TarefasController < ApplicationController
  before_action :set_ajax_respond_to, only: [:create, :show, :edit, :update, :destroy]

  def index
    @tarefa = Tarefa.new
    @tarefas = Tarefa.all.reverse
  end

  def create
    @tarefa = Tarefa.new(tarefa_params)
    @tarefa.save
    @tarefas = Tarefa.all.reverse
  end

  def show
    @tarefa = Tarefa.find(params[:id])
  end

  def update
    @tarefa = Tarefa.find(params[:id])
    @tarefa.update(tarefa_params)
    @tarefas = Tarefa.all.reverse
  end

  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy
    @tarefas = Tarefa.all.reverse
  end

  def tarefa_params
    params.require(:tarefa).permit(:titulo, :descricao, :entrega_date)
  end

  def set_ajax_respond_to
    respond_to :js, :html
  end
end
