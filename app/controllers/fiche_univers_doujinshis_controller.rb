class FicheUniversDoujinshisController < ApplicationController
  before_action :set__fiche_univers_doujinshi, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_doujinshis or /_fiche_univers_doujinshis.json
  def index
    @_fiche_univers_doujinshis = FicheUniversDoujinshi.all
  end

  # GET /_fiche_univers_doujinshis/1 or /_fiche_univers_doujinshis/1.json
  def show
  end

  # GET /_fiche_univers_doujinshis/new
  def new
    @_fiche_univers_doujinshi = FicheUniversDoujinshi.new
  end

  # GET /_fiche_univers_doujinshis/1/edit
  def edit
  end

  # POST /_fiche_univers_doujinshis or /_fiche_univers_doujinshis.json
  def create
    @_fiche_univers_doujinshi = FicheUniversDoujinshi.new(_fiche_univers_doujinshi_params)

    respond_to do |format|
      if @_fiche_univers_doujinshi.save
        format.html { redirect_to fiche_univers_doujinshi_url(@_fiche_univers_doujinshi), notice: "Fiche univers doujinshi was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_doujinshi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_doujinshis/1 or /_fiche_univers_doujinshis/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_doujinshi.update(_fiche_univers_doujinshi_params)
        format.html { redirect_to fiche_univers_doujinshi_url(@_fiche_univers_doujinshi), notice: "Fiche univers doujinshi was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_doujinshi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_doujinshis/1 or /_fiche_univers_doujinshis/1.json
  def destroy
    @_fiche_univers_doujinshi.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_doujinshis_url, notice: "Fiche univers doujinshi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_doujinshi
      @_fiche_univers_doujinshi = FicheUniversDoujinshi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_doujinshi_params
      params.require(:fiche_univers_doujinshi).permit(:name)
    end
end
