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

defmodule GoogleApi.Jobs.V2.Api.V2 do
  @moduledoc """
  API calls for all endpoints tagged `V2`.
  """

  alias GoogleApi.Jobs.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Completes the specified prefix with job keyword suggestions. Intended for use by a job search auto-complete search box.

  ## Parameters

  - connection (GoogleApi.Jobs.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :companyName (String.t): Optional.  If provided, restricts completion to the specified company.
    - :languageCode (String.t): Required.  The language of the query. This is the BCP-47 language code, such as \&quot;en-US\&quot; or \&quot;sr-Latn\&quot;. For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).  For CompletionType.JOB_TITLE type, only open jobs with same language_code are returned.  For CompletionType.COMPANY_NAME type, only companies having open jobs with same language_code are returned.  For CompletionType.COMBINED type, only open jobs with same language_code or companies having open jobs with same language_code are returned.
    - :pageSize (integer()): Required.  Completion result count. The maximum allowed page size is 10.
    - :query (String.t): Required.  The query used to generate suggestions.
    - :scope (String.t): Optional.  The scope of the completion. The defaults is CompletionScope.PUBLIC.
    - :type (String.t): Optional.  The completion topic. The default is CompletionType.COMBINED.

  ## Returns

  {:ok, %GoogleApi.Jobs.V2.Model.CompleteQueryResponse{}} on success
  {:error, info} on failure
  """
  @spec jobs_complete(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Jobs.V2.Model.CompleteQueryResponse.t()} | {:error, Tesla.Env.t()}
  def jobs_complete(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :companyName => :query,
      :languageCode => :query,
      :pageSize => :query,
      :query => :query,
      :scope => :query,
      :type => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2:complete")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Jobs.V2.Model.CompleteQueryResponse{}])
  end
end
