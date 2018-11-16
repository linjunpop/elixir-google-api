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

defmodule GoogleApi.Dataproc.V1.Model.Binding do
  @moduledoc """
  Associates members with a role.

  ## Attributes

  - condition (Expr): Unimplemented. The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently. Defaults to: `null`.
  - members ([String.t]): Specifies the identities requesting access for a Cloud Platform resource. members can have the following values: allUsers: A special identifier that represents anyone who is  on the internet; with or without a Google account. allAuthenticatedUsers: A special identifier that represents anyone  who is authenticated with a Google account or a service account. user:{emailid}: An email address that represents a specific Google  account. For example, alice@gmail.com . serviceAccount:{emailid}: An email address that represents a service  account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group.  For example, admins@example.com. domain:{domain}: A Google Apps domain name that represents all the  users of that domain. For example, google.com or example.com. Defaults to: `null`.
  - role (String.t): Role that is assigned to members. For example, roles/viewer, roles/editor, or roles/owner. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.Dataproc.V1.Model.Expr.t(),
          :members => list(any()),
          :role => any()
        }

  field(:condition, as: GoogleApi.Dataproc.V1.Model.Expr)
  field(:members, type: :list)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.Binding do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.Binding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.Binding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end