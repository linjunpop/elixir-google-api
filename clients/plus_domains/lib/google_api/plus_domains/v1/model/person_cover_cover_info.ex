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

defmodule GoogleApi.PlusDomains.V1.Model.PersonCoverCoverInfo do
  @moduledoc """
  Extra information about the cover photo.

  ## Attributes

  - leftImageOffset (integer()): The difference between the left position of the cover image and the actual displayed cover image. Only valid for banner layout. Defaults to: `null`.
  - topImageOffset (integer()): The difference between the top position of the cover image and the actual displayed cover image. Only valid for banner layout. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :leftImageOffset => any(),
          :topImageOffset => any()
        }

  field(:leftImageOffset)
  field(:topImageOffset)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.PersonCoverCoverInfo do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.PersonCoverCoverInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.PersonCoverCoverInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
