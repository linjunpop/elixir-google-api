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

defmodule GoogleApi.Blogger.V3.Model.Pageviews do
  @moduledoc """


  ## Attributes

  - blogId (String.t): Blog Id Defaults to: `null`.
  - counts ([PageviewsCounts]): The container of posts in this blog. Defaults to: `null`.
  - kind (String.t): The kind of this entry. Always blogger#page_views Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blogId => any(),
          :counts => list(GoogleApi.Blogger.V3.Model.PageviewsCounts.t()),
          :kind => any()
        }

  field(:blogId)
  field(:counts, as: GoogleApi.Blogger.V3.Model.PageviewsCounts, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Pageviews do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.Pageviews.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Pageviews do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
