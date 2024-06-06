class JeuxVideosTopicsController < ApplicationController
  before_action :set__jeux_videos_topic, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_topics or /_jeux_videos_topics.json
  def index
    @_jeux_videos_topics = JeuxVideosTopic.all
  end

  # GET /_jeux_videos_topics/1 or /_jeux_videos_topics/1.json
  def show
  end

  # GET /_jeux_videos_topics/new
  def new
    @_jeux_videos_topic = JeuxVideosTopic.new
  end

  # GET /_jeux_videos_topics/1/edit
  def edit
  end

  # POST /_jeux_videos_topics or /_jeux_videos_topics.json
  def create
    @_jeux_videos_topic = JeuxVideosTopic.new(_jeux_videos_topic_params)

    respond_to do |format|
      if @_jeux_videos_topic.save
        format.html { redirect_to _jeux_videos_topic_url(@_jeux_videos_topic), notice: "Jeux videos topic was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_topics/1 or /_jeux_videos_topics/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_topic.update(_jeux_videos_topic_params)
        format.html { redirect_to _jeux_videos_topic_url(@_jeux_videos_topic), notice: "Jeux videos topic was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_topics/1 or /_jeux_videos_topics/1.json
  def destroy
    @_jeux_videos_topic.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_topics_url, notice: "Jeux videos topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_topic
      @_jeux_videos_topic = JeuxVideosTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_topic_params
      params.require(:_jeux_videos_topic).permit(:name)
    end
end
