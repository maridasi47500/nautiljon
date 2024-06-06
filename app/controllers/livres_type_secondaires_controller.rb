class LivresTypeSecondairesController < ApplicationController
  before_action :set__livres_type_secondaire, only: %i[ show edit update destroy ]

  # GET /_livres_type_secondaires or /_livres_type_secondaires.json
  def index
    @_livres_type_secondaires = LivresTypeSecondaire.all
  end

  # GET /_livres_type_secondaires/1 or /_livres_type_secondaires/1.json
  def show
  end

  # GET /_livres_type_secondaires/new
  def new
    @_livres_type_secondaire = LivresTypeSecondaire.new
  end

  # GET /_livres_type_secondaires/1/edit
  def edit
  end

  # POST /_livres_type_secondaires or /_livres_type_secondaires.json
  def create
    @_livres_type_secondaire = LivresTypeSecondaire.new(_livres_type_secondaire_params)

    respond_to do |format|
      if @_livres_type_secondaire.save
        format.html { redirect_to _livres_type_secondaire_url(@_livres_type_secondaire), notice: "Livres type secondaire was successfully created." }
        format.json { render :show, status: :created, location: @_livres_type_secondaire }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_type_secondaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_type_secondaires/1 or /_livres_type_secondaires/1.json
  def update
    respond_to do |format|
      if @_livres_type_secondaire.update(_livres_type_secondaire_params)
        format.html { redirect_to _livres_type_secondaire_url(@_livres_type_secondaire), notice: "Livres type secondaire was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_type_secondaire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_type_secondaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_type_secondaires/1 or /_livres_type_secondaires/1.json
  def destroy
    @_livres_type_secondaire.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_type_secondaires_url, notice: "Livres type secondaire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_type_secondaire
      @_livres_type_secondaire = LivresTypeSecondaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_type_secondaire_params
      params.require(:_livres_type_secondaire).permit(:name)
    end
end
