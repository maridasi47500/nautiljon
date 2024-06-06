class LivresLitteratureAsiatiquesController < ApplicationController
  before_action :set__livres_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_livres_litterature_asiatiques or /_livres_litterature_asiatiques.json
  def index
    @_livres_litterature_asiatiques = LivresLitteratureAsiatique.all
  end

  # GET /_livres_litterature_asiatiques/1 or /_livres_litterature_asiatiques/1.json
  def show
  end

  # GET /_livres_litterature_asiatiques/new
  def new
    @_livres_litterature_asiatique = LivresLitteratureAsiatique.new
  end

  # GET /_livres_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_livres_litterature_asiatiques or /_livres_litterature_asiatiques.json
  def create
    @_livres_litterature_asiatique = LivresLitteratureAsiatique.new(_livres_litterature_asiatique_params)

    respond_to do |format|
      if @_livres_litterature_asiatique.save
        format.html { redirect_to livres_litterature_asiatique_url(@_livres_litterature_asiatique), notice: "Livres litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_livres_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_litterature_asiatiques/1 or /_livres_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_livres_litterature_asiatique.update(_livres_litterature_asiatique_params)
        format.html { redirect_to livres_litterature_asiatique_url(@_livres_litterature_asiatique), notice: "Livres litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_litterature_asiatiques/1 or /_livres_litterature_asiatiques/1.json
  def destroy
    @_livres_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to livres_litterature_asiatiques_url, notice: "Livres litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_litterature_asiatique
      @_livres_litterature_asiatique = LivresLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_litterature_asiatique_params
      params.require(:livres_litterature_asiatique).permit(:name)
    end
end
