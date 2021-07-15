class Backer
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def backed_projects
        result=ProjectBacker.all.select {|back|back.backer == self}
        result.map {|pjt|pjt.project}
    end

end