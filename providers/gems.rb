action :install do
  #NOTE: to work with version modify the chef-chruby cookbook
  chruby_gem "backup" do
    ruby_version new_resource.ruby_version
    user new_resource.user
    group new_resource.group
  end

  new_resource.dependencies.each do |gem, ver|
    chruby_gem gem do
      ruby_version new_resource.ruby_version
      user new_resource.user
      group new_resource.group
    end
  end
end
