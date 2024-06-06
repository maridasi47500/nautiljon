class AnimesEncoursController < ApplicationController
  before_action :set_animes_encour, only: %i[ show edit update destroy ]

  # GET /animes_encours or /animes_encours.json
  def index
    @animes_encours = AnimesEncour.all
  end

  # GET /animes_encours/1 or /animes_encours/1.json
  def show
  end

  # GET /animes_encours/new
  def new
    @animes_encour = AnimesEncour.new
  end

  # GET /animes_encours/1/edit
  def edit
  end

  # POST /animes_encours or /animes_encours.json
  def create
    @animes_encour = AnimesEncour.new(animes_encour_params)

    respond_to do |format|
      if @animes_encour.save
        format.html { redirect_to animes_encour_url(@animes_encour), notice: "Animes encour was successfully created." }
        format.json { render :show, status: :created, location: @animes_encour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_encour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_encours/1 or /animes_encours/1.json
  def update
    respond_to do |format|
      if @animes_encour.update(animes_encour_params)
        format.html { redirect_to animes_encour_url(@animes_encour), notice: "Animes encour was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_encour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_encour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_encours/1 or /animes_encours/1.json
  def destroy
    @animes_encour.destroy!

    respond_to do |format|
      format.html { redirect_to animes_encours_url, notice: "Animes encour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_encour
      @animes_encour = AnimesEncour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_encour_params
      params.require(:animes_encour).permit(:name)
    end
end
