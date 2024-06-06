class DoujinshisJvPersosController < ApplicationController
  before_action :set__doujinshis_jv_perso, only: %i[ show edit update destroy ]

  # GET /_doujinshis_jv_persos or /_doujinshis_jv_persos.json
  def index
    @_doujinshis_jv_persos = DoujinshisJvPerso.all
  end

  # GET /_doujinshis_jv_persos/1 or /_doujinshis_jv_persos/1.json
  def show
  end

  # GET /_doujinshis_jv_persos/new
  def new
    @_doujinshis_jv_perso = DoujinshisJvPerso.new
  end

  # GET /_doujinshis_jv_persos/1/edit
  def edit
  end

  # POST /_doujinshis_jv_persos or /_doujinshis_jv_persos.json
  def create
    @_doujinshis_jv_perso = DoujinshisJvPerso.new(_doujinshis_jv_perso_params)

    respond_to do |format|
      if @_doujinshis_jv_perso.save
        format.html { redirect_to doujinshis_jv_perso_url(@_doujinshis_jv_perso), notice: "Doujinshis jv perso was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_jv_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_jv_persos/1 or /_doujinshis_jv_persos/1.json
  def update
    respond_to do |format|
      if @_doujinshis_jv_perso.update(_doujinshis_jv_perso_params)
        format.html { redirect_to doujinshis_jv_perso_url(@_doujinshis_jv_perso), notice: "Doujinshis jv perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_jv_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_jv_persos/1 or /_doujinshis_jv_persos/1.json
  def destroy
    @_doujinshis_jv_perso.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_jv_persos_url, notice: "Doujinshis jv perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_jv_perso
      @_doujinshis_jv_perso = DoujinshisJvPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_jv_perso_params
      params.require(:doujinshis_jv_perso).permit(:name)
    end
end
