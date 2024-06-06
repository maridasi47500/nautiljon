class GoodiesLitteratureAsiatiquesController < ApplicationController
  before_action :set__goodies_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_goodies_litterature_asiatiques or /_goodies_litterature_asiatiques.json
  def index
    @_goodies_litterature_asiatiques = GoodiesLitteratureAsiatique.all
  end

  # GET /_goodies_litterature_asiatiques/1 or /_goodies_litterature_asiatiques/1.json
  def show
  end

  # GET /_goodies_litterature_asiatiques/new
  def new
    @_goodies_litterature_asiatique = GoodiesLitteratureAsiatique.new
  end

  # GET /_goodies_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_goodies_litterature_asiatiques or /_goodies_litterature_asiatiques.json
  def create
    @_goodies_litterature_asiatique = GoodiesLitteratureAsiatique.new(_goodies_litterature_asiatique_params)

    respond_to do |format|
      if @_goodies_litterature_asiatique.save
        format.html { redirect_to goodies_litterature_asiatique_url(@_goodies_litterature_asiatique), notice: "Goodies litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_litterature_asiatiques/1 or /_goodies_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_goodies_litterature_asiatique.update(_goodies_litterature_asiatique_params)
        format.html { redirect_to goodies_litterature_asiatique_url(@_goodies_litterature_asiatique), notice: "Goodies litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_litterature_asiatiques/1 or /_goodies_litterature_asiatiques/1.json
  def destroy
    @_goodies_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_litterature_asiatiques_url, notice: "Goodies litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_litterature_asiatique
      @_goodies_litterature_asiatique = GoodiesLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_litterature_asiatique_params
      params.require(:goodies_litterature_asiatique).permit(:name)
    end
end
