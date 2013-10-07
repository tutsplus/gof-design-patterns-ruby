module Application
  class User
    def initialize username, name, job
      @username = username
      @name = name
      @job = job
    end

    def update key, value
      instance_variable_set("@#{key}".to_sym, value)

      @observers.each { |o| o.updated self }
    end

    def subscribe observer
      @observers ||= []
      @observers << observer
    end
  end
end
