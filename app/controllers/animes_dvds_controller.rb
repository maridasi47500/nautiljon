class AnimesDvdsController < ApplicationController
  before_action :set_animes_dvd, only: %i[ show edit update destroy ]

  # GET /animes_dvds or /animes_dvds.json
  def index
    @animes_dvds = AnimesDvd.all
  end

  # GET /animes_dvds/1 or /animes_dvds/1.json
  def show
  end

  # GET /animes_dvds/new
  def new
    @animes_dvd = AnimesDvd.new
  end

  # GET /animes_dvds/1/edit
  def edit
  end

  # POST /animes_dvds or /animes_dvds.json
  def create
    @animes_dvd = AnimesDvd.new(animes_dvd_params)

    respond_to do |format|
      if @animes_dvd.save
        format.html { redirect_to animes_dvd_url(@animes_dvd), notice: "Animes dvd was successfully created." }
        format.json { render :show, status: :created, location: @animes_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_dvds/1 or /animes_dvds/1.json
  def update
    respond_to do |format|
      if @animes_dvd.update(animes_dvd_params)
        format.html { redirect_to animes_dvd_url(@animes_dvd), notice: "Animes dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_dvds/1 or /animes_dvds/1.json
  def destroy
    @animes_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to animes_dvds_url, notice: "Animes dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_dvd
      @animes_dvd = AnimesDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_dvd_params
      params.require(:animes_dvd).permit(:name)
    end
end
