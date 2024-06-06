class MangasActualiteMinisController < ApplicationController
  before_action :set__mangas_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_mangas_actualite_minis or /_mangas_actualite_minis.json
  def index
    @_mangas_actualite_minis = MangasActualiteMini.all
  end

  # GET /_mangas_actualite_minis/1 or /_mangas_actualite_minis/1.json
  def show
  end

  # GET /_mangas_actualite_minis/new
  def new
    @_mangas_actualite_mini = MangasActualiteMini.new
  end

  # GET /_mangas_actualite_minis/1/edit
  def edit
  end

  # POST /_mangas_actualite_minis or /_mangas_actualite_minis.json
  def create
    @_mangas_actualite_mini = MangasActualiteMini.new(_mangas_actualite_mini_params)

    respond_to do |format|
      if @_mangas_actualite_mini.save
        format.html { redirect_to _mangas_actualite_mini_url(@_mangas_actualite_mini), notice: "Mangas actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_actualite_minis/1 or /_mangas_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_mangas_actualite_mini.update(_mangas_actualite_mini_params)
        format.html { redirect_to _mangas_actualite_mini_url(@_mangas_actualite_mini), notice: "Mangas actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_actualite_minis/1 or /_mangas_actualite_minis/1.json
  def destroy
    @_mangas_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_actualite_minis_url, notice: "Mangas actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_actualite_mini
      @_mangas_actualite_mini = MangasActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_actualite_mini_params
      params.require(:_mangas_actualite_mini).permit(:name)
    end
end
