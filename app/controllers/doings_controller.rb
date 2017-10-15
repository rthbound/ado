class DoingsController < ApplicationController
  before_action :set_doing, only: [:show, :edit, :update, :destroy]

  # GET /doings
  # GET /doings.json
  def index
    @doings = Doing.all
  end

  # GET /doings/1
  # GET /doings/1.json
  def show
  end

  # GET /doings/new
  def new
    @doing = Doing.new
  end

  # GET /doings/1/edit
  def edit
  end

  # POST /doings
  # POST /doings.json
  def create
    @doing = Doing.new(doing_params)
    @doing.done_at ||= params[:days_ago].to_i.days.ago
    @doing.user = current_user

    respond_to do |format|
      if @doing.save
        format.html { redirect_to request.referer || root_path, notice: "You did \"#{@doing.thing.title}\" #{@doing.thing.done_ago} ago" }
        format.json { render :show, status: :created, location: @doing }
      else
        format.html { render :new }
        format.json { render json: @doing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doings/1
  # PATCH/PUT /doings/1.json
  def update
    respond_to do |format|
      if @doing.update(doing_params)
        format.html { redirect_to @doing, notice: 'Doing was successfully updated.' }
        format.json { render :show, status: :ok, location: @doing }
      else
        format.html { render :edit }
        format.json { render json: @doing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doings/1
  # DELETE /doings/1.json
  def destroy
    @doing.destroy
    respond_to do |format|
      format.html { redirect_to doings_url, notice: 'Doing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doing
      @doing = Doing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doing_params
      params.require(:doing).permit(:duration_in_minutes, :thing_id, :done_at)
    end
end
