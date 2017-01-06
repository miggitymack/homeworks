class LRUCache
  attr_reader :size, :cache

    def initialize(size)
      @size = size
      @cache = []
    end

    def count
      # returns number of elements currently in cache
      cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if cache.include?(el)
        cache.delete(el)
        cache << el
      elsif @size <= count
        cache.shift
        cache << el
      else
        cache << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache

    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show
