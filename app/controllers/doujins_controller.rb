class DoujinsController < ApplicationController
  before_action :set__doujin, only: %i[ show edit update destroy ]

  # GET /_doujins or /_doujins.json
  def index
    @_doujins = Doujin.all
  end

  # GET /_doujins/1 or /_doujins/1.json
  def show
  end

  # GET /_doujins/new
  def new
    @_doujin = Doujin.new
  end

  # GET /_doujins/1/edit
  def edit
  end

  # POST /_doujins or /_doujins.json
  def create
    @_doujin = Doujin.new(_doujin_params)

    respond_to do |format|
      if @_doujin.save
        format.html { redirect_to _doujin_url(@_doujin), notice: "Doujin was successfully created." }
        format.json { render :show, status: :created, location: @_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins/1 or /_doujins/1.json
  def update
    respond_to do |format|
      if @_doujin.update(_doujin_params)
        format.html { redirect_to _doujin_url(@_doujin), notice: "Doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins/1 or /_doujins/1.json
  def destroy
    @_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_url, notice: "Doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujin
      @_doujin = Doujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujin_params
      params.require(:_doujin).permit(:titre, :titre_original_latin, :titre_original, :titre_alternatif, :_doujins_conventions_id, :_doujins_conventions_id, :ref, :date_jj, :date_mm, :date_aaaa, :_doujins_role_id, :_doujins_people_id, :_doujins_role_id, :_doujins_people_id, :cercle, :image, :infos, :_doujins_genres_id, :_doujins_genres_id, :_doujins_groupes_id, :_doujins_anime_id, :_doujins_ln_id, :_doujins_drama_id, :_doujins_am_id, :_doujins_jv_id, :_doujins_doujin_id, :_doujins_artbook_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
