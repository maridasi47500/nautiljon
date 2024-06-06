class BrevesBeauLivresController < ApplicationController
  before_action :set__breves_beau_livre, only: %i[ show edit update destroy ]

  # GET /_breves_beau_livres or /_breves_beau_livres.json
  def index
    @_breves_beau_livres = BrevesBeauLivre.all
  end

  # GET /_breves_beau_livres/1 or /_breves_beau_livres/1.json
  def show
  end

  # GET /_breves_beau_livres/new
  def new
    @_breves_beau_livre = BrevesBeauLivre.new
  end

  # GET /_breves_beau_livres/1/edit
  def edit
  end

  # POST /_breves_beau_livres or /_breves_beau_livres.json
  def create
    @_breves_beau_livre = BrevesBeauLivre.new(_breves_beau_livre_params)

    respond_to do |format|
      if @_breves_beau_livre.save
        format.html { redirect_to breves_beau_livre_url(@_breves_beau_livre), notice: "Breves beau livre was successfully created." }
        format.json { render :show, status: :created, location: @_breves_beau_livre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_beau_livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_beau_livres/1 or /_breves_beau_livres/1.json
  def update
    respond_to do |format|
      if @_breves_beau_livre.update(_breves_beau_livre_params)
        format.html { redirect_to breves_beau_livre_url(@_breves_beau_livre), notice: "Breves beau livre was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_beau_livre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_beau_livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_beau_livres/1 or /_breves_beau_livres/1.json
  def destroy
    @_breves_beau_livre.destroy!

    respond_to do |format|
      format.html { redirect_to breves_beau_livres_url, notice: "Breves beau livre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_beau_livre
      @_breves_beau_livre = BrevesBeauLivre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_beau_livre_params
      params.require(:breves_beau_livre).permit(:name)
    end
end
