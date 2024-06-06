class MangasEditeursVfCollectionsController < ApplicationController
  before_action :set__mangas_editeurs_vf_collection, only: %i[ show edit update destroy ]

  # GET /_mangas_editeurs_vf_collections or /_mangas_editeurs_vf_collections.json
  def index
    @_mangas_editeurs_vf_collections = MangasEditeursVfCollection.all
  end

  # GET /_mangas_editeurs_vf_collections/1 or /_mangas_editeurs_vf_collections/1.json
  def show
  end

  # GET /_mangas_editeurs_vf_collections/new
  def new
    @_mangas_editeurs_vf_collection = MangasEditeursVfCollection.new
  end

  # GET /_mangas_editeurs_vf_collections/1/edit
  def edit
  end

  # POST /_mangas_editeurs_vf_collections or /_mangas_editeurs_vf_collections.json
  def create
    @_mangas_editeurs_vf_collection = MangasEditeursVfCollection.new(_mangas_editeurs_vf_collection_params)

    respond_to do |format|
      if @_mangas_editeurs_vf_collection.save
        format.html { redirect_to _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection), notice: "Mangas editeurs vf collection was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_editeurs_vf_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vf_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_editeurs_vf_collections/1 or /_mangas_editeurs_vf_collections/1.json
  def update
    respond_to do |format|
      if @_mangas_editeurs_vf_collection.update(_mangas_editeurs_vf_collection_params)
        format.html { redirect_to _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection), notice: "Mangas editeurs vf collection was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_editeurs_vf_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vf_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_editeurs_vf_collections/1 or /_mangas_editeurs_vf_collections/1.json
  def destroy
    @_mangas_editeurs_vf_collection.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_editeurs_vf_collections_url, notice: "Mangas editeurs vf collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_editeurs_vf_collection
      @_mangas_editeurs_vf_collection = MangasEditeursVfCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_editeurs_vf_collection_params
      params.require(:_mangas_editeurs_vf_collection).permit(:name)
    end
end
