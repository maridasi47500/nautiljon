class LivresDramasController < ApplicationController
  before_action :set__livres_drama, only: %i[ show edit update destroy ]

  # GET /_livres_dramas or /_livres_dramas.json
  def index
    @_livres_dramas = LivresDrama.all
  end

  # GET /_livres_dramas/1 or /_livres_dramas/1.json
  def show
  end

  # GET /_livres_dramas/new
  def new
    @_livres_drama = LivresDrama.new
  end

  # GET /_livres_dramas/1/edit
  def edit
  end

  # POST /_livres_dramas or /_livres_dramas.json
  def create
    @_livres_drama = LivresDrama.new(_livres_drama_params)

    respond_to do |format|
      if @_livres_drama.save
        format.html { redirect_to _livres_drama_url(@_livres_drama), notice: "Livres drama was successfully created." }
        format.json { render :show, status: :created, location: @_livres_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_dramas/1 or /_livres_dramas/1.json
  def update
    respond_to do |format|
      if @_livres_drama.update(_livres_drama_params)
        format.html { redirect_to _livres_drama_url(@_livres_drama), notice: "Livres drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_dramas/1 or /_livres_dramas/1.json
  def destroy
    @_livres_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_dramas_url, notice: "Livres drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_drama
      @_livres_drama = LivresDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_drama_params
      params.require(:_livres_drama).permit(:name)
    end
end
