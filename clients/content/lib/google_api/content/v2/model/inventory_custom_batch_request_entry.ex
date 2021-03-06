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

defmodule GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch inventory request.

  ## Attributes

  - batchId (integer()): An entry ID, unique within the batch request. Defaults to: `null`.
  - inventory (Inventory): Price and availability of the product. Defaults to: `null`.
  - merchantId (String.t): The ID of the managing account. Defaults to: `null`.
  - productId (String.t): The ID of the product for which to update price and availability. Defaults to: `null`.
  - storeCode (String.t): The code of the store for which to update price and availability. Use online to update price and availability of an online product. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => any(),
          :inventory => GoogleApi.Content.V2.Model.Inventory.t(),
          :merchantId => any(),
          :productId => any(),
          :storeCode => any()
        }

  field(:batchId)
  field(:inventory, as: GoogleApi.Content.V2.Model.Inventory)
  field(:merchantId)
  field(:productId)
  field(:storeCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
