class GoodiesJvPersosController < ApplicationController
  before_action :set__goodies_jv_perso, only: %i[ show edit update destroy ]

  # GET /_goodies_jv_persos or /_goodies_jv_persos.json
  def index
    @_goodies_jv_persos = GoodiesJvPerso.all
  end

  # GET /_goodies_jv_persos/1 or /_goodies_jv_persos/1.json
  def show
  end

  # GET /_goodies_jv_persos/new
  def new
    @_goodies_jv_perso = GoodiesJvPerso.new
  end

  # GET /_goodies_jv_persos/1/edit
  def edit
  end

  # POST /_goodies_jv_persos or /_goodies_jv_persos.json
  def create
    @_goodies_jv_perso = GoodiesJvPerso.new(_goodies_jv_perso_params)

    respond_to do |format|
      if @_goodies_jv_perso.save
        format.html { redirect_to goodies_jv_perso_url(@_goodies_jv_perso), notice: "Goodies jv perso was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_jv_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_jv_persos/1 or /_goodies_jv_persos/1.json
  def update
    respond_to do |format|
      if @_goodies_jv_perso.update(_goodies_jv_perso_params)
        format.html { redirect_to goodies_jv_perso_url(@_goodies_jv_perso), notice: "Goodies jv perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_jv_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_jv_persos/1 or /_goodies_jv_persos/1.json
  def destroy
    @_goodies_jv_perso.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_jv_persos_url, notice: "Goodies jv perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_jv_perso
      @_goodies_jv_perso = GoodiesJvPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_jv_perso_params
      params.require(:goodies_jv_perso).permit(:name)
    end
end
