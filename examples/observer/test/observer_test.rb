require "test_helper"
require "application/user"
require "application/observers/user"

module Application
  describe User do
    it "notifies spectators of changes to the user" do
      user = User.new "josemotanet", "Jose Mota", "Software Designer"
      observer = Minitest::Mock.new
      observer.expect :updated, nil, [ user ]

      user.subscribe observer
      user.update :username, "josemota"

    end
  end
end
