class EvenInds
  def initialize(array)
    @array = array
    @even_inds = []
  end

  def method1
    @even_inds = []
    @array.each_with_index { |element, i| @even_inds << element if i % 2 == 0}
  end

  def method2
    @even_inds = []
    (0..@array.length-1).step(2) { |i| @even_inds << @array[i] }
  end

  def method3
    @even_inds = []
    @array.each_slice(2) { |a, b| @even_inds << a }
  end

end
