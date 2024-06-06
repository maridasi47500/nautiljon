class MangasClipsController < ApplicationController
  before_action :set__mangas_clip, only: %i[ show edit update destroy ]

  # GET /_mangas_clips or /_mangas_clips.json
  def index
    @_mangas_clips = MangasClip.all
  end

  # GET /_mangas_clips/1 or /_mangas_clips/1.json
  def show
  end

  # GET /_mangas_clips/new
  def new
    @_mangas_clip = MangasClip.new
  end

  # GET /_mangas_clips/1/edit
  def edit
  end

  # POST /_mangas_clips or /_mangas_clips.json
  def create
    @_mangas_clip = MangasClip.new(_mangas_clip_params)

    respond_to do |format|
      if @_mangas_clip.save
        format.html { redirect_to mangas_clip_url(@_mangas_clip), notice: "Mangas clip was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_clips/1 or /_mangas_clips/1.json
  def update
    respond_to do |format|
      if @_mangas_clip.update(_mangas_clip_params)
        format.html { redirect_to mangas_clip_url(@_mangas_clip), notice: "Mangas clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_clips/1 or /_mangas_clips/1.json
  def destroy
    @_mangas_clip.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_clips_url, notice: "Mangas clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_clip
      @_mangas_clip = MangasClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_clip_params
      params.require(:mangas_clip).permit(:name)
    end
end
