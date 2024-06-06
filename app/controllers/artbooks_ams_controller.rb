class ArtbooksAmsController < ApplicationController
  before_action :set_artbooks_am, only: %i[ show edit update destroy ]

  # GET /artbooks_ams or /artbooks_ams.json
  def index
    @artbooks_ams = ArtbooksAm.all
  end

  # GET /artbooks_ams/1 or /artbooks_ams/1.json
  def show
  end

  # GET /artbooks_ams/new
  def new
    @artbooks_am = ArtbooksAm.new
  end

  # GET /artbooks_ams/1/edit
  def edit
  end

  # POST /artbooks_ams or /artbooks_ams.json
  def create
    @artbooks_am = ArtbooksAm.new(artbooks_am_params)

    respond_to do |format|
      if @artbooks_am.save
        format.html { redirect_to artbooks_am_url(@artbooks_am), notice: "Artbooks am was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_ams/1 or /artbooks_ams/1.json
  def update
    respond_to do |format|
      if @artbooks_am.update(artbooks_am_params)
        format.html { redirect_to artbooks_am_url(@artbooks_am), notice: "Artbooks am was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_ams/1 or /artbooks_ams/1.json
  def destroy
    @artbooks_am.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_ams_url, notice: "Artbooks am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_am
      @artbooks_am = ArtbooksAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_am_params
      params.require(:artbooks_am).permit(:name)
    end
end
