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

defmodule GoogleApi.AndroidEnterprise.V1.Model.WebApp do
  @moduledoc """
  A WebApps resource represents a web app created for an enterprise. Web apps are published to managed Google Play and can be distributed like other Android apps. On a user&#39;s device, a web app opens its specified URL.

  ## Attributes

  - displayMode (String.t): The display mode of the web app.  Possible values include:  - \&quot;minimalUi\&quot;, the device&#39;s status bar, navigation bar, the app&#39;s URL, and a refresh button are visible when the app is open. For HTTP URLs, you can only select this option. - \&quot;standalone\&quot;, the device&#39;s status bar and navigation bar are visible when the app is open. - \&quot;fullScreen\&quot;, the app opens in full screen mode, hiding the device&#39;s status and navigation bars. All browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area. Defaults to: `null`.
  - icons ([WebAppIcon]): A list of icons representing this website. If absent, a default icon (for create) or the current icon (for update) will be used. Defaults to: `null`.
  - isPublished (boolean()): A flag whether the app has been published to the Play store yet. Defaults to: `null`.
  - startUrl (String.t): The start URL, i.e. the URL that should load when the user opens the application. Defaults to: `null`.
  - title (String.t): The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon). Defaults to: `null`.
  - versionCode (String.t): The current version of the app.   Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date. Defaults to: `null`.
  - webAppId (String.t): The ID of the application. A string of the form \&quot;app:&lt;package name&gt;\&quot; where the package name always starts with the prefix \&quot;com.google.enterprise.webapp.\&quot; followed by a random id. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayMode => any(),
          :icons => list(GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon.t()),
          :isPublished => any(),
          :startUrl => any(),
          :title => any(),
          :versionCode => any(),
          :webAppId => any()
        }

  field(:displayMode)
  field(:icons, as: GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon, type: :list)
  field(:isPublished)
  field(:startUrl)
  field(:title)
  field(:versionCode)
  field(:webAppId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.WebApp do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.WebApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.WebApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
