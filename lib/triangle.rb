class Triangle
  def initialize(nodes)
    @nodes = nodes
  end

  def max_total
    if (@nodes.length == 0 || @nodes[0].length == 0)
      return 0;
    end
    sum = @nodes[0][0]
    left = max_total_recur(sum, 1, 0)
    right = max_total_recur(sum, 1, 1)
    [left, right].max
  end

  private

    def max_total_recur(sum, level, node)
      return sum if level >= @nodes.length
      return sum if node >= @nodes[level].length
      root = @nodes[level][node]
      left = max_total_recur(sum + root, level + 1, node)
      right = max_total_recur(sum + root, level + 1, node + 1)
      [left, right].max
    end

end
