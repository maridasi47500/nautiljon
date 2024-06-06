class MangasLitteratureAsiatiquesController < ApplicationController
  before_action :set__mangas_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_mangas_litterature_asiatiques or /_mangas_litterature_asiatiques.json
  def index
    @_mangas_litterature_asiatiques = MangasLitteratureAsiatique.all
  end

  # GET /_mangas_litterature_asiatiques/1 or /_mangas_litterature_asiatiques/1.json
  def show
  end

  # GET /_mangas_litterature_asiatiques/new
  def new
    @_mangas_litterature_asiatique = MangasLitteratureAsiatique.new
  end

  # GET /_mangas_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_mangas_litterature_asiatiques or /_mangas_litterature_asiatiques.json
  def create
    @_mangas_litterature_asiatique = MangasLitteratureAsiatique.new(_mangas_litterature_asiatique_params)

    respond_to do |format|
      if @_mangas_litterature_asiatique.save
        format.html { redirect_to mangas_litterature_asiatique_url(@_mangas_litterature_asiatique), notice: "Mangas litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_litterature_asiatiques/1 or /_mangas_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_mangas_litterature_asiatique.update(_mangas_litterature_asiatique_params)
        format.html { redirect_to mangas_litterature_asiatique_url(@_mangas_litterature_asiatique), notice: "Mangas litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_litterature_asiatiques/1 or /_mangas_litterature_asiatiques/1.json
  def destroy
    @_mangas_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_litterature_asiatiques_url, notice: "Mangas litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_litterature_asiatique
      @_mangas_litterature_asiatique = MangasLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_litterature_asiatique_params
      params.require(:mangas_litterature_asiatique).permit(:name)
    end
end
