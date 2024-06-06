class AnimesOstsController < ApplicationController
  before_action :set_animes_ost, only: %i[ show edit update destroy ]

  # GET /animes_osts or /animes_osts.json
  def index
    @animes_osts = AnimesOst.all
  end

  # GET /animes_osts/1 or /animes_osts/1.json
  def show
  end

  # GET /animes_osts/new
  def new
    @animes_ost = AnimesOst.new
  end

  # GET /animes_osts/1/edit
  def edit
  end

  # POST /animes_osts or /animes_osts.json
  def create
    @animes_ost = AnimesOst.new(animes_ost_params)

    respond_to do |format|
      if @animes_ost.save
        format.html { redirect_to animes_ost_url(@animes_ost), notice: "Animes ost was successfully created." }
        format.json { render :show, status: :created, location: @animes_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_osts/1 or /animes_osts/1.json
  def update
    respond_to do |format|
      if @animes_ost.update(animes_ost_params)
        format.html { redirect_to animes_ost_url(@animes_ost), notice: "Animes ost was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_osts/1 or /animes_osts/1.json
  def destroy
    @animes_ost.destroy!

    respond_to do |format|
      format.html { redirect_to animes_osts_url, notice: "Animes ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_ost
      @animes_ost = AnimesOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_ost_params
      params.require(:animes_ost).permit(:name)
    end
end
