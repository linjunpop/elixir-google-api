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

defmodule GoogleApi.FusionTables.V2.Model.Column do
  @moduledoc """
  Specifies the details of a column in a table.

  ## Attributes

  - baseColumn (ColumnBaseColumn):  Defaults to: `null`.
  - columnId (integer()): Identifier for the column. Defaults to: `null`.
  - columnJsonSchema (String.t): JSON schema for interpreting JSON in this column. Defaults to: `null`.
  - columnPropertiesJson (String.t): JSON object containing custom column properties. Defaults to: `null`.
  - description (String.t): Column description. Defaults to: `null`.
  - formatPattern (String.t): Format pattern. Acceptable values are DT_DATE_MEDIUMe.g Dec 24, 2008 DT_DATE_SHORTfor example 12/24/08 DT_DATE_TIME_MEDIUMfor example Dec 24, 2008 8:30:45 PM DT_DATE_TIME_SHORTfor example 12/24/08 8:30 PM DT_DAY_MONTH_2_DIGIT_YEARfor example 24/12/08 DT_DAY_MONTH_2_DIGIT_YEAR_TIMEfor example 24/12/08 20:30 DT_DAY_MONTH_2_DIGIT_YEAR_TIME_MERIDIANfor example 24/12/08 8:30 PM DT_DAY_MONTH_4_DIGIT_YEARfor example 24/12/2008 DT_DAY_MONTH_4_DIGIT_YEAR_TIMEfor example 24/12/2008 20:30 DT_DAY_MONTH_4_DIGIT_YEAR_TIME_MERIDIANfor example 24/12/2008 8:30 PM DT_ISO_YEAR_MONTH_DAYfor example 2008-12-24 DT_ISO_YEAR_MONTH_DAY_TIMEfor example 2008-12-24 20:30:45 DT_MONTH_DAY_4_DIGIT_YEARfor example 12/24/2008 DT_TIME_LONGfor example 8:30:45 PM UTC-6 DT_TIME_MEDIUMfor example 8:30:45 PM DT_TIME_SHORTfor example 8:30 PM DT_YEAR_ONLYfor example 2008 HIGHLIGHT_UNTYPED_CELLSHighlight cell data that does not match the data type NONENo formatting (default) NUMBER_CURRENCYfor example $1234.56 NUMBER_DEFAULTfor example 1,234.56 NUMBER_INTEGERfor example 1235 NUMBER_NO_SEPARATORfor example 1234.56 NUMBER_PERCENTfor example 123,456% NUMBER_SCIENTIFICfor example 1E3 STRING_EIGHT_LINE_IMAGEDisplays thumbnail images as tall as eight lines of text STRING_FOUR_LINE_IMAGEDisplays thumbnail images as tall as four lines of text STRING_JSON_TEXTAllows editing of text as JSON in UI STRING_JSON_LISTAllows editing of text as a JSON list in UI STRING_LINKTreats cell as a link (must start with http:// or https://) STRING_ONE_LINE_IMAGEDisplays thumbnail images as tall as one line of text STRING_VIDEO_OR_MAPDisplay a video or map thumbnail Defaults to: `null`.
  - graphPredicate (String.t): Column graph predicate. Used to map table to graph data model (subject,predicate,object) See W3C Graph-based Data Model. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For a column, this is always fusiontables#column. Defaults to: `null`.
  - name (String.t): Name of the column. Defaults to: `null`.
  - type (String.t): Type of the column. Defaults to: `null`.
  - validValues ([String.t]): List of valid values used to validate data and supply a drop-down list of values in the web application. Defaults to: `null`.
  - validateData (boolean()): If true, data entered via the web application is validated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseColumn => GoogleApi.FusionTables.V2.Model.ColumnBaseColumn.t(),
          :columnId => any(),
          :columnJsonSchema => any(),
          :columnPropertiesJson => any(),
          :description => any(),
          :formatPattern => any(),
          :graphPredicate => any(),
          :kind => any(),
          :name => any(),
          :type => any(),
          :validValues => list(any()),
          :validateData => any()
        }

  field(:baseColumn, as: GoogleApi.FusionTables.V2.Model.ColumnBaseColumn)
  field(:columnId)
  field(:columnJsonSchema)
  field(:columnPropertiesJson)
  field(:description)
  field(:formatPattern)
  field(:graphPredicate)
  field(:kind)
  field(:name)
  field(:type)
  field(:validValues, type: :list)
  field(:validateData)
end

defimpl Poison.Decoder, for: GoogleApi.FusionTables.V2.Model.Column do
  def decode(value, options) do
    GoogleApi.FusionTables.V2.Model.Column.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FusionTables.V2.Model.Column do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end