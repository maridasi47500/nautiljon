class AnimesArtbooksController < ApplicationController
  before_action :set_animes_artbook, only: %i[ show edit update destroy ]

  # GET /animes_artbooks or /animes_artbooks.json
  def index
    @animes_artbooks = AnimesArtbook.all
  end

  # GET /animes_artbooks/1 or /animes_artbooks/1.json
  def show
  end

  # GET /animes_artbooks/new
  def new
    @animes_artbook = AnimesArtbook.new
  end

  # GET /animes_artbooks/1/edit
  def edit
  end

  # POST /animes_artbooks or /animes_artbooks.json
  def create
    @animes_artbook = AnimesArtbook.new(animes_artbook_params)

    respond_to do |format|
      if @animes_artbook.save
        format.html { redirect_to animes_artbook_url(@animes_artbook), notice: "Animes artbook was successfully created." }
        format.json { render :show, status: :created, location: @animes_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_artbooks/1 or /animes_artbooks/1.json
  def update
    respond_to do |format|
      if @animes_artbook.update(animes_artbook_params)
        format.html { redirect_to animes_artbook_url(@animes_artbook), notice: "Animes artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_artbooks/1 or /animes_artbooks/1.json
  def destroy
    @animes_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to animes_artbooks_url, notice: "Animes artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_artbook
      @animes_artbook = AnimesArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_artbook_params
      params.require(:animes_artbook).permit(:name)
    end
end
