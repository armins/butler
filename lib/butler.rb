class Butler
  def list
    ['command1', 'command2', 'command3']
  end

  def execute(task)
    if self.list.include?(task)
      200
    else
      404
    end
  end
end
