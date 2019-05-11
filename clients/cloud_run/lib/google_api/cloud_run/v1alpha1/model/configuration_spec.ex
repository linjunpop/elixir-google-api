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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec do
  @moduledoc """
  ConfigurationSpec holds the desired state of the Configuration (from the client).

  ## Attributes

  - generation (integer()): Deprecated and not currently populated by Cloud Run. See metadata.generation instead, which is the sequence number containing the latest generation of the desired state.  Read-only. Defaults to: `null`.
  - revisionTemplate (RevisionTemplate): RevisionTemplate holds the latest specification for the Revision to be stamped out. The template references the container image, and may also include labels and annotations that should be attached to the Revision. To correlate a Revision, and/or to force a Revision to be created when the spec doesn&#39;t otherwise change, a nonce label may be provided in the template metadata. For more details, see: https://github.com/knative/serving/blob/master/docs/client-conventions.md#associate-modifications-with-revisions  Cloud Run does not currently support referencing a build that is responsible for materializing the container image from source. Defaults to: `null`.
  - template (RevisionTemplate): Template holds the latest specification for the Revision to be stamped out. Not currently supported by Cloud Run. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generation => any(),
          :revisionTemplate => GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate.t(),
          :template => GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate.t()
        }

  field(:generation)
  field(:revisionTemplate, as: GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate)
  field(:template, as: GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
