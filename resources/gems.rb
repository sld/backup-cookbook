actions :install
default_action :install

attribute :ruby_version, kind_of: String
attribute :user, kind_of: String
attribute :group, kind_of: String
attribute :version, kind_of: String
attribute :dependencies, kind_of: Array, default: []
