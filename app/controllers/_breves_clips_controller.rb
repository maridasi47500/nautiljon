class BrevesClipsController < ApplicationController
  before_action :set__breves_clip, only: %i[ show edit update destroy ]

  # GET /_breves_clips or /_breves_clips.json
  def index
    @_breves_clips = BrevesClip.all
  end

  # GET /_breves_clips/1 or /_breves_clips/1.json
  def show
  end

  # GET /_breves_clips/new
  def new
    @_breves_clip = BrevesClip.new
  end

  # GET /_breves_clips/1/edit
  def edit
  end

  # POST /_breves_clips or /_breves_clips.json
  def create
    @_breves_clip = BrevesClip.new(_breves_clip_params)

    respond_to do |format|
      if @_breves_clip.save
        format.html { redirect_to _breves_clip_url(@_breves_clip), notice: "Breves clip was successfully created." }
        format.json { render :show, status: :created, location: @_breves_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_clips/1 or /_breves_clips/1.json
  def update
    respond_to do |format|
      if @_breves_clip.update(_breves_clip_params)
        format.html { redirect_to _breves_clip_url(@_breves_clip), notice: "Breves clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_clips/1 or /_breves_clips/1.json
  def destroy
    @_breves_clip.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_clips_url, notice: "Breves clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_clip
      @_breves_clip = BrevesClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_clip_params
      params.require(:_breves_clip).permit(:name)
    end
end
