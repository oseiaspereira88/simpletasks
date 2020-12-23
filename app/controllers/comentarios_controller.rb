class ComentariosController < ApplicationController
  before_action :set_ajax_respond_to, only: [:create, :show, :edit, :update, :destroy]

  def index
    @comentario = Comentario.new
    @comentarios = Comentario.all.reverse
  end

  def create
    @comentario = Comentario.new(comentario_params)
    @comentario.save
    @comentarios = Comentario.all.reverse
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def edit
  end

  def update
    @comentario = Comentario.find(params[:id])
    @comentario.update(comentario_params)
    @comentarios = Comentario.all.reverse
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    @comentarios = Comentario.all.reverse
  end

  private
  def comentario_params
    params.require(:comentario).permit(:texto)
  end

  def set_ajax_respond_to
    respond_to :js, :html
  end

end
