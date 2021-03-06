# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount do
  @moduledoc """
  A service account identity, including the name and credentials that can be used to authenticate as the service account.

  ## Attributes

  - key (ServiceAccountKey): Credentials that can be used to authenticate as this ServiceAccount. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#serviceAccount\&quot;. Defaults to: `null`.
  - name (String.t): The account name of the service account, in the form of an email address. Assigned by the server. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey.t(),
          :kind => any(),
          :name => any()
        }

  field(:key, as: GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
