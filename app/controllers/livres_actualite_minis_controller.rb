class LivresActualiteMinisController < ApplicationController
  before_action :set__livres_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_livres_actualite_minis or /_livres_actualite_minis.json
  def index
    @_livres_actualite_minis = LivresActualiteMini.all
  end

  # GET /_livres_actualite_minis/1 or /_livres_actualite_minis/1.json
  def show
  end

  # GET /_livres_actualite_minis/new
  def new
    @_livres_actualite_mini = LivresActualiteMini.new
  end

  # GET /_livres_actualite_minis/1/edit
  def edit
  end

  # POST /_livres_actualite_minis or /_livres_actualite_minis.json
  def create
    @_livres_actualite_mini = LivresActualiteMini.new(_livres_actualite_mini_params)

    respond_to do |format|
      if @_livres_actualite_mini.save
        format.html { redirect_to _livres_actualite_mini_url(@_livres_actualite_mini), notice: "Livres actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_livres_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_actualite_minis/1 or /_livres_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_livres_actualite_mini.update(_livres_actualite_mini_params)
        format.html { redirect_to _livres_actualite_mini_url(@_livres_actualite_mini), notice: "Livres actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_actualite_minis/1 or /_livres_actualite_minis/1.json
  def destroy
    @_livres_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_actualite_minis_url, notice: "Livres actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_actualite_mini
      @_livres_actualite_mini = LivresActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_actualite_mini_params
      params.require(:_livres_actualite_mini).permit(:name)
    end
end
