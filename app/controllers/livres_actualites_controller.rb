class LivresActualitesController < ApplicationController
  before_action :set__livres_actualite, only: %i[ show edit update destroy ]

  # GET /_livres_actualites or /_livres_actualites.json
  def index
    @_livres_actualites = LivresActualite.all
  end

  # GET /_livres_actualites/1 or /_livres_actualites/1.json
  def show
  end

  # GET /_livres_actualites/new
  def new
    @_livres_actualite = LivresActualite.new
  end

  # GET /_livres_actualites/1/edit
  def edit
  end

  # POST /_livres_actualites or /_livres_actualites.json
  def create
    @_livres_actualite = LivresActualite.new(_livres_actualite_params)

    respond_to do |format|
      if @_livres_actualite.save
        format.html { redirect_to _livres_actualite_url(@_livres_actualite), notice: "Livres actualite was successfully created." }
        format.json { render :show, status: :created, location: @_livres_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_actualites/1 or /_livres_actualites/1.json
  def update
    respond_to do |format|
      if @_livres_actualite.update(_livres_actualite_params)
        format.html { redirect_to _livres_actualite_url(@_livres_actualite), notice: "Livres actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_actualites/1 or /_livres_actualites/1.json
  def destroy
    @_livres_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_actualites_url, notice: "Livres actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_actualite
      @_livres_actualite = LivresActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_actualite_params
      params.require(:_livres_actualite).permit(:name)
    end
end
