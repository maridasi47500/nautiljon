class JeuxVideosQuizzsController < ApplicationController
  before_action :set__jeux_videos_quizz, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_quizzs or /_jeux_videos_quizzs.json
  def index
    @_jeux_videos_quizzs = JeuxVideosQuizz.all
  end

  # GET /_jeux_videos_quizzs/1 or /_jeux_videos_quizzs/1.json
  def show
  end

  # GET /_jeux_videos_quizzs/new
  def new
    @_jeux_videos_quizz = JeuxVideosQuizz.new
  end

  # GET /_jeux_videos_quizzs/1/edit
  def edit
  end

  # POST /_jeux_videos_quizzs or /_jeux_videos_quizzs.json
  def create
    @_jeux_videos_quizz = JeuxVideosQuizz.new(_jeux_videos_quizz_params)

    respond_to do |format|
      if @_jeux_videos_quizz.save
        format.html { redirect_to _jeux_videos_quizz_url(@_jeux_videos_quizz), notice: "Jeux videos quizz was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_quizzs/1 or /_jeux_videos_quizzs/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_quizz.update(_jeux_videos_quizz_params)
        format.html { redirect_to _jeux_videos_quizz_url(@_jeux_videos_quizz), notice: "Jeux videos quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_quizzs/1 or /_jeux_videos_quizzs/1.json
  def destroy
    @_jeux_videos_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_quizzs_url, notice: "Jeux videos quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_quizz
      @_jeux_videos_quizz = JeuxVideosQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_quizz_params
      params.require(:_jeux_videos_quizz).permit(:name)
    end
end
