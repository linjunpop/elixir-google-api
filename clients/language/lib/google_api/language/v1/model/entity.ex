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

defmodule GoogleApi.Language.V1.Model.Entity do
  @moduledoc """
  Represents a phrase in the text that is a known entity, such as a person, an organization, or location. The API associates information, such as salience and mentions, with entities.

  ## Attributes

  - mentions ([EntityMention]): The mentions of this entity in the input document. The API currently supports proper noun mentions. Defaults to: `null`.
  - metadata (%{optional(String.t) &#x3D;&gt; String.t}): Metadata associated with the entity.  For most entity types, the metadata is a Wikipedia URL (&#x60;wikipedia_url&#x60;) and Knowledge Graph MID (&#x60;mid&#x60;), if they are available. For the metadata associated with other entity types, see the Type table below. Defaults to: `null`.
  - name (String.t): The representative name for the entity. Defaults to: `null`.
  - salience (float()): The salience score associated with the entity in the [0, 1.0] range.  The salience score for an entity provides information about the importance or centrality of that entity to the entire document text. Scores closer to 0 are less salient, while scores closer to 1.0 are highly salient. Defaults to: `null`.
  - sentiment (Sentiment): For calls to AnalyzeEntitySentiment or if AnnotateTextRequest.Features.extract_entity_sentiment is set to true, this field will contain the aggregate sentiment expressed for this entity in the provided document. Defaults to: `null`.
  - type (String.t): The entity type. Defaults to: `null`.
    - Enum - one of [UNKNOWN, PERSON, LOCATION, ORGANIZATION, EVENT, WORK_OF_ART, CONSUMER_GOOD, OTHER, PHONE_NUMBER, ADDRESS, DATE, NUMBER, PRICE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mentions => list(GoogleApi.Language.V1.Model.EntityMention.t()),
          :metadata => map(),
          :name => any(),
          :salience => any(),
          :sentiment => GoogleApi.Language.V1.Model.Sentiment.t(),
          :type => any()
        }

  field(:mentions, as: GoogleApi.Language.V1.Model.EntityMention, type: :list)
  field(:metadata, type: :map)
  field(:name)
  field(:salience)
  field(:sentiment, as: GoogleApi.Language.V1.Model.Sentiment)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.Entity do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.Entity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.Entity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
