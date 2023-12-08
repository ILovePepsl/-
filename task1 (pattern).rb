#Target
class Target
  def request
    raise NotImplementedError, ':('
  end
end

# Adaptee
class Adaptee
  def specific_request
    puts 'I love pepsi <3'
  end
end

#Adapter
class Adapter < Target
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def request
    @adaptee.specific_request
  end
end

# клієнтський код
def client_code(target)
  target.request
end

# створюємо екземпляр класу
adaptee = Adaptee.new

# чтворюємо адаптер
adapter = Adapter.new(adaptee)

#викликаємо клієнтський код
client_code(adapter)
