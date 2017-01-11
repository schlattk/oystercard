require "./lib/journey"

class JourneyLog

attr_reader :list, :current_journey

  def initialize
    @list = []
    @current_journey = nil
  end


  def start_journey(entry_station)
    @current_journey = Journey.new(entry_station)

  end

  def end_journey(exit_station)

  @current_journey.finish(exit_station)
  update_list(current_journey)
  end

  def update_list(current_journey)
    list << {entry_station: current_journey.entry_station, exit_station: current_journey.exit_station}

  end

  def journey_nil?
    current_journey == nil

  end

  def reset_journey
  @current_journey = nil
  end

end
