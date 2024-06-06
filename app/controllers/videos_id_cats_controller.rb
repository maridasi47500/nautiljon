class VideosIdCatsController < ApplicationController
  before_action :set__videos_id_cat, only: %i[ show edit update destroy ]

  # GET /_videos_id_cats or /_videos_id_cats.json
  def index
    @_videos_id_cats = VideosIdCat.all
  end

  # GET /_videos_id_cats/1 or /_videos_id_cats/1.json
  def show
  end

  # GET /_videos_id_cats/new
  def new
    @_videos_id_cat = VideosIdCat.new
  end

  # GET /_videos_id_cats/1/edit
  def edit
  end

  # POST /_videos_id_cats or /_videos_id_cats.json
  def create
    @_videos_id_cat = VideosIdCat.new(_videos_id_cat_params)

    respond_to do |format|
      if @_videos_id_cat.save
        format.html { redirect_to videos_id_cat_url(@_videos_id_cat), notice: "Videos id cat was successfully created." }
        format.json { render :show, status: :created, location: @_videos_id_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_videos_id_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_videos_id_cats/1 or /_videos_id_cats/1.json
  def update
    respond_to do |format|
      if @_videos_id_cat.update(_videos_id_cat_params)
        format.html { redirect_to videos_id_cat_url(@_videos_id_cat), notice: "Videos id cat was successfully updated." }
        format.json { render :show, status: :ok, location: @_videos_id_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_videos_id_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_videos_id_cats/1 or /_videos_id_cats/1.json
  def destroy
    @_videos_id_cat.destroy!

    respond_to do |format|
      format.html { redirect_to videos_id_cats_url, notice: "Videos id cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__videos_id_cat
      @_videos_id_cat = VideosIdCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _videos_id_cat_params
      params.require(:videos_id_cat).permit(:name)
    end
end
