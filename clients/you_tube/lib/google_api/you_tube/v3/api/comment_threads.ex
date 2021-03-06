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

defmodule GoogleApi.YouTube.V3.Api.CommentThreads do
  @moduledoc """
  API calls for all endpoints tagged `CommentThreads`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new top-level comment. To add a reply to an existing comment, use the comments.insert method instead.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (CommentThread): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.CommentThread{}} on success
  {:error, info} on failure
  """
  @spec youtube_comment_threads_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.CommentThread.t()} | {:error, Tesla.Env.t()}
  def youtube_comment_threads_insert(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/youtube/v3/commentThreads")
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.CommentThread{}])
  end

  @doc """
  Returns a list of comment threads that match the API request parameters.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :allThreadsRelatedToChannelId (String.t): The allThreadsRelatedToChannelId parameter instructs the API to return all comment threads associated with the specified channel. The response can include comments about the channel or about the channel&#39;s videos.
    - :channelId (String.t): The channelId parameter instructs the API to return comment threads containing comments about the specified channel. (The response will not include comments left on videos that the channel uploaded.)
    - :id (String.t): The id parameter specifies a comma-separated list of comment thread IDs for the resources that should be retrieved.
    - :maxResults (integer()): The maxResults parameter specifies the maximum number of items that should be returned in the result set.  Note: This parameter is not supported for use in conjunction with the id parameter.
    - :moderationStatus (String.t): Set this parameter to limit the returned comment threads to a particular moderation state.  Note: This parameter is not supported for use in conjunction with the id parameter.
    - :order (String.t): The order parameter specifies the order in which the API response should list comment threads. Valid values are:  - time - Comment threads are ordered by time. This is the default behavior. - relevance - Comment threads are ordered by relevance.Note: This parameter is not supported for use in conjunction with the id parameter.
    - :pageToken (String.t): The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identifies the next page of the result that can be retrieved.  Note: This parameter is not supported for use in conjunction with the id parameter.
    - :searchTerms (String.t): The searchTerms parameter instructs the API to limit the API response to only contain comments that contain the specified search terms.  Note: This parameter is not supported for use in conjunction with the id parameter.
    - :textFormat (String.t): Set this parameter&#39;s value to html or plainText to instruct the API to return the comments left by users in html formatted or in plain text.
    - :videoId (String.t): The videoId parameter instructs the API to return comment threads associated with the specified video ID.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.CommentThreadListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_comment_threads_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.CommentThreadListResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_comment_threads_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :allThreadsRelatedToChannelId => :query,
      :channelId => :query,
      :id => :query,
      :maxResults => :query,
      :moderationStatus => :query,
      :order => :query,
      :pageToken => :query,
      :searchTerms => :query,
      :textFormat => :query,
      :videoId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/commentThreads")
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.CommentThreadListResponse{}])
  end

  @doc """
  Modifies the top-level comment in a comment thread.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies a comma-separated list of commentThread resource properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (CommentThread): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.CommentThread{}} on success
  {:error, info} on failure
  """
  @spec youtube_comment_threads_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.CommentThread.t()} | {:error, Tesla.Env.t()}
  def youtube_comment_threads_update(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/youtube/v3/commentThreads")
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.CommentThread{}])
  end
end
