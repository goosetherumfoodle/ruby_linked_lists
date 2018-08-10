class DetectCycle

  def initialize(list)
    @list = list
  end

  def call
    result = list.reduce(init) do |accum, slow_node|
      accum[:fast_node] = fast_step(accum[:fast_node])
      if accum[:fast_node] == slow_node
        break {cycle: true}
      else
        accum
      end
    end

    return result[:cycle]
  end

  private
  attr_reader :list

  def init
    {fast_node: list, cycle: false}
  end

  def fast_step(node)
    node&.next_node&.next_node
  end
end
