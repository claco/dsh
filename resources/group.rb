#
# Cookbook Name:: dsh
# Resource:: group
#
# Copyright 2012, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :join, :execute

def initialize(*args)
  super
  @action = :join
end

attribute :group, :kind_of => String, :name_attribute => true
attribute :user, :kind_of => [String, Hash], :default => nil
attribute :admin_user, :kind_of => [String, Hash], :default => nil
attribute :admin_pubkey, :kind_of => String, :default => nil
attribute :network, :kind_of => String, :default => nil
attribute :execute, :kind_of => String, :default => nil
