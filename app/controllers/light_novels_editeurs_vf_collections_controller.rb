class LightNovelsEditeursVfCollectionsController < ApplicationController
  before_action :set__light_novels_editeurs_vf_collection, only: %i[ show edit update destroy ]

  # GET /_light_novels_editeurs_vf_collections or /_light_novels_editeurs_vf_collections.json
  def index
    @_light_novels_editeurs_vf_collections = LightNovelsEditeursVfCollection.all
  end

  # GET /_light_novels_editeurs_vf_collections/1 or /_light_novels_editeurs_vf_collections/1.json
  def show
  end

  # GET /_light_novels_editeurs_vf_collections/new
  def new
    @_light_novels_editeurs_vf_collection = LightNovelsEditeursVfCollection.new
  end

  # GET /_light_novels_editeurs_vf_collections/1/edit
  def edit
  end

  # POST /_light_novels_editeurs_vf_collections or /_light_novels_editeurs_vf_collections.json
  def create
    @_light_novels_editeurs_vf_collection = LightNovelsEditeursVfCollection.new(_light_novels_editeurs_vf_collection_params)

    respond_to do |format|
      if @_light_novels_editeurs_vf_collection.save
        format.html { redirect_to light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection), notice: "Light novels editeurs vf collection was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_editeurs_vf_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_editeurs_vf_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_editeurs_vf_collections/1 or /_light_novels_editeurs_vf_collections/1.json
  def update
    respond_to do |format|
      if @_light_novels_editeurs_vf_collection.update(_light_novels_editeurs_vf_collection_params)
        format.html { redirect_to light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection), notice: "Light novels editeurs vf collection was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_editeurs_vf_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_editeurs_vf_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_editeurs_vf_collections/1 or /_light_novels_editeurs_vf_collections/1.json
  def destroy
    @_light_novels_editeurs_vf_collection.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_editeurs_vf_collections_url, notice: "Light novels editeurs vf collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_editeurs_vf_collection
      @_light_novels_editeurs_vf_collection = LightNovelsEditeursVfCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_editeurs_vf_collection_params
      params.require(:light_novels_editeurs_vf_collection).permit(:name)
    end
end
