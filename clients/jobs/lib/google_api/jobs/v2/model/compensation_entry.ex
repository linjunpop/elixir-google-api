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

defmodule GoogleApi.Jobs.V2.Model.CompensationEntry do
  @moduledoc """
  A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type.  Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.

  ## Attributes

  - amount (Money): Optional.  Compensation amount. Defaults to: `null`.
  - description (String.t): Optional.  Compensation description.  For example, could indicate equity terms or provide additional context to an estimated bonus. Defaults to: `null`.
  - expectedUnitsPerYear (float()): Optional.  Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1 Defaults to: `null`.
  - range (CompensationRange): Optional.  Compensation range. Defaults to: `null`.
  - type (String.t): Required.  Compensation type. Defaults to: `null`.
    - Enum - one of [COMPENSATION_TYPE_UNSPECIFIED, BASE, BONUS, SIGNING_BONUS, EQUITY, PROFIT_SHARING, COMMISSIONS, TIPS, OTHER_COMPENSATION_TYPE]
  - unit (String.t): Optional.  Frequency of the specified amount.  Default is CompensationUnit.OTHER_COMPENSATION_UNIT. Defaults to: `null`.
    - Enum - one of [COMPENSATION_UNIT_UNSPECIFIED, HOURLY, DAILY, WEEKLY, MONTHLY, YEARLY, ONE_TIME, OTHER_COMPENSATION_UNIT]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Jobs.V2.Model.Money.t(),
          :description => any(),
          :expectedUnitsPerYear => any(),
          :range => GoogleApi.Jobs.V2.Model.CompensationRange.t(),
          :type => any(),
          :unit => any()
        }

  field(:amount, as: GoogleApi.Jobs.V2.Model.Money)
  field(:description)
  field(:expectedUnitsPerYear)
  field(:range, as: GoogleApi.Jobs.V2.Model.CompensationRange)
  field(:type)
  field(:unit)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CompensationEntry do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CompensationEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CompensationEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
