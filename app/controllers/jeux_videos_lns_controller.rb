class JeuxVideosLnsController < ApplicationController
  before_action :set__jeux_videos_ln, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_lns or /_jeux_videos_lns.json
  def index
    @_jeux_videos_lns = JeuxVideosLn.all
  end

  # GET /_jeux_videos_lns/1 or /_jeux_videos_lns/1.json
  def show
  end

  # GET /_jeux_videos_lns/new
  def new
    @_jeux_videos_ln = JeuxVideosLn.new
  end

  # GET /_jeux_videos_lns/1/edit
  def edit
  end

  # POST /_jeux_videos_lns or /_jeux_videos_lns.json
  def create
    @_jeux_videos_ln = JeuxVideosLn.new(_jeux_videos_ln_params)

    respond_to do |format|
      if @_jeux_videos_ln.save
        format.html { redirect_to _jeux_videos_ln_url(@_jeux_videos_ln), notice: "Jeux videos ln was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_lns/1 or /_jeux_videos_lns/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_ln.update(_jeux_videos_ln_params)
        format.html { redirect_to _jeux_videos_ln_url(@_jeux_videos_ln), notice: "Jeux videos ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_lns/1 or /_jeux_videos_lns/1.json
  def destroy
    @_jeux_videos_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_lns_url, notice: "Jeux videos ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_ln
      @_jeux_videos_ln = JeuxVideosLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_ln_params
      params.require(:_jeux_videos_ln).permit(:name)
    end
end
