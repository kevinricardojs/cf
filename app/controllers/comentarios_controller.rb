class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]

  def nuevo
    @comentario = Comentario.new
    @comentarios = Comentario.all
  end

  def create
    @comentario = Comentario.new(comentario_params)
    @comentarios = Comentario.all

    respond_to do |format|
      if @comentario.save

        format.html { render :gracias}
        format.json { render :show, status: :created, location: @comentario }
      else
        format.html { render :nuevo }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

def gracias
      @comentarios = Comentario.all
end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:correo, :mensaje)
    end
end
