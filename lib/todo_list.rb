class TodoList
  def initialize
    @tasks = []
  end

  def add(todo)
    @tasks << todo
  end

  def incomplete
    return @tasks.reject(&:done?)
  end

  def complete
    return @tasks.select(&:mark_done!)
  end

  def give_up!
    return @tasks.each(&:mark_done!)
  end
end