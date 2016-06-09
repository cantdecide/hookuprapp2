class HookupsController < ApplicationController
  before_action :set_hookup, only: [:show, :edit, :update, :destroy]

  # GET /hookups
  # GET /hookups.json
  def index
    @hookups = Hookup.all
  end

  # GET /hookups/1
  # GET /hookups/1.json
  def show
    @hookup = Hookup.find(params[:id])
    @hookup.composite_score = @hookup.personality + @hookup.level_of_attraction + @hookup.intenseness_of_orgasm + @hookup.dick
    if @hookup.did_you_cum then
      @hookup.composite_score += 5
    end
    if @hookup.did_you_cuddle_afterwards then
      @hookup.composite_score += 5
    end
    @hookup.save
  end

  # GET /hookups/new
  def new
    @hookup = Hookup.new
  end

  # GET /hookups/1/edit
  def edit
  end

  # POST /hookups
  # POST /hookups.json
  def create
    @hookup = Hookup.new(hookup_params)

    respond_to do |format|
      if @hookup.save
        format.html { redirect_to @hookup, notice: 'Hookup was successfully created.' }
        format.json { render :show, status: :created, location: @hookup }
      else
        format.html { render :new }
        format.json { render json: @hookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hookups/1
  # PATCH/PUT /hookups/1.json
  def update
    respond_to do |format|
      if @hookup.update(hookup_params)
        format.html { redirect_to @hookup, notice: 'Hookup was successfully updated.' }
        format.json { render :show, status: :ok, location: @hookup }
      else
        format.html { render :edit }
        format.json { render json: @hookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hookups/1
  # DELETE /hookups/1.json
  def destroy
    @hookup.destroy
    respond_to do |format|
      format.html { redirect_to hookups_url, notice: 'Hookup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hookup
      @hookup = Hookup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hookup_params
      params.require(:hookup).permit(:name, :age, :personality, :level_of_attraction, :intenseness_of_orgasm, :dick, :did_you_cum, :did_you_cuddle_afterwards, :composite_score)
    end
end
