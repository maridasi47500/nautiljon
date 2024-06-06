class DramasLitteratureAsiatiquesController < ApplicationController
  before_action :set__dramas_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_dramas_litterature_asiatiques or /_dramas_litterature_asiatiques.json
  def index
    @_dramas_litterature_asiatiques = DramasLitteratureAsiatique.all
  end

  # GET /_dramas_litterature_asiatiques/1 or /_dramas_litterature_asiatiques/1.json
  def show
  end

  # GET /_dramas_litterature_asiatiques/new
  def new
    @_dramas_litterature_asiatique = DramasLitteratureAsiatique.new
  end

  # GET /_dramas_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_dramas_litterature_asiatiques or /_dramas_litterature_asiatiques.json
  def create
    @_dramas_litterature_asiatique = DramasLitteratureAsiatique.new(_dramas_litterature_asiatique_params)

    respond_to do |format|
      if @_dramas_litterature_asiatique.save
        format.html { redirect_to dramas_litterature_asiatique_url(@_dramas_litterature_asiatique), notice: "Dramas litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_litterature_asiatiques/1 or /_dramas_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_dramas_litterature_asiatique.update(_dramas_litterature_asiatique_params)
        format.html { redirect_to dramas_litterature_asiatique_url(@_dramas_litterature_asiatique), notice: "Dramas litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_litterature_asiatiques/1 or /_dramas_litterature_asiatiques/1.json
  def destroy
    @_dramas_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_litterature_asiatiques_url, notice: "Dramas litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_litterature_asiatique
      @_dramas_litterature_asiatique = DramasLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_litterature_asiatique_params
      params.require(:dramas_litterature_asiatique).permit(:name)
    end
end
