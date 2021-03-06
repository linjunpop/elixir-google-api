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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput do
  @moduledoc """
  Represents the query input. It can contain either:  1.  An audio config which     instructs the speech recognizer how to process the speech audio.  2.  A conversational query in the form of text,.  3.  An event that specifies which intent to trigger.

  ## Attributes

  - audioConfig (GoogleCloudDialogflowV2InputAudioConfig): Instructs the speech recognizer how to process the speech audio. Defaults to: `null`.
  - event (GoogleCloudDialogflowV2EventInput): The event to be processed. Defaults to: `null`.
  - text (GoogleCloudDialogflowV2TextInput): The natural language text to be processed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputAudioConfig.t(),
          :event => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EventInput.t(),
          :text => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextInput.t()
        }

  field(:audioConfig, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputAudioConfig)
  field(:event, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EventInput)
  field(:text, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextInput)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
