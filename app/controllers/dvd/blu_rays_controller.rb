class Dvd::BluRaysController < ApplicationController
  before_action :set__dvd_blu_ray, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays or /_dvd_blu_rays.json
  def index
    @_dvd_blu_rays = Dvd::BluRay.all
  end

  # GET /_dvd_blu_rays/1 or /_dvd_blu_rays/1.json
  def show
  end

  # GET /_dvd_blu_rays/new
  def new
    @_dvd_blu_ray = Dvd::BluRay.new
  end

  # GET /_dvd_blu_rays/1/edit
  def edit
  end

  # POST /_dvd_blu_rays or /_dvd_blu_rays.json
  def create
    @_dvd_blu_ray = Dvd::BluRay.new(_dvd_blu_ray_params)

    respond_to do |format|
      if @_dvd_blu_ray.save
        format.html { redirect_to dvd_blu_ray_url(@_dvd_blu_ray), notice: "Blu ray was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_ray }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_ray.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays/1 or /_dvd_blu_rays/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_ray.update(_dvd_blu_ray_params)
        format.html { redirect_to dvd_blu_ray_url(@_dvd_blu_ray), notice: "Blu ray was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_ray }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_ray.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays/1 or /_dvd_blu_rays/1.json
  def destroy
    @_dvd_blu_ray.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_url, notice: "Blu ray was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_ray
      @_dvd_blu_ray = Dvd::BluRay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_ray_params
      params.require(:dvd_blu_ray).permit(:type, :type, :type, :type, :type, :type, :_dvd_blu_rays_france_id, :_dvd_blu_rays_pays_id, :titre, :titre_alternatif, :titre_original, :image, :date_parution_jj, :date_parution_mm, :date_parution_aaaa, :prix, :ean, :ref, :_dvd_blu_rays_format_id, :_dvd_blu_rays_type_edition_id, :_dvd_blu_rays_editeurs_id, :_dvd_blu_rays_editeurs_id, :audiodescription, :duree, :nb_disque, :resume, :episodes, :infos, :youtube, :_dvd_blu_rays_public_averti_id, :_dvd_blu_rays_groupes_id, :_dvd_blu_rays_anime_id, :_dvd_blu_rays_drama_id, :_dvd_blu_rays_am_id, :_dvd_blu_rays_litterature_asiatique_id, :_dvd_blu_rays_jv_id, :_dvd_blu_rays_people_id, :_dvd_blu_rays_emission_tv_id, :_dvd_blu_rays_actualite_id, :_dvd_blu_rays_actualite_mini_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
