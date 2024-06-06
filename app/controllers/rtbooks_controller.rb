class ArtbooksController < ApplicationController
  before_action :set_artbook, only: %i[ show edit update destroy ]

  # GET /artbooks or /artbooks.json
  def index
    @artbooks = Artbook.all
  end

  # GET /artbooks/1 or /artbooks/1.json
  def show
  end

  # GET /artbooks/new
  def new
    @artbook = Artbook.new
  end

  # GET /artbooks/1/edit
  def edit
  end

  # POST /artbooks or /artbooks.json
  def create
    @artbook = Artbook.new(artbook_params)

    respond_to do |format|
      if @artbook.save
        format.html { redirect_to artbook_url(@artbook), notice: "Artbook was successfully created." }
        format.json { render :show, status: :created, location: @artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks/1 or /artbooks/1.json
  def update
    respond_to do |format|
      if @artbook.update(artbook_params)
        format.html { redirect_to artbook_url(@artbook), notice: "Artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks/1 or /artbooks/1.json
  def destroy
    @artbook.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_url, notice: "Artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbook
      @artbook = Artbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbook_params
      params.require(:artbook).permit(:artbooks_france_id, :artbooks_pays_id, :titre, :titre_alternatif, :titre_original_latin, :titre_original, :image, :image_vo, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :prix, :ean, :nb_pages, :artbooks_illustrations_id, :artbooks_type_id, :crossover, :artbooks_editeurs_vo_id, :artbooks_editeurs_vo_id, :artbooks_editeurs_vf_id, :artbooks_editeurs_vf_id, :artbooks_role_id, :artbooks_people_id, :artbooks_role_id, :artbooks_people_id, :artbooks_societe_role_id, :artbooks_societe_people_id, :artbooks_societe_role_id, :artbooks_societe_people_id, :resume, :infos, :artbooks_public_averti_id, :artbooks_groupes_id, :artbooks_anime_id, :artbooks_manga_id, :artbooks_ln_id, :artbooks_doujinshi_id, :artbooks_jv_id, :artbooks_drama_id, :artbooks_am_id, :artbooks_litterature_asiatique_id, :artbooks_artbook_id, :artbooks_goodies_id, :artbooks_doujin_id, :artbooks_actualite_id, :artbooks_actualite_mini_id, :artbooks_culture_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
