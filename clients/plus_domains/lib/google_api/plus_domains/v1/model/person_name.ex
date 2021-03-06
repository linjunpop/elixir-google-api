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

defmodule GoogleApi.PlusDomains.V1.Model.PersonName do
  @moduledoc """
  An object representation of the individual components of a person&#39;s name.

  ## Attributes

  - familyName (String.t): The family name (last name) of this person. Defaults to: `null`.
  - formatted (String.t): The full name of this person, including middle names, suffixes, etc. Defaults to: `null`.
  - givenName (String.t): The given name (first name) of this person. Defaults to: `null`.
  - honorificPrefix (String.t): The honorific prefixes (such as \&quot;Dr.\&quot; or \&quot;Mrs.\&quot;) for this person. Defaults to: `null`.
  - honorificSuffix (String.t): The honorific suffixes (such as \&quot;Jr.\&quot;) for this person. Defaults to: `null`.
  - middleName (String.t): The middle name of this person. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :familyName => any(),
          :formatted => any(),
          :givenName => any(),
          :honorificPrefix => any(),
          :honorificSuffix => any(),
          :middleName => any()
        }

  field(:familyName)
  field(:formatted)
  field(:givenName)
  field(:honorificPrefix)
  field(:honorificSuffix)
  field(:middleName)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.PersonName do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.PersonName.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.PersonName do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
