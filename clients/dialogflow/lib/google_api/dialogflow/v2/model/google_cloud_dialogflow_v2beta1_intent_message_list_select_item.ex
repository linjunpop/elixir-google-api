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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem do
  @moduledoc """
  An item in the list.

  ## Attributes

  - info (GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo): Required. Additional information about this option. Defaults to: `null`.
  - description (String.t): Optional. The main text describing the item. Defaults to: `null`.
  - image (GoogleCloudDialogflowV2beta1IntentMessageImage): Optional. The image to display. Defaults to: `null`.
  - title (String.t): Required. The title of the list item. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :info =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.t(),
          :description => any(),
          :image =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t(),
          :title => any()
        }

  field(
    :info,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
  )

  field(:description)
  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
