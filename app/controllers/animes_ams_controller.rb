class AnimesAmsController < ApplicationController
  before_action :set_animes_am, only: %i[ show edit update destroy ]

  # GET /animes_ams or /animes_ams.json
  def index
    @animes_ams = AnimesAm.all
  end

  # GET /animes_ams/1 or /animes_ams/1.json
  def show
  end

  # GET /animes_ams/new
  def new
    @animes_am = AnimesAm.new
  end

  # GET /animes_ams/1/edit
  def edit
  end

  # POST /animes_ams or /animes_ams.json
  def create
    @animes_am = AnimesAm.new(animes_am_params)

    respond_to do |format|
      if @animes_am.save
        format.html { redirect_to animes_am_url(@animes_am), notice: "Animes am was successfully created." }
        format.json { render :show, status: :created, location: @animes_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_ams/1 or /animes_ams/1.json
  def update
    respond_to do |format|
      if @animes_am.update(animes_am_params)
        format.html { redirect_to animes_am_url(@animes_am), notice: "Animes am was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_ams/1 or /animes_ams/1.json
  def destroy
    @animes_am.destroy!

    respond_to do |format|
      format.html { redirect_to animes_ams_url, notice: "Animes am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_am
      @animes_am = AnimesAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_am_params
      params.require(:animes_am).permit(:name)
    end
end
