class MyEach
  class << self
    def each(arr)
      for i in arr do
        yield(i)
      end
    end

    # def each(arr, &block)
    #   for i in arr do
    #     block.call(i)
    #   end
    # end

    
  end
end