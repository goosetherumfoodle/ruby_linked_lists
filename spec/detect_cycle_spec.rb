require_relative '../detect_cycle'
require_relative '../linked_list'

RSpec.describe DetectCycle do
  describe 'detecting a cycle' do
    context 'with a cycle' do
      it 'returns `true`' do
        n1 = LinkedList.new(1)
        n2 = LinkedList.new(2, n1)
        n3 = LinkedList.new(3, n2)
        n1.next_node = n3

        result = DetectCycle.new(n1).call

        expect(result).to be_truthy
      end
    end

    context 'with a acyclical list' do
      it 'returns `false`' do
        list = LinkedList.build(1, 2, 3, 4, 5)

        result = DetectCycle.new(list).call

        expect(result).to be_falsy
      end
    end
  end
end
