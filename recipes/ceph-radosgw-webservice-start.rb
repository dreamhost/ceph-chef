#
# Author:: Hans Chris Jones <chris.jones@lambdastack.io>
# Cookbook Name:: cepheus
#
# Copyright 2017, LambdaStack
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# If using Ubuntu then must be using 16.04 or higher
if node['ceph']['radosgw']['rgw_webservice']['enable']
    execute 'rgw-webservice-start' do
        command 'sudo systemctl start rgw_webservice'
        ignore_failure true
    end
end
