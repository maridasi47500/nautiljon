class PhotobooksController < ApplicationController
  before_action :set__photobook, only: %i[ show edit update destroy ]

  # GET /_photobooks or /_photobooks.json
  def index
    @_photobooks = Photobook.all
  end

  # GET /_photobooks/1 or /_photobooks/1.json
  def show
  end

  # GET /_photobooks/new
  def new
    @_photobook = Photobook.new
  end

  # GET /_photobooks/1/edit
  def edit
  end

  # POST /_photobooks or /_photobooks.json
  def create
    @_photobook = Photobook.new(_photobook_params)

    respond_to do |format|
      if @_photobook.save
        format.html { redirect_to _photobook_url(@_photobook), notice: "Photobook was successfully created." }
        format.json { render :show, status: :created, location: @_photobook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks/1 or /_photobooks/1.json
  def update
    respond_to do |format|
      if @_photobook.update(_photobook_params)
        format.html { redirect_to _photobook_url(@_photobook), notice: "Photobook was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks/1 or /_photobooks/1.json
  def destroy
    @_photobook.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_url, notice: "Photobook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobook
      @_photobook = Photobook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobook_params
      params.require(:_photobook).permit(:_photobooks_france_id, :_photobooks_pays_id, :titre, :titre_alternatif, :titre_original_latin, :titre_original, :image, :image_vo, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :prix, :ean, :ref, :_photobooks_disponibilite_id, :nb_pages, :site, :_photobooks_illustrations_id, :_photobooks_type_id, :_photobooks_editeurs_vo_id, :_photobooks_editeurs_vo_id, :_photobooks_editeurs_vf_id, :_photobooks_editeurs_vf_id, :_photobooks_role_id, :_photobooks_people_id, :_photobooks_role_id, :_photobooks_people_id, :_photobooks_societe_role_id, :_photobooks_societe_people_id, :_photobooks_societe_role_id, :_photobooks_societe_people_id, :resume, :infos, :_photobooks_public_averti_id, :_photobooks_groupes_id, :_photobooks_drama_id, :_photobooks_am_id, :_photobooks_cd_id, :_photobooks_photobook_id, :_photobooks_anime_id, :_photobooks_bonus_id, :_photobooks_actualite_id, :_photobooks_actualite_mini_id, :_photobooks_goodies_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
