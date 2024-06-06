class DoujinshisLitteratureAsiatiquesController < ApplicationController
  before_action :set__doujinshis_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_doujinshis_litterature_asiatiques or /_doujinshis_litterature_asiatiques.json
  def index
    @_doujinshis_litterature_asiatiques = DoujinshisLitteratureAsiatique.all
  end

  # GET /_doujinshis_litterature_asiatiques/1 or /_doujinshis_litterature_asiatiques/1.json
  def show
  end

  # GET /_doujinshis_litterature_asiatiques/new
  def new
    @_doujinshis_litterature_asiatique = DoujinshisLitteratureAsiatique.new
  end

  # GET /_doujinshis_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_doujinshis_litterature_asiatiques or /_doujinshis_litterature_asiatiques.json
  def create
    @_doujinshis_litterature_asiatique = DoujinshisLitteratureAsiatique.new(_doujinshis_litterature_asiatique_params)

    respond_to do |format|
      if @_doujinshis_litterature_asiatique.save
        format.html { redirect_to doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique), notice: "Doujinshis litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_litterature_asiatiques/1 or /_doujinshis_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_doujinshis_litterature_asiatique.update(_doujinshis_litterature_asiatique_params)
        format.html { redirect_to doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique), notice: "Doujinshis litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_litterature_asiatiques/1 or /_doujinshis_litterature_asiatiques/1.json
  def destroy
    @_doujinshis_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_litterature_asiatiques_url, notice: "Doujinshis litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_litterature_asiatique
      @_doujinshis_litterature_asiatique = DoujinshisLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_litterature_asiatique_params
      params.require(:doujinshis_litterature_asiatique).permit(:name)
    end
end
