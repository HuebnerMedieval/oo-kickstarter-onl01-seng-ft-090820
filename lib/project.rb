class Project
  attr_reader :backers, :name
  
  def initialize(name)
    @name = name
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !(backer.backed_projects.include?(self))
      backer.back_project(self)
    end
  end
end