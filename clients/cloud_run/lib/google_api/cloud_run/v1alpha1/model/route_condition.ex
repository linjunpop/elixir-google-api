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

defmodule GoogleApi.CloudRun.V1alpha1.Model.RouteCondition do
  @moduledoc """
  RouteCondition defines a readiness condition for a Route.

  ## Attributes

  - lastTransitionTime (DateTime.t): Last time the condition transitioned from one status to another. +optional Defaults to: `null`.
  - message (String.t): Human-readable message indicating details about last transition. +optional Defaults to: `null`.
  - reason (String.t): One-word CamelCase reason for the condition&#39;s last transition. +optional Defaults to: `null`.
  - status (String.t): Status of the condition, one of \&quot;True\&quot;, \&quot;False\&quot;, \&quot;Unknown\&quot;. Defaults to: `null`.
  - type (String.t): RouteConditionType is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/master/docs/spec/errors.md#error-conditions-and-reporting Types include: \&quot;Ready\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastTransitionTime => DateTime.t(),
          :message => any(),
          :reason => any(),
          :status => any(),
          :type => any()
        }

  field(:lastTransitionTime, as: DateTime)
  field(:message)
  field(:reason)
  field(:status)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteCondition do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.RouteCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
