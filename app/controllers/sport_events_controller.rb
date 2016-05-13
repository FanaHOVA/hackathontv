class SportEventsController < ApplicationController
  before_action :set_sport_event, only: [:show, :update, :destroy]

  # GET /sport_events
  # GET /sport_events.json
  def index
    @sport_events = SportEvent.all
  end

  # GET /sport_events/1
  # GET /sport_events/1.json
  def show
  end

  # POST /sport_events
  # POST /sport_events.json
  def create
    @sport_event = SportEvent.new(sport_event_params)

    if @sport_event.save
      render :show, status: :created, location: @sport_event
    else
      render json: @sport_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sport_events/1
  # PATCH/PUT /sport_events/1.json
  def update
    if @sport_event.update(sport_event_params)
      render :show, status: :ok, location: @sport_event
    else
      render json: @sport_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sport_events/1
  # DELETE /sport_events/1.json
  def destroy
    @sport_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_event
      @sport_event = SportEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_event_params
      params.require(:sport_event).permit(:name, :location, :sport, :time)
    end
end
