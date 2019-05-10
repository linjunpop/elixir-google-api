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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ListConfigurationsResponse do
  @moduledoc """
  ListConfigurationsResponse is a list of Configuration resources.

  ## Attributes

  - apiVersion (String.t): The API version for this call such as \&quot;v1alpha1\&quot;. Defaults to: `null`.
  - items ([Configuration]): List of Configurations. Defaults to: `null`.
  - kind (String.t): The kind of this resource, in this case \&quot;ConfigurationList\&quot;. Defaults to: `null`.
  - metadata (ListMeta): Metadata associated with this Configuration list. Defaults to: `null`.
  - unreachable ([String.t]): Locations that could not be reached. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => any(),
          :items => list(GoogleApi.CloudRun.V1alpha1.Model.Configuration.t()),
          :kind => any(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ListMeta.t(),
          :unreachable => list(any())
        }

  field(:apiVersion)
  field(:items, as: GoogleApi.CloudRun.V1alpha1.Model.Configuration, type: :list)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ListMeta)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListConfigurationsResponse do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ListConfigurationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListConfigurationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end