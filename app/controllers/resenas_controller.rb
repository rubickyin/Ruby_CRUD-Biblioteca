class ResenasController < ApplicationController
  before_action :set_resena, only: %i[ show edit update destroy ]

  # GET /reseñas or /reseñas.json
  def index
    @resenas = Resena.all
  end

  # GET /reseñas/1 or /reseñas/1.json
  def show
  end

  # GET /reseñas/new
  def new
    @resena = Resena.new
  end

  # GET /reseñas/1/edit
  def edit
  end

  # POST /reseñas or /reseñas.json
  def create
    @resena = Resena.new(resena_params)

    respond_to do |format|
      if @resena.save
        format.html { redirect_to @resena, notice: "Reseña was successfully created." }
        format.json { render :show, status: :created, location: @resena }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reseñas/1 or /reseñas/1.json
  def update
    respond_to do |format|
      if @resena.update(resena_params)
        format.html { redirect_to @resena, notice: "Reseña was successfully updated." }
        format.json { render :show, status: :ok, location: @resena }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reseña.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reseñas/1 or /reseñas/1.json
  def destroy
    @resena.destroy!

    respond_to do |format|
      format.html { redirect_to resenas_path, status: :see_other, notice: "Reseña was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resena
      @resena = Resena.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resena_params
      params.require(:resena).permit(:libro_id, :usuario_id, :calificacion, :comentario, :fecha)
    end
end
