class ComentariosController < ApplicationController
  def index
  #solo muestra los programas que hay en BBDD. Solo eso
	#hace el index.
	@comentarios = Comentario.all
	end
  def new
	@comentario = Comentario.new	
	end
  def create
	@comentario = Comentario.new(comentario_params)

		if @comentario.save
			redirect_to comentarios_path, :notice => "Se ha guardado el comentario!"
		else
		    render "new"	
		end
	end
	private
		def comentario_params
			params.require(:comentario).permit(:usuari, :pelicula, :comentari)			
		end
 
end