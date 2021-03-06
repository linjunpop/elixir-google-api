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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.DeliveryControl do
  @moduledoc """
  Message contains details about how the deals will be paced.

  ## Attributes

  - creativeBlockingLevel (String.t): Output only. Specified the creative blocking levels to be applied. Defaults to: `null`.
    - Enum - one of [CREATIVE_BLOCKING_LEVEL_UNSPECIFIED, PUBLISHER_BLOCKING_RULES, ADX_POLICY_BLOCKING_ONLY]
  - deliveryRateType (String.t): Output only. Specifies how the impression delivery will be paced. Defaults to: `null`.
    - Enum - one of [DELIVERY_RATE_TYPE_UNSPECIFIED, EVENLY, FRONT_LOADED, AS_FAST_AS_POSSIBLE]
  - frequencyCaps ([FrequencyCap]): Output only. Specifies any frequency caps. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeBlockingLevel => any(),
          :deliveryRateType => any(),
          :frequencyCaps => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap.t())
        }

  field(:creativeBlockingLevel)
  field(:deliveryRateType)
  field(:frequencyCaps, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DeliveryControl do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.DeliveryControl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DeliveryControl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
