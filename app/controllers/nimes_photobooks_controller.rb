class AnimesPhotobooksController < ApplicationController
  before_action :set_animes_photobook, only: %i[ show edit update destroy ]

  # GET /animes_photobooks or /animes_photobooks.json
  def index
    @animes_photobooks = AnimesPhotobook.all
  end

  # GET /animes_photobooks/1 or /animes_photobooks/1.json
  def show
  end

  # GET /animes_photobooks/new
  def new
    @animes_photobook = AnimesPhotobook.new
  end

  # GET /animes_photobooks/1/edit
  def edit
  end

  # POST /animes_photobooks or /animes_photobooks.json
  def create
    @animes_photobook = AnimesPhotobook.new(animes_photobook_params)

    respond_to do |format|
      if @animes_photobook.save
        format.html { redirect_to animes_photobook_url(@animes_photobook), notice: "Animes photobook was successfully created." }
        format.json { render :show, status: :created, location: @animes_photobook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_photobooks/1 or /animes_photobooks/1.json
  def update
    respond_to do |format|
      if @animes_photobook.update(animes_photobook_params)
        format.html { redirect_to animes_photobook_url(@animes_photobook), notice: "Animes photobook was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_photobook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_photobooks/1 or /animes_photobooks/1.json
  def destroy
    @animes_photobook.destroy!

    respond_to do |format|
      format.html { redirect_to animes_photobooks_url, notice: "Animes photobook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_photobook
      @animes_photobook = AnimesPhotobook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_photobook_params
      params.require(:animes_photobook).permit(:name)
    end
end
