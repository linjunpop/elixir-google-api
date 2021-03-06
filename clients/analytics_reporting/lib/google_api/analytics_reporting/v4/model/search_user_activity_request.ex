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

defmodule GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityRequest do
  @moduledoc """
  The request to fetch User Report from Reporting API &#x60;userActivity:get&#x60; call.

  ## Attributes

  - activityTypes ([String.t]): Set of all activity types being requested. Only acvities matching these types will be returned in the response. If empty, all activies will be returned. Defaults to: `null`.
    - Enum - one of 
  - dateRange (DateRange): Date range for which to retrieve the user activity. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day). Defaults to: `null`.
  - pageSize (integer()): Page size is for paging and specifies the maximum number of returned rows. Page size should be &gt; 0. If the value is 0 or if the field isn&#39;t specified, the request returns the default of 1000 rows per page. Defaults to: `null`.
  - pageToken (String.t): A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the [SearchUserActivityRequest](#SearchUserActivityRequest) request. Defaults to: `null`.
  - user (User): Required. Unique user Id to query for. Every [SearchUserActivityRequest](#SearchUserActivityRequest) must contain this field. Defaults to: `null`.
  - viewId (String.t): Required. The Analytics [view ID](https://support.google.com/analytics/answer/1009618) from which to retrieve data. Every [SearchUserActivityRequest](#SearchUserActivityRequest) must contain the &#x60;viewId&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activityTypes => list(any()),
          :dateRange => GoogleApi.AnalyticsReporting.V4.Model.DateRange.t(),
          :pageSize => any(),
          :pageToken => any(),
          :user => GoogleApi.AnalyticsReporting.V4.Model.User.t(),
          :viewId => any()
        }

  field(:activityTypes, type: :list)
  field(:dateRange, as: GoogleApi.AnalyticsReporting.V4.Model.DateRange)
  field(:pageSize)
  field(:pageToken)
  field(:user, as: GoogleApi.AnalyticsReporting.V4.Model.User)
  field(:viewId)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
