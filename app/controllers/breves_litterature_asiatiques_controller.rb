class BrevesLitteratureAsiatiquesController < ApplicationController
  before_action :set__breves_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_breves_litterature_asiatiques or /_breves_litterature_asiatiques.json
  def index
    @_breves_litterature_asiatiques = BrevesLitteratureAsiatique.all
  end

  # GET /_breves_litterature_asiatiques/1 or /_breves_litterature_asiatiques/1.json
  def show
  end

  # GET /_breves_litterature_asiatiques/new
  def new
    @_breves_litterature_asiatique = BrevesLitteratureAsiatique.new
  end

  # GET /_breves_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_breves_litterature_asiatiques or /_breves_litterature_asiatiques.json
  def create
    @_breves_litterature_asiatique = BrevesLitteratureAsiatique.new(_breves_litterature_asiatique_params)

    respond_to do |format|
      if @_breves_litterature_asiatique.save
        format.html { redirect_to breves_litterature_asiatique_url(@_breves_litterature_asiatique), notice: "Breves litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_breves_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_litterature_asiatiques/1 or /_breves_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_breves_litterature_asiatique.update(_breves_litterature_asiatique_params)
        format.html { redirect_to breves_litterature_asiatique_url(@_breves_litterature_asiatique), notice: "Breves litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_litterature_asiatiques/1 or /_breves_litterature_asiatiques/1.json
  def destroy
    @_breves_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to breves_litterature_asiatiques_url, notice: "Breves litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_litterature_asiatique
      @_breves_litterature_asiatique = BrevesLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_litterature_asiatique_params
      params.require(:breves_litterature_asiatique).permit(:name)
    end
end
