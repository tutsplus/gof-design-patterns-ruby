module Application
  class UserObserver
    def updated user
      puts <<EOF
The user is now the following:

Name: #{user.name}
Username: #{user.username}
Job: #{user.job}
EOF
    end
  end
end
