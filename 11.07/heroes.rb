module Characteristics
end

module Mechanic
  def has_health
    define_method(health) do
      instance_variable_get(@health)
    end
    define_method(health=) do |val|
      instance_variable_set(@health, val)
    end
  end

  def has_mana
    define_method(mana) do
      instance_variable_get(@mana)
    end
    define_method(mana=) do |val|
      instance_variable_set(@mana, val)
    end
  end

  def has_endurance
    define_method(endurance) do
      instance_variable_get(@endurance)
    end
    define_method(endurance=) do |val|
      instance_variable_set(@endurance, val)
    end
  end
end

class Character
  extend Characteristics

end

class Warrior < Character
  extend Mechanic
  has_mana
  has_health
  has_endurance
end

class Mage < Character
  extend Mechanic
  has_mana
  has_health
  has_endurance
end

class Thief < Character
  extend Mechanic
  has_mana
  has_health
  has_endurance
end
