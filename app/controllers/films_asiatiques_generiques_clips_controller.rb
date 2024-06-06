class FilmsAsiatiquesGeneriquesClipsController < ApplicationController
  before_action :set__films_asiatiques_generiques_clip, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_generiques_clips or /_films_asiatiques_generiques_clips.json
  def index
    @_films_asiatiques_generiques_clips = FilmsAsiatiquesGeneriquesClip.all
  end

  # GET /_films_asiatiques_generiques_clips/1 or /_films_asiatiques_generiques_clips/1.json
  def show
  end

  # GET /_films_asiatiques_generiques_clips/new
  def new
    @_films_asiatiques_generiques_clip = FilmsAsiatiquesGeneriquesClip.new
  end

  # GET /_films_asiatiques_generiques_clips/1/edit
  def edit
  end

  # POST /_films_asiatiques_generiques_clips or /_films_asiatiques_generiques_clips.json
  def create
    @_films_asiatiques_generiques_clip = FilmsAsiatiquesGeneriquesClip.new(_films_asiatiques_generiques_clip_params)

    respond_to do |format|
      if @_films_asiatiques_generiques_clip.save
        format.html { redirect_to films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip), notice: "Films asiatiques generiques clip was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_generiques_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_generiques_clips/1 or /_films_asiatiques_generiques_clips/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_generiques_clip.update(_films_asiatiques_generiques_clip_params)
        format.html { redirect_to films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip), notice: "Films asiatiques generiques clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_generiques_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_generiques_clips/1 or /_films_asiatiques_generiques_clips/1.json
  def destroy
    @_films_asiatiques_generiques_clip.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_generiques_clips_url, notice: "Films asiatiques generiques clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_generiques_clip
      @_films_asiatiques_generiques_clip = FilmsAsiatiquesGeneriquesClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_generiques_clip_params
      params.require(:films_asiatiques_generiques_clip).permit(:name)
    end
end
