class AnimesTopicsController < ApplicationController
  before_action :set_animes_topic, only: %i[ show edit update destroy ]

  # GET /animes_topics or /animes_topics.json
  def index
    @animes_topics = AnimesTopic.all
  end

  # GET /animes_topics/1 or /animes_topics/1.json
  def show
  end

  # GET /animes_topics/new
  def new
    @animes_topic = AnimesTopic.new
  end

  # GET /animes_topics/1/edit
  def edit
  end

  # POST /animes_topics or /animes_topics.json
  def create
    @animes_topic = AnimesTopic.new(animes_topic_params)

    respond_to do |format|
      if @animes_topic.save
        format.html { redirect_to animes_topic_url(@animes_topic), notice: "Animes topic was successfully created." }
        format.json { render :show, status: :created, location: @animes_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_topics/1 or /animes_topics/1.json
  def update
    respond_to do |format|
      if @animes_topic.update(animes_topic_params)
        format.html { redirect_to animes_topic_url(@animes_topic), notice: "Animes topic was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_topics/1 or /animes_topics/1.json
  def destroy
    @animes_topic.destroy!

    respond_to do |format|
      format.html { redirect_to animes_topics_url, notice: "Animes topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_topic
      @animes_topic = AnimesTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_topic_params
      params.require(:animes_topic).permit(:name)
    end
end
