class GoodiesPersosController < ApplicationController
  before_action :set__goodies_perso, only: %i[ show edit update destroy ]

  # GET /_goodies_persos or /_goodies_persos.json
  def index
    @_goodies_persos = GoodiesPerso.all
  end

  # GET /_goodies_persos/1 or /_goodies_persos/1.json
  def show
  end

  # GET /_goodies_persos/new
  def new
    @_goodies_perso = GoodiesPerso.new
  end

  # GET /_goodies_persos/1/edit
  def edit
  end

  # POST /_goodies_persos or /_goodies_persos.json
  def create
    @_goodies_perso = GoodiesPerso.new(_goodies_perso_params)

    respond_to do |format|
      if @_goodies_perso.save
        format.html { redirect_to goodies_perso_url(@_goodies_perso), notice: "Goodies perso was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_persos/1 or /_goodies_persos/1.json
  def update
    respond_to do |format|
      if @_goodies_perso.update(_goodies_perso_params)
        format.html { redirect_to goodies_perso_url(@_goodies_perso), notice: "Goodies perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_persos/1 or /_goodies_persos/1.json
  def destroy
    @_goodies_perso.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_persos_url, notice: "Goodies perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_perso
      @_goodies_perso = GoodiesPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_perso_params
      params.require(:goodies_perso).permit(:name)
    end
end
