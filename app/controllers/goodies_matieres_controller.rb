class GoodiesMatieresController < ApplicationController
  before_action :set__goodies_matiere, only: %i[ show edit update destroy ]

  # GET /_goodies_matieres or /_goodies_matieres.json
  def index
    @_goodies_matieres = GoodiesMatiere.all
  end

  # GET /_goodies_matieres/1 or /_goodies_matieres/1.json
  def show
  end

  # GET /_goodies_matieres/new
  def new
    @_goodies_matiere = GoodiesMatiere.new
  end

  # GET /_goodies_matieres/1/edit
  def edit
  end

  # POST /_goodies_matieres or /_goodies_matieres.json
  def create
    @_goodies_matiere = GoodiesMatiere.new(_goodies_matiere_params)

    respond_to do |format|
      if @_goodies_matiere.save
        format.html { redirect_to goodies_matiere_url(@_goodies_matiere), notice: "Goodies matiere was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_matiere }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_matieres/1 or /_goodies_matieres/1.json
  def update
    respond_to do |format|
      if @_goodies_matiere.update(_goodies_matiere_params)
        format.html { redirect_to goodies_matiere_url(@_goodies_matiere), notice: "Goodies matiere was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_matiere }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_matieres/1 or /_goodies_matieres/1.json
  def destroy
    @_goodies_matiere.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_matieres_url, notice: "Goodies matiere was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_matiere
      @_goodies_matiere = GoodiesMatiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_matiere_params
      params.require(:goodies_matiere).permit(:name)
    end
end
