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

defmodule GoogleApi.Container.V1.Model.UsableSubnetworkSecondaryRange do
  @moduledoc """
  Secondary IP range of a usable subnetwork.

  ## Attributes

  - ipCidrRange (String.t): The range of IP addresses belonging to this subnetwork secondary range. Defaults to: `null`.
  - rangeName (String.t): The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. Defaults to: `null`.
  - status (String.t): This field is to determine the status of the secondary range programmably. Defaults to: `null`.
    - Enum - one of [UNKNOWN, UNUSED, IN_USE_SERVICE, IN_USE_SHAREABLE_POD, IN_USE_MANAGED_POD]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipCidrRange => any(),
          :rangeName => any(),
          :status => any()
        }

  field(:ipCidrRange)
  field(:rangeName)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.UsableSubnetworkSecondaryRange do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.UsableSubnetworkSecondaryRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.UsableSubnetworkSecondaryRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
