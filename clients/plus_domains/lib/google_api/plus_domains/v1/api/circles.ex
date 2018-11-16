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

defmodule GoogleApi.PlusDomains.V1.Api.Circles do
  @moduledoc """
  API calls for all endpoints tagged `Circles`.
  """

  alias GoogleApi.PlusDomains.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Add a person to a circle. Google+ limits certain circle operations, including the number of circle adds. Learn More.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to add the person to.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :email ([String.t]): Email of the people to add to the circle. Optional, can be repeated.
    - :userId ([String.t]): IDs of the people to add to the circle. Optional, can be repeated.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Circle{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_add_people(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Circle.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_add_people(connection, circle_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :email => :query,
      :userId => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/plusDomains/v1/circles/{circleId}/people", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Circle{}])
  end

  @doc """
  Get a circle.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to get.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Circle{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Circle.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_get(connection, circle_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/plusDomains/v1/circles/{circleId}", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Circle{}])
  end

  @doc """
  Create a new circle for the authenticated user.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - user_id (String.t): The ID of the user to create the circle on behalf of. The value \&quot;me\&quot; can be used to indicate the authenticated user.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Circle): 

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Circle{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Circle.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_insert(connection, user_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/plusDomains/v1/people/{userId}/circles", %{
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Circle{}])
  end

  @doc """
  List all of the circles for a user.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - user_id (String.t): The ID of the user to get circles for. The special value \&quot;me\&quot; can be used to indicate the authenticated user.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of circles to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    - :pageToken (String.t): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.CircleFeed{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.CircleFeed.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_list(connection, user_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/plusDomains/v1/people/{userId}/circles", %{
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.CircleFeed{}])
  end

  @doc """
  Update a circle&#39;s description. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Circle): 

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Circle{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Circle.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_patch(connection, circle_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:patch)
      |> Request.url("/plusDomains/v1/circles/{circleId}", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Circle{}])
  end

  @doc """
  Delete a circle.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_remove(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def plus_domains_circles_remove(connection, circle_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/plusDomains/v1/circles/{circleId}", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Remove a person from a circle.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to remove the person from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :email ([String.t]): Email of the people to add to the circle. Optional, can be repeated.
    - :userId ([String.t]): IDs of the people to remove from the circle. Optional, can be repeated.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_remove_people(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def plus_domains_circles_remove_people(connection, circle_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :email => :query,
      :userId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/plusDomains/v1/circles/{circleId}/people", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Update a circle&#39;s description.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - circle_id (String.t): The ID of the circle to update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Circle): 

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Circle{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_circles_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Circle.t()} | {:error, Tesla.Env.t()}
  def plus_domains_circles_update(connection, circle_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/plusDomains/v1/circles/{circleId}", %{
        "circleId" => URI.encode_www_form(circle_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Circle{}])
  end
end