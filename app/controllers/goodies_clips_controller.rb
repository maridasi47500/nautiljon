class GoodiesClipsController < ApplicationController
  before_action :set__goodies_clip, only: %i[ show edit update destroy ]

  # GET /_goodies_clips or /_goodies_clips.json
  def index
    @_goodies_clips = GoodiesClip.all
  end

  # GET /_goodies_clips/1 or /_goodies_clips/1.json
  def show
  end

  # GET /_goodies_clips/new
  def new
    @_goodies_clip = GoodiesClip.new
  end

  # GET /_goodies_clips/1/edit
  def edit
  end

  # POST /_goodies_clips or /_goodies_clips.json
  def create
    @_goodies_clip = GoodiesClip.new(_goodies_clip_params)

    respond_to do |format|
      if @_goodies_clip.save
        format.html { redirect_to goodies_clip_url(@_goodies_clip), notice: "Goodies clip was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_clips/1 or /_goodies_clips/1.json
  def update
    respond_to do |format|
      if @_goodies_clip.update(_goodies_clip_params)
        format.html { redirect_to goodies_clip_url(@_goodies_clip), notice: "Goodies clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_clips/1 or /_goodies_clips/1.json
  def destroy
    @_goodies_clip.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_clips_url, notice: "Goodies clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_clip
      @_goodies_clip = GoodiesClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_clip_params
      params.require(:goodies_clip).permit(:name)
    end
end
