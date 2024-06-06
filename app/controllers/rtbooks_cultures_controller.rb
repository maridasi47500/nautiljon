class ArtbooksCulturesController < ApplicationController
  before_action :set_artbooks_culture, only: %i[ show edit update destroy ]

  # GET /artbooks_cultures or /artbooks_cultures.json
  def index
    @artbooks_cultures = ArtbooksCulture.all
  end

  # GET /artbooks_cultures/1 or /artbooks_cultures/1.json
  def show
  end

  # GET /artbooks_cultures/new
  def new
    @artbooks_culture = ArtbooksCulture.new
  end

  # GET /artbooks_cultures/1/edit
  def edit
  end

  # POST /artbooks_cultures or /artbooks_cultures.json
  def create
    @artbooks_culture = ArtbooksCulture.new(artbooks_culture_params)

    respond_to do |format|
      if @artbooks_culture.save
        format.html { redirect_to artbooks_culture_url(@artbooks_culture), notice: "Artbooks culture was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_cultures/1 or /artbooks_cultures/1.json
  def update
    respond_to do |format|
      if @artbooks_culture.update(artbooks_culture_params)
        format.html { redirect_to artbooks_culture_url(@artbooks_culture), notice: "Artbooks culture was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_cultures/1 or /artbooks_cultures/1.json
  def destroy
    @artbooks_culture.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_cultures_url, notice: "Artbooks culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_culture
      @artbooks_culture = ArtbooksCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_culture_params
      params.require(:artbooks_culture).permit(:name)
    end
end
