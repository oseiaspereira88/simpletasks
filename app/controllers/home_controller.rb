class HomeController < ApplicationController
  before_action :set_ajax_respond_to, only: [:create, :show, :edit, :update, :destroy]

  def index
    @tarefa = Tarefa.new
    @tarefas = Tarefa.all.reverse
    @comentario = Comentario.new
    @comentarios = Comentario.all.reverse
  end

  def set_ajax_respond_to
    respond_to :js, :html
  end

end
