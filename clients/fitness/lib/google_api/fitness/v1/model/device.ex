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

defmodule GoogleApi.Fitness.V1.Model.Device do
  @moduledoc """
  Representation of an integrated device (such as a phone or a wearable) that can hold sensors. Each sensor is exposed as a data source.  The main purpose of the device information contained in this class is to identify the hardware of a particular data source. This can be useful in different ways, including:   - Distinguishing two similar sensors on different devices (the step counter on two nexus 5 phones, for instance) - Display the source of data to the user (by using the device make / model) - Treat data differently depending on sensor type (accelerometers on a watch may give different patterns than those on a phone) - Build different analysis models for each device/version.

  ## Attributes

  - manufacturer (String.t): Manufacturer of the product/hardware. Defaults to: `null`.
  - model (String.t): End-user visible model name for the device. Defaults to: `null`.
  - type (String.t): A constant representing the type of the device. Defaults to: `null`.
    - Enum - one of [chestStrap, headMounted, phone, scale, tablet, unknown, watch]
  - uid (String.t): The serial number or other unique ID for the hardware. This field is obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the uid field in clear and normal form. Defaults to: `null`.
  - version (String.t): Version string for the device hardware/software. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :manufacturer => any(),
          :model => any(),
          :type => any(),
          :uid => any(),
          :version => any()
        }

  field(:manufacturer)
  field(:model)
  field(:type)
  field(:uid)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
