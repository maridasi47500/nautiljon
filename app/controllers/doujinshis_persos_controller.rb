class DoujinshisPersosController < ApplicationController
  before_action :set__doujinshis_perso, only: %i[ show edit update destroy ]

  # GET /_doujinshis_persos or /_doujinshis_persos.json
  def index
    @_doujinshis_persos = DoujinshisPerso.all
  end

  # GET /_doujinshis_persos/1 or /_doujinshis_persos/1.json
  def show
  end

  # GET /_doujinshis_persos/new
  def new
    @_doujinshis_perso = DoujinshisPerso.new
  end

  # GET /_doujinshis_persos/1/edit
  def edit
  end

  # POST /_doujinshis_persos or /_doujinshis_persos.json
  def create
    @_doujinshis_perso = DoujinshisPerso.new(_doujinshis_perso_params)

    respond_to do |format|
      if @_doujinshis_perso.save
        format.html { redirect_to _doujinshis_perso_url(@_doujinshis_perso), notice: "Doujinshis perso was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_persos/1 or /_doujinshis_persos/1.json
  def update
    respond_to do |format|
      if @_doujinshis_perso.update(_doujinshis_perso_params)
        format.html { redirect_to _doujinshis_perso_url(@_doujinshis_perso), notice: "Doujinshis perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_persos/1 or /_doujinshis_persos/1.json
  def destroy
    @_doujinshis_perso.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_persos_url, notice: "Doujinshis perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_perso
      @_doujinshis_perso = DoujinshisPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_perso_params
      params.require(:_doujinshis_perso).permit(:name)
    end
end
