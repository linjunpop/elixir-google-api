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

defmodule GoogleApi.Dataproc.V1.Model.Job do
  @moduledoc """
  A Cloud Dataproc job resource.

  ## Attributes

  - driverControlFilesUri (String.t): Output only. If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri. Defaults to: `null`.
  - driverOutputResourceUri (String.t): Output only. A URI pointing to the location of the stdout of the job&#39;s driver program. Defaults to: `null`.
  - hadoopJob (HadoopJob): Job is a Hadoop job. Defaults to: `null`.
  - hiveJob (HiveJob): Job is a Hive job. Defaults to: `null`.
  - jobUuid (String.t): Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job. Defaults to: `null`.
  - pigJob (PigJob): Job is a Pig job. Defaults to: `null`.
  - placement (JobPlacement): Required. Job information, including how, when, and where to run the job. Defaults to: `null`.
  - pysparkJob (PySparkJob): Job is a Pyspark job. Defaults to: `null`.
  - reference (JobReference): Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a &lt;code&gt;job_id&lt;/code&gt;. Defaults to: `null`.
  - scheduling (JobScheduling): Optional. Job scheduling configuration. Defaults to: `null`.
  - sparkJob (SparkJob): Job is a Spark job. Defaults to: `null`.
  - sparkSqlJob (SparkSqlJob): Job is a SparkSql job. Defaults to: `null`.
  - status (JobStatus): Output only. The job status. Additional application-specific status information may be contained in the &lt;code&gt;type_job&lt;/code&gt; and &lt;code&gt;yarn_applications&lt;/code&gt; fields. Defaults to: `null`.
  - statusHistory ([JobStatus]): Output only. The previous job status. Defaults to: `null`.
  - yarnApplications ([YarnApplication]): Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :driverControlFilesUri => any(),
          :driverOutputResourceUri => any(),
          :hadoopJob => GoogleApi.Dataproc.V1.Model.HadoopJob.t(),
          :hiveJob => GoogleApi.Dataproc.V1.Model.HiveJob.t(),
          :jobUuid => any(),
          :labels => map(),
          :pigJob => GoogleApi.Dataproc.V1.Model.PigJob.t(),
          :placement => GoogleApi.Dataproc.V1.Model.JobPlacement.t(),
          :pysparkJob => GoogleApi.Dataproc.V1.Model.PySparkJob.t(),
          :reference => GoogleApi.Dataproc.V1.Model.JobReference.t(),
          :scheduling => GoogleApi.Dataproc.V1.Model.JobScheduling.t(),
          :sparkJob => GoogleApi.Dataproc.V1.Model.SparkJob.t(),
          :sparkSqlJob => GoogleApi.Dataproc.V1.Model.SparkSqlJob.t(),
          :status => GoogleApi.Dataproc.V1.Model.JobStatus.t(),
          :statusHistory => list(GoogleApi.Dataproc.V1.Model.JobStatus.t()),
          :yarnApplications => list(GoogleApi.Dataproc.V1.Model.YarnApplication.t())
        }

  field(:driverControlFilesUri)
  field(:driverOutputResourceUri)
  field(:hadoopJob, as: GoogleApi.Dataproc.V1.Model.HadoopJob)
  field(:hiveJob, as: GoogleApi.Dataproc.V1.Model.HiveJob)
  field(:jobUuid)
  field(:labels, type: :map)
  field(:pigJob, as: GoogleApi.Dataproc.V1.Model.PigJob)
  field(:placement, as: GoogleApi.Dataproc.V1.Model.JobPlacement)
  field(:pysparkJob, as: GoogleApi.Dataproc.V1.Model.PySparkJob)
  field(:reference, as: GoogleApi.Dataproc.V1.Model.JobReference)
  field(:scheduling, as: GoogleApi.Dataproc.V1.Model.JobScheduling)
  field(:sparkJob, as: GoogleApi.Dataproc.V1.Model.SparkJob)
  field(:sparkSqlJob, as: GoogleApi.Dataproc.V1.Model.SparkSqlJob)
  field(:status, as: GoogleApi.Dataproc.V1.Model.JobStatus)
  field(:statusHistory, as: GoogleApi.Dataproc.V1.Model.JobStatus, type: :list)
  field(:yarnApplications, as: GoogleApi.Dataproc.V1.Model.YarnApplication, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.Job do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
