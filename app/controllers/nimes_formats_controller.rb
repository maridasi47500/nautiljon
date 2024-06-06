class AnimesFormatsController < ApplicationController
  before_action :set_animes_format, only: %i[ show edit update destroy ]

  # GET /animes_formats or /animes_formats.json
  def index
    @animes_formats = AnimesFormat.all
  end

  # GET /animes_formats/1 or /animes_formats/1.json
  def show
  end

  # GET /animes_formats/new
  def new
    @animes_format = AnimesFormat.new
  end

  # GET /animes_formats/1/edit
  def edit
  end

  # POST /animes_formats or /animes_formats.json
  def create
    @animes_format = AnimesFormat.new(animes_format_params)

    respond_to do |format|
      if @animes_format.save
        format.html { redirect_to animes_format_url(@animes_format), notice: "Animes format was successfully created." }
        format.json { render :show, status: :created, location: @animes_format }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_formats/1 or /animes_formats/1.json
  def update
    respond_to do |format|
      if @animes_format.update(animes_format_params)
        format.html { redirect_to animes_format_url(@animes_format), notice: "Animes format was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_format }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_formats/1 or /animes_formats/1.json
  def destroy
    @animes_format.destroy!

    respond_to do |format|
      format.html { redirect_to animes_formats_url, notice: "Animes format was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_format
      @animes_format = AnimesFormat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_format_params
      params.require(:animes_format).permit(:name)
    end
end
