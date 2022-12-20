class Alien < ActiveRecord::Base
  has_many :visitations
  has_many :earthlings, through: :visitations

  def visit(earthling)
    Visitation.create(date: DateTime.now, alien_id: id, earthling_id: earthling.id)
  end

  def total_light_years_traveled
    light_years_to_home_planet * visitations.count * 2
  end

  def self.most_frequent_visitor
    max_visitations = 0
    all.each do |alien|
      max_visitations = alien.visitations.count if max_visitations < alien.visitations.count
    end

    all.each do |alien|
      return alien if alien.visitations.count == max_visitations
    end
  end

  def self.average_light_years_to_home_planet
    avg = 0
    all.each { |alien| avg += alien.light_years_to_home_planet }
    avg /= all.length
    avg
  end
end
