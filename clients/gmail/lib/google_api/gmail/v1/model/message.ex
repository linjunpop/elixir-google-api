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

defmodule GoogleApi.Gmail.V1.Model.Message do
  @moduledoc """
  An email message.

  ## Attributes

  - historyId (String.t): The ID of the last history record that modified this message. Defaults to: `null`.
  - id (String.t): The immutable ID of the message. Defaults to: `null`.
  - internalDate (String.t): The internal message creation timestamp (epoch ms), which determines ordering in the inbox. For normal SMTP-received email, this represents the time the message was originally accepted by Google, which is more reliable than the Date header. However, for API-migrated mail, it can be configured by client to be based on the Date header. Defaults to: `null`.
  - labelIds ([String.t]): List of IDs of labels applied to this message. Defaults to: `null`.
  - payload (MessagePart): The parsed email structure in the message parts. Defaults to: `null`.
  - raw (binary()): The entire email message in an RFC 2822 formatted and base64url encoded string. Returned in messages.get and drafts.get responses when the format&#x3D;RAW parameter is supplied. Defaults to: `null`.
  - sizeEstimate (integer()): Estimated size in bytes of the message. Defaults to: `null`.
  - snippet (String.t): A short part of the message text. Defaults to: `null`.
  - threadId (String.t): The ID of the thread the message belongs to. To add a message or draft to a thread, the following criteria must be met:  - The requested threadId must be specified on the Message or Draft.Message you supply with your request.  - The References and In-Reply-To headers must be set in compliance with the RFC 2822 standard.  - The Subject headers must match. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :historyId => any(),
          :id => any(),
          :internalDate => any(),
          :labelIds => list(any()),
          :payload => GoogleApi.Gmail.V1.Model.MessagePart.t(),
          :raw => any(),
          :sizeEstimate => any(),
          :snippet => any(),
          :threadId => any()
        }

  field(:historyId)
  field(:id)
  field(:internalDate)
  field(:labelIds, type: :list)
  field(:payload, as: GoogleApi.Gmail.V1.Model.MessagePart)
  field(:raw)
  field(:sizeEstimate)
  field(:snippet)
  field(:threadId)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end