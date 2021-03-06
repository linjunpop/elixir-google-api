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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  @moduledoc """
  Api is a light-weight descriptor for an API Interface.  Interfaces are also described as \&quot;protocol buffer services\&quot; in some contexts, such as by the \&quot;service\&quot; keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as \&quot;APIs\&quot; in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.

  ## Attributes

  - methods ([Method]): The methods of this interface, in unspecified order. Defaults to: `null`.
  - mixins ([Mixin]): Included interfaces. See Mixin. Defaults to: `null`.
  - name (String.t): The fully qualified name of this interface, including package name followed by the interface&#39;s simple name. Defaults to: `null`.
  - options ([Option]): Any metadata attached to the interface. Defaults to: `null`.
  - sourceContext (SourceContext): Source context for the protocol buffer service represented by this message. Defaults to: `null`.
  - syntax (String.t): The source syntax of the service. Defaults to: `null`.
    - Enum - one of [SYNTAX_PROTO2, SYNTAX_PROTO3]
  - version (String.t): A version string for this interface. If specified, must have the form &#x60;major-version.minor-version&#x60;, as in &#x60;1.10&#x60;. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here.  The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan.  The major version is also reflected in the package name of the interface, which must end in &#x60;v&lt;major-version&gt;&#x60;, as in &#x60;google.feature.v1&#x60;. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :methods => list(GoogleApi.ServiceConsumerManagement.V1.Model.Method.t()),
          :mixins => list(GoogleApi.ServiceConsumerManagement.V1.Model.Mixin.t()),
          :name => any(),
          :options => list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t()),
          :sourceContext => GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext.t(),
          :syntax => any(),
          :version => any()
        }

  field(:methods, as: GoogleApi.ServiceConsumerManagement.V1.Model.Method, type: :list)
  field(:mixins, as: GoogleApi.ServiceConsumerManagement.V1.Model.Mixin, type: :list)
  field(:name)
  field(:options, as: GoogleApi.ServiceConsumerManagement.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext)
  field(:syntax)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.Api.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
