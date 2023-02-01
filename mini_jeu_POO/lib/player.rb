class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie."
  end

  def gets_damage(damage)
    @life_points = @life_points - damage

    if @life_points <= 0
      puts "le joueur #{@name} a été tué !"
    end
  end

  def attacks(player)
    puts "le joueur #{@name} attaque le joueur #{player.name}."
    damage_inflicted = compute_damage
    player.gets_damage(damage_inflicted)
    if player.life_points > 0
    puts "le joueur #{@name} lui inflige #{damage_inflicted} points de dommages."
    end
  end

  def compute_damage
    return rand(1..6)
  end

end
