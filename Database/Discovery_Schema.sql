USE [DiscoveryQA_Updated]
GO
/****** Object:  Schema [calendar]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [calendar]
GO
/****** Object:  Schema [humans]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [humans]
GO
/****** Object:  Schema [interaction]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [interaction]
GO
/****** Object:  Schema [lodging]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [lodging]
GO
/****** Object:  Schema [organization]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [organization]
GO
/****** Object:  Schema [participant]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [participant]
GO
/****** Object:  Schema [shelter]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [shelter]
GO
/****** Object:  Schema [staff]    Script Date: 1/30/2025 4:25:26 PM ******/
CREATE SCHEMA [staff]
GO
/****** Object:  Table [staff].[Volunteer]    Script Date: 1/30/2025 4:25:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staff].[Volunteer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[humanId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeUpdated] [datetime] NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](2000) NULL,
	[username] [varchar](30) NULL,
 CONSTRAINT [staff_Volunteer_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[DisabilityType]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[DisabilityType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[disabilityTypeName] [varchar](30) NOT NULL,
	[disabilityTypeDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_DisabilityType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[Participant]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Participant](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[humanId] [int] NOT NULL,
	[caseManagerId] [int] NULL,
	[intakeLogId] [int] NULL,
	[trackId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[suspensionActive] [bit] NOT NULL,
	[timeRegistered] [datetime] NULL,
	[timeUpdated] [datetime] NULL,
 CONSTRAINT [participant_Participant_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Gender]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Gender](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[genderName] [varchar](50) NOT NULL,
	[genderDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_Gender_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Human]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Human](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[middleName] [varchar](50) NULL,
	[lastName] [varchar](50) NOT NULL,
	[nickname] [varchar](50) NULL,
	[suffix] [varchar](30) NULL,
	[dob] [date] NULL,
	[familyId] [int] NULL,
	[phone] [varchar](30) NULL,
	[email] [varchar](60) NULL,
	[emergencyContactName] [varchar](50) NULL,
	[emergencyContactPhone] [varchar](30) NULL,
	[emergencyContactEmail] [varchar](60) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeDeceased] [date] NULL,
	[timeRetired] [date] NULL,
	[street] [varchar](70) NULL,
	[city] [varchar](40) NULL,
	[state] [varchar](40) NULL,
	[zipCode] [int] NULL,
	[altPhone] [varchar](40) NULL,
	[preferredCommunication] [varchar](40) NULL,
	[pictureId] [int] NULL,
	[CTID] [int] NULL,
	[SSN] [char](9) NULL,
	[dobQuality] [smallint] NULL,
	[employer] [varchar](200) NULL,
	[school] [varchar](200) NULL,
	[congregationId] [int] NULL,
	[ssnQualityId] [int] NOT NULL,
	[genderId] [int] NOT NULL,
	[raceId] [int] NOT NULL,
	[hohRelationshipId] [int] NULL,
	[communicationTypeId] [int] NULL,
	[dobQualityId] [int] NOT NULL,
	[ethnicityId] [int] NOT NULL,
	[disabilityTypeId] [int] NULL,
	[veteranStatusId] [int] NOT NULL,
	[emergencyContactTypeId] [int] NULL,
	[InsuranceTypeID] [int] NULL,
	[trimorbid] [bit] NULL,
	[chronicHomeless] [bit] NULL,
	[sexOffendRegistry] [bit] NULL,
	[mailService] [bit] NULL,
	[fullRegistration] [bit] NULL,
	[breezeId] [varchar](25) NULL,
	[notes] [varchar](3000) NULL,
	[employment_type] [varchar](50) NULL,
	[substanceAbuseType] [varchar](50) NULL,
	[mentalHealth] [bit] NULL,
	[chronicHealthCoditions] [bit] NULL,
	[physicalDisability] [bit] NULL,
	[developmentalDisability] [bit] NULL,
	[substanceAbuse] [bit] NULL,
	[lastHmisUpdateDate] [date] NULL,
	[lastHmisUpdateBy] [varchar](100) NULL,
	[viSpidatScore] [int] NULL,
	[viSpidatAssessmentDate] [date] NULL,
	[vaHealthcareEligible] [bit] NULL,
	[incomeSourceID] [int] NULL,
	[incomeAmount] [float] NULL,
	[incomeStartDate] [date] NULL,
	[biracialId] [int] NULL,
	[viSpidatOnFile] [bit] NULL,
	[additional_incomeSourceID] [int] NULL,
	[additional_incomeAmount] [float] NULL,
	[foodStamps] [bit] NULL,
	[hmis_number] [int] NULL,
 CONSTRAINT [humans_HumanTest_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Race]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Race](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[raceName] [varchar](60) NOT NULL,
	[raceDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_Race_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[VeteranStatus]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[VeteranStatus](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[veteranStatusName] [varchar](30) NOT NULL,
	[veteranStatusDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_VeteranStatus_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [staff].[Employee]    Script Date: 1/30/2025 4:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staff].[Employee](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[humanId] [int] NOT NULL,
	[ctid] [varchar](10) NULL,
	[jobTitle] [varchar](60) NULL,
	[username] [varchar](60) NULL,
	[isFacilitator] [bit] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[timeUpdated] [datetime] NOT NULL,
	[assignments] [bit] NULL,
 CONSTRAINT [staff_Employee_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [humans].[GroupMembership]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW  [humans].[GroupMembership]
AS
SELECT
	h.id as 'human_id',
	h.breezeId as 'breezeId',
	h.firstName as 'first_name',
	h.middleName as 'middle_name',
	h.lastName as 'last_name',
	h.suffix as 'suffix',
	h.nickname as 'nick_name',
	'***-**-' + Right(h.SSN,4) as 'ssn',
	h.genderId as 'gender_id',
	g.genderName as 'gender',
	h.dob as 'dob',
	h.raceId as 'race_id',
	r.raceName as 'race',
	h.disabilityTypeId as 'disability_id',
	d.disabilityTypeName as 'disability',
	h.veteranStatusId as 'veteran_id',
	vet.veteranStatusName as 'veteran',
	p.Id as 'participant_id',
	p.timeRetired as 'participant_retired',
	e.Id as 'employee_id',
	e.timeRetired as 'employee_retired',
	v.Id as 'volunteer_id',
	v.timeRetired as 'volunteer_retired'
FROM
	[humans].[Human] h
	LEFT JOIN [humans].[Gender] g ON h.[genderId] = g.[id]
	LEFT JOIN [humans].[Race] r ON h.[raceId] = r.[id]
	LEFT JOIN [humans].[DisabilityType] d ON h.[disabilityTypeId] = d.[id]
	LEFT JOIN [humans].[VeteranStatus] vet ON h.[veteranStatusId] = vet.[id]
	LEFT JOIN [participant].[Participant] p ON  h.[id] = p.[humanId]
	LEFT JOIN [staff].[Employee] e ON h.[id] = e.[humanId]
	LEFT JOIN [staff].[Volunteer] v ON h.[id] = v.[humanId];
GO
/****** Object:  Table [organization].[JobParticipantStatus]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[JobParticipantStatus](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[jobParticipantId] [int] NOT NULL,
	[status] [varchar](500) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](2000) NULL,
 CONSTRAINT [organization_JobParticipantStatus_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[EmployerNew]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[EmployerNew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Employer Name] [varchar](80) NOT NULL,
	[street] [varchar](80) NULL,
	[city] [varchar](80) NULL,
	[state] [varchar](80) NULL,
	[zipCode] [int] NULL,
	[phone] [varchar](80) NULL,
	[email] [varchar](80) NULL,
	[website] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[BusinessDescriptionID] [int] NULL,
 CONSTRAINT [organization_EmployerNew_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Job]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Job](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[employerId] [int] NOT NULL,
	[jobName] [varchar](30) NOT NULL,
	[jobDescription] [varchar](5000) NOT NULL,
	[jobTypeStatus] [bit] NOT NULL,
	[isHiring] [bit] NOT NULL,
	[jobLocation] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[expectedStartDate] [datetime] NOT NULL,
	[expectedEndDate] [datetime] NULL,
 CONSTRAINT [organization_Job_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[JobParticipant]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[JobParticipant](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_JobParticipant_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [organization].[EmployerAction_FV]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [organization].[EmployerAction_FV]
AS
SELECT        [e].[Employer Name] AS Employer, j.jobName AS Job, jps.status AS [Participant Status], jps.notes, h.firstName + ' ' + h.lastName AS [Participant Name], j.timeCreated AS jobTimeCreated, jp.timeCreated AS jobParticipantTimeCreated, 
                         jps.timeCreated AS statusTimeCreated, e.id AS employerID
FROM            organization.EmployerNew AS e LEFT OUTER JOIN
                         --organization.Organization AS o ON o.id = e.organizationId LEFT OUTER JOIN
                         organization.Job AS j ON j.employerId = e.id LEFT OUTER JOIN
                         organization.JobParticipant AS jp ON jp.jobId = j.id LEFT OUTER JOIN
                         participant.Participant AS p ON p.id = jp.participantId LEFT OUTER JOIN
                         humans.Human AS h ON h.id = p.humanId LEFT OUTER JOIN
                         organization.JobParticipantStatus AS jps ON jps.id = jp.id
WHERE        (e.timeRetired IS NULL)
GO
/****** Object:  Table [participant].[CaseNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseNotes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[HMIS] [bit] NOT NULL,
	[Note] [varchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](60) NULL,
	[noteDate] [datetime] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[taskId] [int] NULL,
	[notifyStaffId] [varchar](200) NULL,
 CONSTRAINT [participant_CaseNotes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [participant].[CaseNotesTypes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseNotesTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CaseNotesId] [int] NOT NULL,
	[CaseNoteTypeID] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_CaseNotesTypes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[CaseNoteType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseNoteType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CaseNoteTypeName] [varchar](100) NOT NULL,
	[CaseNoteTypeNameDescription] [varchar](300) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_CaseNoteType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[CaseNotesDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [participant].[CaseNotesDashboard]
AS
SELECT 
	cn.id AS 'noteId',
	cn.participantId,
	CONCAT_WS(' ',h_participant.[FirstName],h_participant.[MiddleName],h_participant.[LastName]) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	h_participant.nickName,
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn',
	CAST(cn.[timeCreated] as DATE) AS 'noteDate',
	cn.HMIS,
	cnt.CaseNoteTypeID,
	cnt.CaseNoteTypeName,
	cn.Note,
	cn.employeeId,
	CONCAT_WS(' ',h_employee.firstName,h_employee.middleName,h_employee.lastName) as 'employeeName',
	cn.startTime,
	cn.endTime,
	cn.notifyStaffId
FROM
	[participant].[CaseNotes] cn
	LEFT JOIN (
	SELECT ct.CaseNotesId, STRING_AGG(ct.CaseNoteTypeID, ',') as CaseNoteTypeID, STRING_AGG(mct.CaseNoteTypeName, ',') as CaseNoteTypeName
	FROM 
	[participant].[CaseNotesTypes] ct , [participant].[CaseNoteType] mct
	WHERE  ct.CaseNoteTypeID = mct.id
	GROUP BY ct.CaseNotesId
	)cnt
	ON cn.id = cnt.CaseNotesId
	
	LEFT JOIN [humans].[Human] h_employee
		INNER JOIN [staff].[Employee] staff ON staff.humanId = h_employee.id
	ON cn.employeeId = staff.Id
	
	LEFT JOIN [humans].[Human] h_participant
		INNER JOIN [participant].[Participant] participant ON participant.humanId = h_participant.id
	ON cn.participantId = participant.Id
WHERE
	participant.timeRetired IS NULL
GO
/****** Object:  Table [lodging].[Bed]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[Bed](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[roomId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[bedName] [nvarchar](50) NULL,
 CONSTRAINT [lodging_Bed_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[Facility]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[Facility](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilityName] [varchar](50) NOT NULL,
	[facilityDescription] [varchar](500) NULL,
	[facilityTypeId] [int] NOT NULL,
	[street] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[state] [varchar](30) NULL,
	[zipCode] [int] NULL,
	[beds] [int] NULL,
	[rooms] [int] NULL,
	[phone] [varchar](30) NULL,
	[email] [varchar](30) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[allResidential] [bit] NULL,
 CONSTRAINT [lodging_Facility_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[Reservation]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[Reservation](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[bedId] [int] NOT NULL,
	[participantId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[reservationStart] [datetime] NOT NULL,
	[reservationEnd] [datetime] NULL,
	[notes] [nvarchar](500) NULL,
	[reservationExpiration] [datetime] NULL,
	[reservationType] [nvarchar](100) NULL,
	[referralStatus] [nvarchar](100) NULL,
	[providerTypeId] [int] NULL,
	[providerId] [int] NULL,
	[programId] [int] NULL,
	[waitingListName] [nvarchar](250) NULL,
	[referralId] [int] NULL,
	[prescribedControlledSubstance] [bit] NOT NULL,
 CONSTRAINT [lodging_Reservation_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[Room]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[Room](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilityId] [int] NOT NULL,
	[roomName] [varchar](30) NOT NULL,
	[numberBeds] [int] NOT NULL,
	[isHandicapAccess] [bit] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[gender] [varchar](100) NULL,
	[smoking] [bit] NULL,
 CONSTRAINT [lodging_Room_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[CurrentReservations]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [participant].[CurrentReservations]
AS
SELECT
	 [participant].[Participant].id  as 'participant_id',
	 [lodging].[Facility].facilityName as 'facility_name',
	 [lodging].[Room].facilityId  as 'facilty_id',
	 [lodging].[Bed].roomId as 'room_id',
	 [lodging].[Room].roomName as 'room_name',
	 [lodging].[Reservation].bedId as 'bed_id',
	 [lodging].[Bed].bedName as 'bed_name', 
	 [lodging].[Reservation].timeCreated  as 'reservation_created',
	 [lodging].[Reservation].timeRetired  as 'reservation_completed',
	 [lodging].[Reservation].reservationStart  as 'start_date',
	 [lodging].[Reservation].reservationEnd  as 'end_date'
FROM
	[participant].[Participant]
	INNER JOIN [lodging].[Reservation] ON [lodging].[Reservation].participantId = [participant].[Participant].id
	LEFT JOIN [lodging].[Bed] ON [lodging].[Reservation].bedId = [lodging].[Bed].id
	LEFT JOIN [lodging].[Room] ON [lodging].[Bed].roomId = [lodging].[Room].id
	LEFT JOIN [lodging].[Facility] ON [lodging].[Room].facilityId = [lodging].[Facility].id
WHERE
	[lodging].[Reservation].timeRetired IS NULL
GO
/****** Object:  Table [lodging].[BedLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[BedLog](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[bedId] [int] NOT NULL,
	[participantId] [int] NOT NULL,
	[eventStart] [datetime] NOT NULL,
	[eventEnd] [datetime] NULL,
	[exitDestinationId] [int] NULL,
	[reservationId] [int] NOT NULL,
	[exit_ProviderId] [int] NULL,
 CONSTRAINT [lodging_BedLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[CurrentShelter]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [participant].[CurrentShelter]
AS
SELECT
	 [participant].[Participant].id  as 'participant_id',
	 [lodging].[Facility].facilityName as 'facility_name',
	 [lodging].[Room].facilityId  as 'facilty_id',
	 [lodging].[Bed].roomId as 'room_id',
	 [lodging].[Room].roomName as 'room_name',
	 [lodging].[BedLog].bedId as 'bed_id',
	 [lodging].[Bed].bedName as 'bed_name', 
	 max([lodging].[BedLog].eventStart)  as 'last_check_in',
	 -- max([lodging].[BedLog].eventEnd)  as 'last_check_out'
	 case when max(COALESCE([lodging].[BedLog].eventEnd, CURRENT_TIMESTAMP))= CURRENT_TIMESTAMP then NULL else max(COALESCE([lodging].[BedLog].eventEnd, CURRENT_TIMESTAMP)) end  as 'last_check_out'
FROM
	[participant].[Participant]
	INNER JOIN [lodging].[BedLog] ON [lodging].[BedLog].participantId = [participant].[Participant].id
	LEFT JOIN [lodging].[Bed] ON [lodging].[BedLog].bedId = [lodging].[Bed].id
	LEFT JOIN [lodging].[Room] ON [lodging].[Bed].roomId = [lodging].[Room].id
	LEFT JOIN [lodging].[Facility] ON [lodging].[Room].facilityId = [lodging].[Facility].id
GROUP By 
	[participant].[Participant].id,
	[lodging].[Facility].facilityName,
	[lodging].[Room].facilityId,
	[lodging].[Bed].roomId,
	[lodging].[Room].roomName,
	[lodging].[BedLog].bedId,
	[lodging].[Bed].bedName
HAVING
	max([lodging].[BedLog].eventStart) <= GetDate()
	--AND IsNull(max([lodging].[BedLog].eventEnd),GetDate()) >= GetDate()
GO
/****** Object:  Table [organization].[Provider]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Provider](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationDescription] [varchar](500) NULL,
	[providerName] [varchar](80) NOT NULL,
	[website] [varchar](500) NULL,
	[street] [varchar](80) NULL,
	[street2] [varchar](80) NULL,
	[city] [varchar](80) NULL,
	[state] [varchar](80) NULL,
	[zipCode] [int] NULL,
	[phone] [varchar](80) NULL,
	[email] [varchar](80) NULL,
	[contactName] [varchar](80) NULL,
	[contactPhone] [varchar](80) NULL,
	[contactEmail] [varchar](80) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[providerTypeId] [int] NULL,
 CONSTRAINT [organization_Provider_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[DrugScreenLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[DrugScreenLog](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[participantId] [int] NOT NULL,
	[drugScreenTypeId] [int] NOT NULL,
	[providerId] [int] NULL,
	[passed] [bit] NOT NULL,
	[score] [varchar](30) NULL,
	[gradeLevel] [varchar](30) NULL,
	[comments] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[TestDate] [datetime] NULL,
	[drugscreenreasonid] [int] NULL,
	[userName] [varchar](60) NULL,
 CONSTRAINT [participant_DrugScreenLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[DrugScreenReason]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[DrugScreenReason](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DrugScreenReasonName] [varchar](60) NOT NULL,
	[DrugScreenReasonDescription] [varchar](100) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_DrugScreenReason_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[DrugScreenType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[DrugScreenType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[drugScreenTypeName] [varchar](30) NOT NULL,
	[drugScreenTypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_DrugScreenType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[DrugScreenDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [participant].[DrugScreenDashboard]
AS
SELECT
	
	[participant].[DrugScreenLog].id,
	[participant].[Participant].id as 'participantID',
	CASE WHEN ISNULL([participant].[Participant].timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	CONCAT_WS(' ',h_participant.firstName, h_participant.middleName, h_participant.lastName) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	h_participant.nickName,
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn',
	CAST([participant].[DrugScreenLog].TestDate as DATE) AS 'testDate',
	CAST([participant].[DrugScreenLog].timeCreated as DATE) as 'entryDate',
	[participant].[DrugScreenLog].drugscreenreasonid as 'drugScreenReasonId',
	[participant].[DrugScreenReason].DrugScreenReasonName,
	[participant].[DrugScreenLog].drugScreenTypeId,
	[participant].[DrugScreenType].drugScreenTypeName,
	[participant].[DrugScreenLog].passed,
	[participant].[DrugScreenLog].comments,

	[participant].[DrugScreenLog].employeeId AS 'enteredById',
	CONCAT_WS(' ',e_employee.firstName,e_employee.middleName,e_employee.lastName) as 'enteredByName',
	
	[participant].[DrugScreenLog].providerId AS 'administerdById',
	CONCAT_WS(' ',a_employee.firstName,a_employee.middleName,a_employee.lastName) as 'administeredByName'

FROM
	
	[participant].[DrugScreenLog]
	INNER JOIN [participant].[Participant] on [participant].[DrugScreenLog].[participantId] = [participant].[Participant].id
	LEFT JOIN [humans].[Human] h_participant on [participant].[Participant].humanId = h_participant.id
	LEFT JOIN [participant].[DrugScreenType] on [participant].[DrugScreenLog].drugScreenTypeId = [participant].[DrugScreenType].id
	LEFT JOIN [participant].[DrugScreenReason] on [participant].[DrugScreenLog].drugscreenreasonid = [participant].[DrugScreenReason].id
	LEFT JOIN [organization].[Provider] on [participant].[DrugScreenLog].[providerId] = [organization].[Provider].[id]

	
	LEFT JOIN staff.Employee e_staff ON [participant].[DrugScreenLog].employeeId = e_staff.Id
	LEFT JOIN [humans].[Human] e_employee ON e_staff.humanId = e_employee.id
		
	LEFT JOIN staff.Employee a_staff ON [participant].[DrugScreenLog].providerId = a_staff.Id
	LEFT JOIN [humans].[Human] a_employee ON a_staff.humanId = a_employee.id
GO
/****** Object:  Table [participant].[IncidentLocationType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentLocationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[incidentLocationTypeName] [varchar](100) NOT NULL,
	[incidentLocationTypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_IncidentLocationType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[IncidentLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentLog](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[incidentName] [varchar](30) NULL,
	[incidentDescription] [varchar](max) NULL,
	[incidentLocationDescription] [varchar](500) NULL,
	[physicalInjury] [bit] NOT NULL,
	[propertyDamage] [bit] NOT NULL,
	[barParticipant] [bit] NOT NULL,
	[incidentDate] [datetime] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[ParticipantID] [int] NULL,
	[userName] [varchar](60) NULL,
	[IncidentLocationTypeID] [int] NULL,
 CONSTRAINT [participant_IncidentLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [participant].[IncidentDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [participant].[IncidentDashboard]
AS
SELECT

	i.id,
	i.participantId,
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	CONCAT_WS(' ',h_participant.firstName, h_participant.middleName, h_participant.lastName) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	h_participant.nickName,
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn',
	CAST(i.incidentDate as DATE) as 'incidentDate',
	i.incidentName,
	i.IncidentLocationTypeID,
	loc.incidentLocationTypeName,
	i.incidentDescription,
	i.physicalInjury,
	i.propertyDamage,
	i.barParticipant as 'suspension',
	i.timeCreated


FROM
	
	[participant].[IncidentLog] i
	INNER JOIN [participant].[Participant] p
	ON i.[participantId] = p.id
	LEFT JOIN [humans].[Human] h_participant
	ON p.humanId = h_participant.id
	LEFT JOIN [participant].[IncidentLocationType] loc
	ON i.IncidentLocationTypeID = loc.id
GO
/****** Object:  Table [participant].[Referral]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Referral](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[Type_Id] [int] NOT NULL,
	[Status_Id] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[ProgramId] [int] NULL,
	[employee_id] [int] NULL,
	[ReasonForEntry_Id] [int] NULL,
	[latestReferralUpdate] [datetime] NULL,
 CONSTRAINT [participant_referral_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[services]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[programid] [int] NOT NULL,
	[Serviceid] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](60) NULL,
	[HMIS] [bit] NULL,
	[quantity] [int] NULL,
	[comment] [varchar](300) NULL,
	[ServiceLocationId] [int] NULL,
 CONSTRAINT [participant_services_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventAttendance]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventAttendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[checkin] [datetime2](7) NULL,
	[checkout] [datetime2](7) NULL,
	[autonote] [varchar](100) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_EventAttendance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ScheduleParticipant]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ScheduleParticipant](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[seasonId] [int] NOT NULL,
	[dayOfYear] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_ScheduleParticipant_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Seasons]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Seasons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Seasons] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_shelter_Seasons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[LastActivity]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [participant].[LastActivity]
AS
with Activities as (
SELECT
	[ParticipantID] as Participant
,	[incidentDate] as Date
	FROM [participant].[IncidentLog]

union
SELECT
	[participantId] AS Participant
,	[timeCreated] as Date
FROM [participant].[CaseNotes]
union
SELECT
	[participantId] AS Participant
,	[timeCreated] as Date
FROM [participant].[services]
union
SELECT
	[participantId] AS Participant
,	[TestDate] as Date
FROM [participant].[DrugScreenLog]
union
SELECT
	[participantId] AS Participant
,	[participant].[Referral].timeCreated as Date
FROM [participant].[Referral]
union
SELECT
	[Id] AS Participant
,	[participant].[Participant].timeCreated as Date
FROM [participant].[Participant]
union
SELECT
	[Id] AS Participant
,	[participant].[Participant].timeRegistered as Date
FROM [participant].[Participant]
union
SELECT
	[participantId] AS Participant
,	CASE WHEN [eventEnd] IS NULL THEN [eventStart] ELSE [eventEnd] END as Date
FROM [lodging].[BedLog]
union
SELECT
	[participantId] AS Participant
,	DateAdd(DAY,[dayOfYear], 
			case when [dayOfYear] < DATENAME(dayofyear , datefromparts((select CAST(SUBSTRING(seasons, 1, 4)as INT) FROM shelter.Seasons where id = [seasonId]), 11,1))
			then DateFromParts((select CAST(SUBSTRING(seasons, 6, 9)as INT) FROM shelter.Seasons where id = [seasonId])-1,12,31) 
			Else DateFromParts((select CAST(SUBSTRING(seasons, 1, 4)as INT) FROM shelter.Seasons where id = [seasonId])-1,12,31) 
			end) as Date
FROM [shelter].[ScheduleParticipant]
Where timeRetired IS NULL
union
SELECT
	[participantId] AS Participant
,	[checkin] as Date
FROM [participant].[EventAttendance]
Where timeRetired IS NULL
)

Select Participant as participant_id,max(Date) as last_activity from Activities
Group by Participant;
GO
/****** Object:  Table [participant].[ReferralReasonForEntry]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ReferralReasonForEntry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reason] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Referral_ReasonForEntry_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[ProviderType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[ProviderType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerTypeName] [varchar](200) NOT NULL,
	[providerTypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_ProviderType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ReferralStatus]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ReferralStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReferralStatusName] [varchar](200) NOT NULL,
	[ReferralStatusDescription] [varchar](1000) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_ReferralStatus_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ReferralType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ReferralType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReferralTypeName] [varchar](200) NOT NULL,
	[ReferralTypeDescription] [varchar](1000) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_ReferralType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[Program]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[Program](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ctid] [int] NULL,
	[programName] [varchar](50) NOT NULL,
	[programDescription] [varchar](3000) NULL,
	[autoEnroll] [bit] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[isResidential] [bit] NULL,
	[allowUnder18] [bit] NULL,
 CONSTRAINT [interaction_Program_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[ReferralDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [participant].[ReferralDashboard]
AS
SELECT
	r.id
	,r.ParticipantId AS 'participantId'
	,CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive'
    ,CONCAT_WS(' ',h.[FirstName],h.[MiddleName],h.[LastName]) as 'name'
    ,h.[FirstName]
    ,h.[MiddleName]
    ,h.[LastName]
    ,h.[NickName]
    ,h.[dob] AS 'birthDate'
    ,CAST((DATEDIFF(day, h.[dob], GetDate()))/365.25 as INT) AS 'age'
	,CAST(r.[timeCreated] as DATE) AS 'referralDate'
	,prov.providerTypeId AS 'providerTypeId'
	,provType.providerTypeName AS 'providerType'
	,r.providerId AS 'providerId'
	,prov.providerName AS 'providerName'
	,r.Type_ID AS 'referralTypeId'
	,r_type.ReferralTypeName AS 'referralType'
	,r.Status_Id AS 'statusId'
	,r_status.ReferralStatusName AS 'referralStatus'
	,r.ProgramId AS 'programId'
	,prog.programName as 'programName'
	,r.ReasonForEntry_Id as 'ReasonForEntryId'
	,r_reason.reason as 'ReasonForEntry'
	,bl.eventStart as checkinDate
FROM 
	[participant].[Referral] r
	INNER JOIN [participant].[Participant] p on r.[ParticipantId] = p.id
	LEFT JOIN [humans].[Human] h on p.humanId = h.id
	LEFT JOIN [organization].[Provider] prov on r.providerId = prov.id
	LEFT JOIN [organization].[ProviderType] provType on prov.ProviderTypeId = provType.id 
	LEFT JOIN [participant].[ReferralType] r_type on r.Type_id = r_type.id
	LEFT JOIN [participant].[ReferralStatus] r_status on r.Status_Id = r_status.id
	LEFT JOIN [interaction].[Program] prog on r.ProgramId = prog.id
	LEFT JOIN [participant].[ReferralReasonForEntry] r_reason on r.ReasonForEntry_Id = r_reason.id
	LEFT JOIN [lodging].[Reservation] res on r.id = res.referralId
	LEFT JOIN [lodging].[bedLog] bl on res.id = bl.reservationId
;
GO
/****** Object:  Table [participant].[CaseNotesServices]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseNotesServices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CaseNotesId] [int] NOT NULL,
	[ServicesId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_CaseNotesServices_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[ServiceLocation]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[ServiceLocation](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[location] [varchar](2000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [interaction_ServiceLocation_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[Service]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[Service](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ctid] [int] NULL,
	[serviceName] [varchar](250) NOT NULL,
	[serviceDescription] [varchar](3000) NULL,
	[serviceTypeId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[allowUnder18] [bit] NULL,
 CONSTRAINT [interaction_Service_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[ServicesDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [participant].[ServicesDashboard]
AS
SELECT
	s.id AS 'rowId',
	s.participantId AS 'participantId',
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	CONCAT_WS(' ',h_participant.[FirstName],h_participant.[MiddleName],h_participant.[LastName]) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	ISNULL(h_participant.nickName,'') as 'nickName',
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn',
	s.employeeId AS 'employeeId',
	CONCAT_WS(' ',h_employee.firstName,h_employee.middleName,h_employee.lastName) as 'employeeName',
	s.programid,
	prog.programName,
	serv.ServiceTypeid as serviceTypeId,
	s.Serviceid  as 'serviceId',
	serv.serviceName AS 'serviceName',
	s.[timeCreated] AS 'serviceDate',
	s.[HMIS],
	s.[quantity],
	s.[comment]
	,cns.CaseNotesId as 'noteId'
	,h_participant.genderId as GenderId
	,hg.genderName
	,s.ServiceLocationId
	,sl.location as 'serviceLocation'
FROM
	[participant].[services] s
	INNER JOIN [participant].[Participant] p
	ON s.[participantId] = p.id
	LEFT JOIN [humans].[Human] h_participant
	ON p.humanId = h_participant.id
	LEFT JOIN [interaction].[program] prog
	ON s.programid = prog.id
	LEFT JOIN [interaction].[service] serv
	ON s.Serviceid = serv.id
	LEFT JOIN [interaction].[ServiceLocation] sl
	ON s.ServiceLocationId = sl.id
	LEFT JOIN staff.Employee
	ON s.employeeId = [staff].[Employee].Id
	LEFT JOIN [humans].[Human] h_employee
	ON [staff].[Employee].humanId = h_employee.id
	LEFT JOIN participant.CaseNotesServices cns on cns.ServicesId = s.Serviceid
	LEFT JOIN humans.Gender hg ON hg.id = h_participant.genderId
GO
/****** Object:  Table [participant].[Suspension]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Suspension](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[incidentLogId] [int] NULL,
	[participantId] [int] NOT NULL,
	[suspensionTypeId] [int] NOT NULL,
	[suspensionTypeIdRevised] [int] NOT NULL,
	[suspensionNotes] [varchar](3000) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[dateBegin] [datetime] NOT NULL,
	[dateEnd] [datetime] NULL,
	[dateEndRevised] [datetime] NULL,
	[reinstateRequired] [bit] NOT NULL,
	[dateReinstated] [datetime] NULL,
	[userName] [varchar](50) NOT NULL,
	[LocationTypeID] [int] NULL,
	[Duration] [int] NULL,
	[DurationRevised] [int] NULL,
 CONSTRAINT [participant_Suspension_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[SuspensionType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[SuspensionType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[suspensionTypeName] [varchar](30) NOT NULL,
	[suspensionTypeDescription] [varchar](500) NULL,
	[suspensionTypeDuration] [varchar](30) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_SuspensionType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[SuspensionDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [participant].[SuspensionDashboard]
AS
SELECT
	s.id,
	s.participantId,
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	p.suspensionActive as 'suspensionActive',
	CONCAT_WS(' ',h_participant.firstName, h_participant.middleName, h_participant.lastName) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	h_participant.nickName,
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn', 
	s.incidentLogID,
	s.suspensionTypeId,
	s.suspensionTypeIdRevised,
	st.suspensionTypeName,
	str.suspensionTypeName as 'suspensionTypeNameRevised',
	s.suspensionNotes,
	s.Duration,
	s.DurationRevised,
	s.dateBegin,
	s.DateEnd,
	s.DateEndRevised,
	s.reinstateRequired,
	s.dateReinstated
FROM
	[participant].[Suspension] s
	INNER JOIN [participant].[Participant] p
	ON s.[participantId] = p.id
	LEFT JOIN [humans].[Human] h_participant
	ON p.humanId = h_participant.id
	LEFT JOIN [participant].[SuspensionType] st
	ON s.suspensionTypeID = st.id
	LEFT JOIN [participant].[SuspensionType] str
	ON s.suspensionTypeIDRevised = str.id
GO
/****** Object:  View [participant].[vwParticipantDetails]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [participant].[vwParticipantDetails]
AS
SELECT        e.id AS participantId, e.humanId, e.caseManagerId, e.intakeLogId, e.trackId, e.timeCreated AS participantTimeCreated, e.timeRetired AS participantTimeRetired, e.suspensionActive, e.timeRegistered, h.firstName, h.middleName, 
                         h.lastName, h.nickname, h.suffix, h.dob, h.familyId, h.phone, h.email, h.emergencyContactName, h.emergencyContactPhone, h.emergencyContactEmail, h.timeCreated AS Expr2, h.timeDeceased, h.timeRetired AS Expr3, 
                         h.street, h.city, h.state, h.zipCode, h.altPhone, h.preferredCommunication, h.pictureId, h.CTID, h.SSN, h.dobQuality, h.employer, h.school, h.congregationId, h.ssnQualityId, h.genderId, h.raceId, h.hohRelationshipId, 
                         h.communicationTypeId, h.dobQualityId, h.ethnicityId, h.disabilityTypeId, h.veteranStatusId, h.emergencyContactTypeId, h.InsuranceTypeID, h.trimorbid, h.chronicHomeless, h.sexOffendRegistry, h.mailService, 
                         h.fullRegistration
FROM            participant.Participant AS e LEFT OUTER JOIN
                         humans.Human AS h ON e.humanId = h.id
GO
/****** Object:  Table [shelter].[WaitList]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[WaitList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantid] [int] NOT NULL,
	[WaitListProgramId] [int] NOT NULL,
	[details] [text] NULL,
	[dateadded] [datetime] NOT NULL,
	[dateremoved] [datetime] NULL,
 CONSTRAINT [PK_WaitList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [shelter].[WaitListPrograms]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[WaitListPrograms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[programId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[providerId] [int] NOT NULL,
 CONSTRAINT [PK_WaitListPrograms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [shelter].[WaitListView]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [shelter].[WaitListView]
AS
SELECT
	w.[id] as 'waitlist_id',
	w.[WaitListProgramId] as 'waitlist_program_id',
	prog.[programName] as 'program_name',
	w.[dateadded] as 'date_added',
	p.[id] as 'participant_id',
	h.[firstName] AS 'FirstName',
	ISNULL(h.[middleName],'') AS 'MiddleName',
	h.[lastName] AS 'LastName',
	h.[dob] AS 'BirthDate',
	h.[raceId] AS 'RaceId',
	race.[raceName] AS 'Race',
	h.[genderId] AS 'GenderId',
	g.[genderName] AS 'Gender',
	w.[details] AS 'Notes'
	
FROM  [shelter].[WaitList] w
	INNER JOIN  [participant].[Participant] p ON w.participantid = p.id
	LEFT JOIN [humans].[Human] h ON p.[humanId] = h.[id]
	LEFT JOIN [humans].[race] race ON h.[raceId] = race.[id]
	LEFT JOIN [humans].[gender] g ON h.[genderId] = g.[id]
	LEFT JOIN [shelter].[WaitListPrograms] wlp ON w.[WaitListProgramId] = wlp.[id]
	LEFT JOIN [interaction].[Program] prog ON wlp.[programId] = prog.[id]
WHERE
	w.[dateremoved] is null;
GO
/****** Object:  View [staff].[vwEmployeeDetails]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [staff].[vwEmployeeDetails]
AS
SELECT        e.id AS employeeId, e.humanId, e.jobTitle, h.firstName, h.middleName, h.lastName, h.nickname, h.suffix, h.dob, h.familyId, h.phone, h.email, h.emergencyContactName, h.emergencyContactPhone, 
                         h.emergencyContactEmail, h.timeCreated AS humanTimeCreated, h.timeDeceased, h.timeRetired AS humanTimeRetired, h.street, h.city, h.state, h.zipCode, h.altPhone, h.preferredCommunication, h.pictureId, h.CTID, h.SSN, 
                         h.dobQuality, h.employer, h.school, h.congregationId, h.ssnQualityId, h.genderId, h.raceId, h.hohRelationshipId, h.communicationTypeId, h.dobQualityId, h.ethnicityId, h.disabilityTypeId, h.veteranStatusId, 
                         h.emergencyContactTypeId, h.InsuranceTypeID, h.trimorbid, h.chronicHomeless, h.sexOffendRegistry, h.mailService, h.fullRegistration, e.timeRetired AS employeeTimeRetired, e.timeCreated AS employeeTimeCreated
FROM            staff.Employee AS e LEFT OUTER JOIN
                         humans.Human AS h ON e.humanId = h.id
GO
/****** Object:  View [participant].[Dashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [participant].[Dashboard]
AS
SELECT 
	p.[id] as 'ID',
	p.suspensionActive AS 'Suspension',
	h.fullRegistration as 'fullRegistration',
	h.[firstName] AS 'FirstName',
	ISNULL(h.[middleName],'') AS 'MiddleName',
	h.[lastName] AS 'LastName',
	ISNULL(h.[nickname],'') AS 'NickName',
	h.[dob] AS 'BirthDate',
	CAST((DATEDIFF(day, h.[dob], GetDate()))/365.25 as INT) as 'Age',
	h.[raceId] AS 'RaceId',
	race.[raceName] AS 'Race',
	h.[genderId] AS 'GenderId',
	g.[genderName] AS 'Gender',
	h.[veteranStatusId] AS 'VeteranId',
	v.[veteranStatusName] AS 'Veteran',
    p.[timeCreated] AS 'timeCreated',
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	p.[timeRegistered] AS 'LastRegistration',
	a.[last_activity] AS 'LastAction',
	--s.[facilty_id] AS 'shelterId',
	--ISNULL(s.[facility_name],'') AS 'shelter',
	(select Top(1) facilty_id from [participant].[CurrentShelter] where [participant_id] = p.[id] and last_check_out IS NULL order by last_check_in desc) AS 'shelterId',
	ISNULL((select Top(1) facility_name from [participant].[CurrentShelter] where [participant_id] = p.[id] and last_check_out IS NULL order by last_check_in desc),'') AS 'shelter',
	CASE
		WHEN r.[reservation_created] IS NOT NULL AND r.[reservation_completed] IS NULL THEN 1
		ELSE 0
	END AS 'reservation'

FROM [participant].[Participant] p
	LEFT JOIN [humans].[Human] h ON p.[humanId] = h.[id]
	LEFT JOIN [humans].[race] race ON h.[raceId] = race.[id]
	LEFT JOIN [humans].[gender] g ON h.[genderId] = g.[id]
	LEFT JOIN [humans].[VeteranStatus] v ON h.[veteranStatusId] = v.[id]
	LEFT JOIN [participant].[LastActivity] a on p.[id] = a.[participant_id]
	--LEFT JOIN [participant].[CurrentShelter] s 	on p.[id] = s.[participant_id]
	LEFT JOIN (SELECT DISTINCT participant_id, max(reservation_created) as 'reservation_created', reservation_completed
				FROM [participant].[CurrentReservations]
				GROUP BY participant_id, reservation_completed) r
			on p.[id] = r.[participant_id]
WHERE p.timeRetired is null;
GO
/****** Object:  View [participant].[HistoryDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [participant].[HistoryDashboard]
AS
SELECT 
	p.[id] as 'ID',
	p.suspensionActive AS 'Suspension',
	h.fullRegistration as 'fullRegistration',
	h.[firstName] AS 'FirstName',
	ISNULL(h.[middleName],'') AS 'MiddleName',
	h.[lastName] AS 'LastName',
	ISNULL(h.[nickname],'') AS 'NickName',
	h.[dob] AS 'BirthDate',
	CAST((DATEDIFF(day, h.[dob], GetDate()))/365.25 as INT) as 'Age',
	h.[raceId] AS 'RaceId',
	race.[raceName] AS 'Race',
	h.[genderId] AS 'GenderId',
	g.[genderName] AS 'Gender',
	h.[veteranStatusId] AS 'VeteranId',
	v.[veteranStatusName] AS 'Veteran',
    p.[timeCreated] AS 'timeCreated',
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	p.[timeRegistered] AS 'LastRegistration',
	a.[last_activity] AS 'LastAction',
	s.[facilty_id] AS 'shelterId',
	ISNULL(s.[facility_name],'') AS 'shelter',
	CASE
		WHEN r.[reservation_created] IS NOT NULL AND r.[reservation_completed] IS NULL THEN 1
		ELSE 0
	END AS 'reservation'

FROM [participant].[Participant] p
	LEFT JOIN [humans].[Human] h ON p.[humanId] = h.[id]
	LEFT JOIN [humans].[race] race ON h.[raceId] = race.[id]
	LEFT JOIN [humans].[gender] g ON h.[genderId] = g.[id]
	LEFT JOIN [humans].[VeteranStatus] v ON h.[veteranStatusId] = v.[id]
	LEFT JOIN [participant].[LastActivity] a on p.[id] = a.[participant_id]
	LEFT JOIN [participant].[CurrentShelter] s 	on p.[id] = s.[participant_id]
	LEFT JOIN (SELECT DISTINCT participant_id, max(reservation_created) as 'reservation_created', reservation_completed
				FROM [participant].[CurrentReservations]
				GROUP BY participant_id, reservation_completed) r
			on p.[id] = r.[participant_id]
GO
/****** Object:  Table [participant].[StorageBinsLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[StorageBinsLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[col] [varchar](2) NOT NULL,
	[bin] [int] NOT NULL,
	[participantId] [int] NOT NULL,
	[createdOn] [datetime] NOT NULL,
	[startOn] [datetime] NOT NULL,
	[expireOn] [datetime] NOT NULL,
	[exitAction] [int] NULL,
	[exitedOn] [datetime] NULL,
	[exitedByStaffEmployeeId] [int] NULL,
	[cancelledOn] [datetime] NULL,
	[cancelledByStaffEmployeeId] [int] NULL,
 CONSTRAINT [PK_StorageBinsLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [participant].[vwStorageBinsLogDetails]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [participant].[vwStorageBinsLogDetails]
AS
SELECT        bins.id, bins.col, bins.bin, bins.participantId, bins.createdOn, bins.startOn, bins.expireOn, bins.exitAction, bins.exitedOn, bins.exitedByStaffEmployeeId, ed_exit.firstName AS exitedByFirstName, 
                         ed_exit.lastName AS exitedByLastName, pd.firstName AS participantFirstName, pd.middleName AS participantMiddleName, pd.lastName AS participantLastName, ed_exit.middleName AS exitedByMiddleName, 
                         ed_cancel.firstName AS cancelledByFirstName, ed_cancel.middleName AS cancelledByMiddleName, ed_cancel.lastName AS cancelledByLastName, bins.cancelledByStaffEmployeeId, bins.cancelledOn
FROM            participant.StorageBinsLog AS bins LEFT OUTER JOIN
                         staff.vwEmployeeDetails AS ed_exit ON bins.exitedByStaffEmployeeId = ed_exit.employeeId LEFT OUTER JOIN
                         staff.vwEmployeeDetails AS ed_cancel ON bins.cancelledByStaffEmployeeId = ed_cancel.employeeId LEFT OUTER JOIN
                         participant.vwParticipantDetails AS pd ON bins.participantId = pd.participantId
GO
/****** Object:  View [participant].[ServicesDashboard_ADHTemporaryGoLiveDeprecated]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [participant].[ServicesDashboard_ADHTemporaryGoLiveDeprecated]
AS
SELECT
	s.id AS 'rowId',
	s.participantId AS 'participantId',
	CASE WHEN ISNULL(p.timeRetired,1) = 1 THEN 1 ELSE 0 end as 'isActive',
	CONCAT_WS(' ',h_participant.[FirstName],h_participant.[MiddleName],h_participant.[LastName]) as 'name',
	h_participant.firstName,
	h_participant.middleName,
	h_participant.lastName,
	h_participant.nickName,
	'***-**-'+RIGHT(h_participant.[ssn],4) as 'ssn',
	s.employeeId AS 'employeeId',
	CONCAT_WS(' ',h_employee.firstName,h_employee.middleName,h_employee.lastName) as 'employeeName',
	s.programid,
	prog.programName,
	serv.ServiceTypeid as serviceTypeId,
	s.Serviceid  as 'serviceId',
	serv.serviceName AS 'serviceName',
	CAST(s.[timeCreated] as DATE) AS 'serviceDate',
	s.[HMIS],
	s.[quantity],
	s.[comment]

FROM
	[participant].[services] s
	INNER JOIN [participant].[Participant] p
	ON s.[participantId] = p.id
	LEFT JOIN [humans].[Human] h_participant
	ON p.humanId = h_participant.id
	LEFT JOIN [interaction].[program] prog
	ON s.programid = prog.id
	LEFT JOIN [interaction].[service] serv
	ON s.Serviceid = serv.id
	LEFT JOIN staff.Employee
	ON s.employeeId = [staff].[Employee].Id
	LEFT JOIN [humans].[Human] h_employee
	ON [staff].[Employee].humanId = h_employee.id
GO
/****** Object:  Table [calendar].[CalendarEvents]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [calendar].[CalendarEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[calendarId] [int] NULL,
	[breezeId] [int] NULL,
	[name] [varchar](200) NULL,
	[startDate] [datetime2](7) NULL,
	[endDate] [datetime2](7) NULL,
	[description] [varchar](200) NULL,
	[duration] [int] NULL,
 CONSTRAINT [PK_CalendarEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [u_Event_Breeze] UNIQUE NONCLUSTERED 
(
	[breezeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [calendar].[CalendarEventsPointCounts]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [calendar].[CalendarEventsPointCounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[points] [int] NOT NULL,
 CONSTRAINT [PK_CalendarEventsPointCounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [calendar].[calendars]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [calendar].[calendars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BreezeId] [int] NOT NULL,
	[name] [varchar](200) NULL,
 CONSTRAINT [PK_calendars2.calendars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [u_Cal_Breeze] UNIQUE NONCLUSTERED 
(
	[BreezeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [calendar].[EventAttendance]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [calendar].[EventAttendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[humanId] [int] NOT NULL,
	[checkin] [datetime2](7) NULL,
	[checkout] [datetime2](7) NULL,
	[autonote] [varchar](100) NULL,
 CONSTRAINT [PK_EventAttendance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APICalls]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APICalls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](100) NULL,
	[timestamp] [datetime] NOT NULL,
	[status_code] [int] NULL,
 CONSTRAINT [PK_logger.APICalls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HMSLinks]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HMSLinks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[url] [varchar](250) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_logger.HMSLinks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemPerformance]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPerformance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tagpath] [varchar](250) NULL,
	[tagvalue] [varchar](250) NULL,
	[tagdatatype] [varchar](100) NULL,
	[timestamp] [datetime] NOT NULL,
 CONSTRAINT [system_performance_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[CommunicationType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[CommunicationType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[communicationTypeName] [varchar](30) NOT NULL,
	[communicationTypeDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_CommunicationType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[DobQuality]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[DobQuality](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[dobQualityName] [varchar](60) NOT NULL,
	[dobQualityDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_DobQuality_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[EmergencyContactType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[EmergencyContactType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[emergencyContactTypeName] [varchar](30) NOT NULL,
	[emergencyContactTypeDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_EmergencyContactType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Ethnicity]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Ethnicity](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ethnicityName] [varchar](30) NOT NULL,
	[ethnicityDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_Ethnicity_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Family]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Family](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[surname] [varchar](100) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [humans_Family_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[HohRelationship]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[HohRelationship](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[hohRelationshipName] [varchar](30) NOT NULL,
	[hohRelationshipDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_HohRelationship_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[InsuranceType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[InsuranceType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](200) NOT NULL,
	[TypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [humans_InsuranceType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[Medications]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[Medications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL,
	[timeRetired] [datetime] NULL,
	[timeCreated] [datetime] NULL,
	[actor] [varchar](50) NULL,
 CONSTRAINT [PK_Medications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Medications] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[ReferenceRelationType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[ReferenceRelationType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[referenceRelationshipTypeName] [varchar](30) NOT NULL,
	[referenceRelationshipTypeDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_ReferenceRelationType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [humans].[SSNQuality]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [humans].[SSNQuality](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ssnQualityName] [varchar](60) NOT NULL,
	[ssnQualityDescription] [varchar](200) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [humans_SSNQuality_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[ProgramProviderTypes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[ProgramProviderTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[programId] [int] NOT NULL,
	[providerTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramProviderTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[ProgramService]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[ProgramService](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[programId] [int] NOT NULL,
	[serviceId] [int] NOT NULL,
 CONSTRAINT [interaction_ProgramService_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [interaction].[ServiceType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [interaction].[ServiceType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[serviceTypeName] [varchar](50) NOT NULL,
	[serviceTypeDescription] [varchar](2000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [interaction_ServiceType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[AuditLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[AuditLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reservationId] [int] NULL,
	[bedLogId] [int] NULL,
	[action] [varchar](250) NOT NULL,
	[actionTime] [datetime] NOT NULL,
	[employeeId] [int] NOT NULL,
	[userName] [varchar](250) NULL,
	[bedId] [int] NULL,
	[participantId] [int] NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[ExitDestination]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[ExitDestination](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[destinationName] [varchar](500) NOT NULL,
	[destinationDescription] [varchar](500) NULL,
	[destinationTypeId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [lodging_ExitDestination_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[ExitDestinationType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[ExitDestinationType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[destinationTypeName] [varchar](100) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [lodging_ExitDestinationType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[FacilityAssociatedPrograms]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[FacilityAssociatedPrograms](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilityId] [int] NOT NULL,
	[associatedProgramId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[FacilityLayout]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[FacilityLayout](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facilityId] [int] NOT NULL,
	[rowSize] [int] NULL,
	[colSize] [int] NULL,
	[jsonLayout] [varchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](100) NULL,
 CONSTRAINT [lodging_FacilityLayout_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [lodging].[FacilityType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[FacilityType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilityTypeName] [varchar](50) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [lodging_FacilityType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [lodging].[GlobalLayout]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[GlobalLayout](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rowSize] [int] NULL,
	[colSize] [int] NULL,
	[jsonLayout] [varchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](100) NULL,
 CONSTRAINT [lodging_GlobalLayout_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [lodging].[RoomLayout]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lodging].[RoomLayout](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomId] [int] NOT NULL,
	[rowSize] [int] NULL,
	[colSize] [int] NULL,
	[jsonLayout] [varchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](100) NULL,
 CONSTRAINT [lodging_RoomLayout_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [organization].[ApplicantStatus]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[ApplicantStatus](
	[employerId] [int] NOT NULL,
	[participantId] [int] NOT NULL,
	[position] [nvarchar](50) NOT NULL,
	[appliedDate] [datetime] NULL,
	[interviewedDate] [datetime] NULL,
	[hiredDate] [datetime] NULL,
	[hiredState] [bit] NULL,
	[appliedComment] [nvarchar](500) NULL,
	[interviewedComment] [nvarchar](500) NULL,
	[hiredComment] [nvarchar](500) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_ApplicantStatus_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[BusinessDescription]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[BusinessDescription](
	[BusinessDescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessDescription] [varchar](300) NOT NULL,
 CONSTRAINT [organization_BusinessDescriptionID_PK] PRIMARY KEY CLUSTERED 
(
	[BusinessDescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[CommunityPartner]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[CommunityPartner](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[services] [varchar](2000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_CommunityPartner_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Congregation]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Congregation](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[breezeId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](3000) NULL,
	[leader] [varchar](300) NULL,
	[username] [varchar](30) NULL,
	[hostingSince] [varchar](10) NULL,
 CONSTRAINT [organization_Congregation_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[EmployerContacts]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[EmployerContacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employerId] [int] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[username] [varchar](40) NULL,
	[phone] [varchar](30) NULL,
	[email] [varchar](60) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](5000) NULL,
 CONSTRAINT [organization_EmployerContacts_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[EmployerNewQualifier]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[EmployerNewQualifier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EmployerNewId] [int] NOT NULL,
	[QualifierId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [organization_NewEmployerQualifier_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[EmployerNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[EmployerNotes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[employerId] [int] NOT NULL,
	[note] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[noteDate] [datetime] NULL,
	[userName] [varchar](200) NULL,
 CONSTRAINT [organization_EmployerNotes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Housing]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Housing](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[facilityName] [varchar](30) NOT NULL,
	[street] [varchar](30) NOT NULL,
	[city] [varchar](30) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[zipCode] [int] NOT NULL,
	[beds] [int] NOT NULL,
	[rooms] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_Housing_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Insurance]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Insurance](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[services] [varchar](2000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_Insurance_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[JobQualifier]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[JobQualifier](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[jobId] [int] NOT NULL,
	[requiresDrugScreen] [bit] NOT NULL,
	[isFelonyFriendly] [bit] NOT NULL,
	[isSexOffenderFriendly] [bit] NOT NULL,
	[requiresUniform] [bit] NOT NULL,
	[requiresExperience] [bit] NOT NULL,
	[requiresPriorExperience] [bit] NOT NULL,
	[requiresWorkLicense] [bit] NOT NULL,
	[requiresDriversLicense] [bit] NOT NULL,
	[requiresEducation] [bit] NOT NULL,
	[requiresBackgroundCheck] [bit] NOT NULL,
	[isSkilledLaborPosition] [bit] NOT NULL,
	[addressRequired] [bit] NOT NULL,
	[internetRequired] [bit] NOT NULL,
	[notes] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_JobQualifier_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[LawEnforcement]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[LawEnforcement](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[services] [varchar](2000) NULL,
	[areaGoverned] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_LawEnforcement_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Medical]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Medical](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[services] [varchar](2000) NULL,
	[physicians] [int] NULL,
	[nurses] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_Medical_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Organization]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Organization](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[orgName] [varchar](80) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [organization_Organization_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[ProviderContacts]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[ProviderContacts](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[username] [varchar](40) NULL,
	[phone] [varchar](30) NULL,
	[email] [varchar](60) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](5000) NULL,
 CONSTRAINT [organization_ProviderContacts_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[ProviderHuman]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[ProviderHuman](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[firstname] [varchar](100) NULL,
	[lastname] [varchar](100) NULL,
	[phone] [varchar](12) NULL,
	[altphone] [varchar](12) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [organization_ProviderHuman_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[ProviderNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[ProviderNotes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[providerId] [int] NOT NULL,
	[note] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[noteDate] [datetime] NULL,
	[userName] [varchar](200) NULL,
 CONSTRAINT [organization_ProviderDetail_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Qualifier]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Qualifier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Qualifier_Description] [varchar](200) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [organization_Qualifier_id_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[Vendor]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[Vendor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[street] [varchar](80) NULL,
	[city] [varchar](80) NULL,
	[state] [varchar](80) NULL,
	[zipCode] [int] NULL,
	[phone] [varchar](80) NULL,
	[email] [varchar](80) NULL,
	[website] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[BusinessDescriptionID] [int] NULL,
	[vendorName] [varchar](80) NOT NULL,
 CONSTRAINT [organization_Vendor_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[VendorBusinessDescription]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[VendorBusinessDescription](
	[BusinessDescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessDescription] [varchar](300) NOT NULL,
 CONSTRAINT [organization_VendorBusinessDescriptionID_PK] PRIMARY KEY CLUSTERED 
(
	[BusinessDescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[VendorContacts]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[VendorContacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vendorId] [int] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[username] [varchar](40) NULL,
	[phone] [varchar](30) NULL,
	[email] [varchar](60) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](5000) NULL,
 CONSTRAINT [organization_VendorContacts_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [organization].[VendorNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [organization].[VendorNotes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[vendorId] [int] NOT NULL,
	[note] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[noteDate] [datetime] NULL,
	[userName] [varchar](200) NULL,
 CONSTRAINT [organization_VendorNotes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[AutomatedTaskRules]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[AutomatedTaskRules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[automatedTaskId] [int] NOT NULL,
	[RuleNumber] [int] NOT NULL,
	[entryCriterialLabel] [varchar](500) NULL,
	[entryCriteriaTime] [int] NULL,
	[entryCriteriaTimeUnits] [varchar](100) NULL,
	[taskDueDateTime] [int] NULL,
	[taskDueDateTimeUnints] [varchar](100) NULL,
	[taskSubject] [varchar](500) NULL,
	[taskType] [int] NULL,
	[taskNotes] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[taskPriority] [int] NULL,
 CONSTRAINT [PK_AutomatedTaskRules] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[AutomatedTaskType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[AutomatedTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](500) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[isActive] [bit] NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_AutomatedTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[CampusStore]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CampusStore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[TransactionPoints] [int] NOT NULL,
	[TotalPoints] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[Notes] [varchar](50) NULL,
	[eventDate] [datetime] NULL,
 CONSTRAINT [participant_CampusStore_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[CampusStoreCategory]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CampusStoreCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[CanAdd] [bit] NOT NULL,
	[CanDeduct] [bit] NOT NULL,
 CONSTRAINT [participant_CampusStoreCategory_id_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[CaseManager]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseManager](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_CaseManager_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[CaseNotesEditLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[CaseNotesEditLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[actionDate] [datetime] NOT NULL,
	[actionBy] [int] NULL,
	[action] [varchar](50) NULL,
	[caseNoteId] [int] NOT NULL,
	[oldStartTime] [datetime] NULL,
	[oldEndTime] [datetime] NULL,
	[newStartTime] [datetime] NULL,
	[newEndTime] [datetime] NULL,
	[userName] [varchar](250) NULL,
 CONSTRAINT [PK_CaseNotesEditLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ChronicHomelssHistory]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ChronicHomelssHistory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ParticipantID] [int] NULL,
	[chronicHomeless] [bit] NOT NULL,
	[chronicHomelessDate] [date] NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_ChronicHomelssHistory_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[Enrollments]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Enrollments](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[particpantId] [int] NOT NULL,
	[programId] [int] NOT NULL,
 CONSTRAINT [participant_Enrollments_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventAttendeeCategories]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventAttendeeCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_participants.EventAttendeeCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventCategories]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[color] [varchar](10) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_participants.EventCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventClosedDays]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventClosedDays](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[blockedDay] [date] NULL,
 CONSTRAINT [participant_EventClosedDays_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventFrequencyType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventFrequencyType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[frequencyType] [varchar](30) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_EventFrequencyType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventLocations]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventLocations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_participants.EventLocations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventLocationsAliases]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventLocationsAliases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationAlias] [varchar](10) NOT NULL,
	[locationName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_participants.EventLocationsAliases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventNotes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[note] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](200) NULL,
 CONSTRAINT [participant_eventNotes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[Events]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NULL,
	[name] [varchar](200) NULL,
	[startsOn] [datetime] NULL,
	[endsOn] [datetime] NULL,
	[allDayEvent] [bit] NULL,
	[description] [varchar](200) NULL,
	[repeatFrequencyTypeId] [int] NULL,
	[dateSelectionPattern] [int] NULL,
	[dateSelectionDays] [varchar](20) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[points] [int] NULL,
	[facilitatorEmployeeId] [int] NULL,
	[IsEventRepeat] [bit] NULL,
	[repeatDateUntil] [datetime] NULL,
	[scheduledWeekdays] [tinyint] NULL,
	[duration_hours] [int] NULL,
	[locationId] [int] NULL,
 CONSTRAINT [PK_ParticipantEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventSchedule]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventSchedule](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[day] [int] NOT NULL,
	[year] [int] NOT NULL,
	[month] [nvarchar](200) NOT NULL,
	[notes] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeUpdated] [datetime] NULL,
	[timeCancelled] [datetime] NULL,
	[timeRetired] [datetime] NULL,
	[startsOn] [datetime] NULL,
	[endsOn] [datetime] NULL,
	[duration] [int] NULL,
	[locationId] [int] NULL,
	[points] [int] NULL,
	[description] [varchar](400) NULL,
 CONSTRAINT [participant_EventSchedule_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventSelectedAttendeeCategories]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventSelectedAttendeeCategories](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[attendeeCategoryId] [int] NULL,
	[eventId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_EventSelectedAttendeeCategories_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventSelectedFacilitators]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventSelectedFacilitators](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilitatorHumanId] [int] NULL,
	[eventId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_FacilitatorOfEvents_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventSheduleSelectedFacilitators]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventSheduleSelectedFacilitators](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[facilitatorHumanId] [int] NULL,
	[scheduleId] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_FacilitatorOfSchedule_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[EventWeeklyScheduleNote]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[EventWeeklyScheduleNote](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[time] [varchar](5000) NULL,
	[date] [datetime] NULL,
	[locationId] [int] NOT NULL,
	[note] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_EventWeeklyScheduleNote_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[HopeUDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[HopeUDashboard](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](200) NOT NULL,
	[day] [int] NOT NULL,
	[year] [int] NOT NULL,
	[generalPopBreakfast] [int] NULL,
	[generalPopLunch] [int] NULL,
	[cafeMWF] [int] NULL,
	[weekendSnackBags] [int] NULL,
	[snackPacks] [int] NULL,
	[morningCensus] [int] NULL,
	[dayCensus] [int] NULL,
	[showers] [int] NULL,
	[laundry] [int] NULL,
	[mailCheckHMS] [int] NULL,
	[morningNews] [int] NULL,
	[noOfClasses] [int] NULL,
	[classAttendance] [int] NULL,
	[inPersonStore] [int] NULL,
	[navigationService] [int] NULL,
	[footClinic] [int] NULL,
	[isClosed] [bit] NOT NULL,
	[isWeekend] [bit] NOT NULL,
	[notes] [nvarchar](200) NULL,
	[date] [datetime] NULL,
	[navigationPhoneAccess] [int] NULL,
	[showersMissed] [int] NULL,
	[mailMissed] [int] NULL,
	[laundryMissed] [int] NULL,
	[phoneComputerAccessMissed] [int] NULL,
	[isRecuperativeCareFull] [bit] NULL,
	[recuperativeCareOccupancy] [int] NULL,
 CONSTRAINT [PK_HopeU_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[HopeUDashboardMonthlyData]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[HopeUDashboardMonthlyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](200) NOT NULL,
	[year] [int] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[stateID] [int] NULL,
	[bithCertificate] [int] NULL,
	[travlersAid] [int] NULL,
	[legalClinic] [int] NULL,
	[vaccineClinic] [int] NULL,
	[housedESG] [int] NULL,
	[busPassesTotal] [int] NULL,
	[day_31] [int] NULL,
	[day_7] [int] NULL,
	[all_Day] [int] NULL,
	[ride_1] [int] NULL,
 CONSTRAINT [PK_HopeUMonthlyData_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[IncidentAttendeeLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentAttendeeLog](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[incidentLogId] [int] NOT NULL,
	[incidentAttendeeTypeId] [int] NOT NULL,
	[humanId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_IncidentAttendeeLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[IncidentAttendeeType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentAttendeeType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[incidentAttendeeTypeName] [varchar](30) NOT NULL,
	[incidentAttendeeTypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_IncidentAttendeeType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[IncidentLogType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentLogType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IncidentLogId] [int] NOT NULL,
	[IncidentTypeId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_IncidentLogType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[IncidentType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[IncidentType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[incidentTypeName] [varchar](70) NOT NULL,
	[incidentTypeDescription] [varchar](500) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_IncidentType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [participant_IncidetnType_incidentTypeName_UK] UNIQUE NONCLUSTERED 
(
	[incidentTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[incomeSources]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[incomeSources](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[source] [varchar](60) NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_incomeSources_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[MedicationBinsLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[MedicationBinsLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](50) NOT NULL,
	[shelterId] [int] NULL,
	[bin] [int] NULL,
	[participantId] [int] NOT NULL,
	[createdOn] [datetime] NOT NULL,
	[startOn] [datetime] NOT NULL,
	[exitAction] [int] NULL,
	[exitedOn] [datetime] NULL,
	[exitedByStaffEmployeeId] [int] NULL,
	[disposedOn] [datetime] NULL,
	[disposedByStaffEmployeeId] [int] NULL,
	[selectedMedications] [varchar](500) NULL,
 CONSTRAINT [PK_MedicationBinsLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[MedicationBinsMaster]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[MedicationBinsMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BinLocation] [varchar](50) NOT NULL,
	[BinNumber] [int] NOT NULL,
 CONSTRAINT [participant_MedicationBinsMaster_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[MergeAudit]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[MergeAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staffId] [int] NULL,
	[username] [varchar](200) NULL,
	[keepParticipant] [int] NULL,
	[mergeParticipants] [varchar](max) NULL,
	[actions] [text] NULL,
	[timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [participant].[ProgramLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ProgramLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[programId] [int] NOT NULL,
	[action] [varchar](50) NULL,
	[actionDate] [datetime] NOT NULL,
	[userName] [varchar](100) NULL,
 CONSTRAINT [participant_ProgramLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ProgramsHistory]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ProgramsHistory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ParticipantID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
	[EntryDate] [datetime] NULL,
	[ExitDate] [datetime] NULL,
	[timeCreated] [datetime] NOT NULL,
	[EnteredBy] [varchar](200) NULL,
	[assignedStaffId] [int] NULL,
	[AssignedDate] [datetime] NULL,
	[AssignedBy] [int] NULL,
 CONSTRAINT [participant_ProgramsHistory_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ReferralLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ReferralLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReferralId] [int] NOT NULL,
	[ReferralType_ID] [int] NOT NULL,
	[ReferralStatus_ID] [int] NOT NULL,
	[Comment] [varchar](1000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](100) NULL,
 CONSTRAINT [participant_ReferralLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[RegistrationLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[RegistrationLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[actionDate] [datetime] NOT NULL,
	[actionBy] [int] NULL,
	[action] [varchar](50) NULL,
	[actionFields] [varchar](500) NULL,
	[userName] [varchar](250) NULL,
 CONSTRAINT [PK_RegistrationLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ReinstatementLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ReinstatementLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[suspensionId] [int] NOT NULL,
	[Comment] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[userName] [varchar](60) NULL,
	[suspensionTypeId] [int] NOT NULL,
	[timeBegin] [datetime] NOT NULL,
	[timeEnd] [datetime] NULL,
	[duration] [int] NULL,
 CONSTRAINT [participant_ReinstatementLog_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[ResidentialDashboard]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[ResidentialDashboard](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[july_value] [float] NULL,
	[aug_value] [float] NULL,
	[sept_value] [float] NULL,
	[oct_value] [float] NULL,
	[nov_value] [float] NULL,
	[dec_value] [float] NULL,
	[jan_value] [float] NULL,
	[feb_value] [float] NULL,
	[march_value] [float] NULL,
	[april_value] [float] NULL,
	[may_value] [float] NULL,
	[june_value] [float] NULL,
	[fiscal_year] [varchar](9) NOT NULL,
	[parameter] [varchar](255) NOT NULL,
	[parameter_display_value] [varchar](255) NULL,
	[is_manual] [bit] NOT NULL,
 CONSTRAINT [PK_Residential_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[SORegistryHistory]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[SORegistryHistory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[ParticipantID] [int] NULL,
	[soRegistry] [bit] NOT NULL,
	[soRegistryDate] [date] NULL,
	[timeCreated] [datetime] NOT NULL,
 CONSTRAINT [participant_SORegistryHistory_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[StorageBinsXOptions]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[StorageBinsXOptions](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[xValue] [varchar](5) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_StorageBinsXOptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[StorageBinsYOptions]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[StorageBinsYOptions](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[yValue] [varchar](5) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [participant_StorageBinsYOptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[TaskActivityLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[TaskActivityLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NOT NULL,
	[activityType] [varchar](250) NOT NULL,
	[activityDescription] [varchar](250) NULL,
	[timeCreated] [datetime] NOT NULL,
	[status] [varchar](250) NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [participant].[Tasks]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participantId] [int] NULL,
	[taskTypeId] [int] NULL,
	[title] [nvarchar](50) NOT NULL,
	[dueDate] [datetime] NULL,
	[staffId] [int] NULL,
	[assignerId] [int] NULL,
	[priority] [int] NULL,
	[statusId] [int] NULL,
	[notes] [nvarchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[completedDate] [datetime] NULL,
 CONSTRAINT [PK_Tasks_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ActivityLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ActivityLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[activityType] [varchar](250) NOT NULL,
	[activityDescription] [varchar](1000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[referenceId] [int] NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Attendance_KPI_PreviousSeason]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Attendance_KPI_PreviousSeason](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[seasonId] [int] NOT NULL,
	[active_Congregations] [int] NULL,
	[active_Participants] [int] NULL,
	[totalBeds] [int] NULL,
	[nov_attendance] [int] NULL,
	[dec_attendance] [int] NULL,
	[jan_attendance] [int] NULL,
	[feb_attendance] [int] NULL,
	[march_attendance] [int] NULL,
 CONSTRAINT [shelter_Attendance_KPI_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ColdWeatherReportData]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ColdWeatherReportData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](200) NOT NULL,
	[year] [int] NOT NULL,
	[monthDate] [datetime] NOT NULL,
	[dayOfWeek] [varchar](10) NOT NULL,
	[ghBeds] [int] NULL,
	[ghUtilization] [int] NULL,
	[congregationalBeds] [int] NULL,
	[congregationalBedsUtilization] [int] NULL,
	[totalBedsCapacityHMS] [int] NULL,
	[totalBedsUtilizedHMS] [int] NULL,
	[addedBeds] [int] NULL,
	[unUtilizedBeds] [int] NULL,
	[notes] [varchar](500) NULL,
	[isCold] [bit] NOT NULL,
	[overflowShelter] [int] NULL,
 CONSTRAINT [PK_ColdWeatherReportData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ColdWeatherReportSettings]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ColdWeatherReportSettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[settingName] [nvarchar](200) NOT NULL,
	[settingValue] [int] NOT NULL,
 CONSTRAINT [PK_ColdWeatherReportSettings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[CongregationLog]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[CongregationLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[actionDate] [datetime] NOT NULL,
	[actionBy] [int] NULL,
	[action] [varchar](50) NULL,
	[actionFields] [varchar](500) NULL,
	[userName] [varchar](250) NULL,
 CONSTRAINT [PK_CongregationLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Coordinator]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Coordinator](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[humanId] [int] NULL,
	[locationId] [int] NOT NULL,
	[isPrimary] [bit] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](5000) NULL,
 CONSTRAINT [shelter_Coordinator_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Frequency]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Frequency](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[frequencyTypeId] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_Frequency_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[FrequencyType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[FrequencyType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[frequencyType] [varchar](30) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_FrequencyType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Gender]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[genderAccepted] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[HostLocationType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[HostLocationType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[HostLocationType] [varchar](30) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_HostLocationType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[HostMore]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[HostMore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HostMoreOption] [nvarchar](30) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_HostMore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[HostMoreLocation]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[HostMoreLocation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[seasonId] [int] NOT NULL,
	[hostMoreId] [int] NOT NULL,
 CONSTRAINT [PK_hostMoreCongregation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Location]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Location](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[congregationId] [int] NOT NULL,
	[hostLocal] [bit] NULL,
	[locationName] [varchar](100) NOT NULL,
	[addressLine1] [nvarchar](70) NOT NULL,
	[addressLine2] [nvarchar](70) NULL,
	[city] [varchar](30) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[zipCode] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_Location_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[LocationNotes]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[LocationNotes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[note] [varchar](1000) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_LocationNotes_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[LocationRegistrationDetails]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[LocationRegistrationDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[seasonId] [int] NOT NULL,
	[genderId] [int] NULL,
	[transportTypeId] [int] NULL,
	[transportCapacity] [int] NULL,
	[frequencyTypeId] [int] NULL,
	[hostLocationTypeId] [int] NOT NULL,
	[nights] [tinyint] NULL,
	[beds] [int] NOT NULL,
	[accessible] [bit] NULL,
	[families] [bit] NULL,
	[extraShortNotice] [bit] NULL,
	[stairs] [bit] NULL,
	[smoking] [bit] NULL,
	[reminderCall] [bit] NULL,
	[showers] [bit] NULL,
	[clothing] [bit] NULL,
	[laundry] [bit] NULL,
	[sackLunches] [bit] NULL,
	[breakfast] [bit] NULL,
	[dinner] [bit] NULL,
	[haircuts] [bit] NULL,
	[hygieneItems] [bit] NULL,
	[otherService] [bit] NULL,
	[otherServiceList] [varchar](100) NULL,
	[serviceNotes] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[notes] [varchar](3000) NULL,
	[partners] [varchar](300) NULL,
	[scheduleComments] [varchar](3000) NULL,
	[otherHostMore] [varchar](100) NULL,
	[bedsProjected] [int] NULL,
	[bedsActual] [int] NULL,
	[dateSelectionPattern] [int] NULL,
	[dateSelectionDays] [varchar](20) NULL,
	[scheduleDaysOfTheYear] [varchar](3000) NULL,
	[congregationStreet] [varchar](80) NULL,
	[congregationStreet2] [varchar](80) NULL,
	[congregationCity] [varchar](80) NULL,
	[congregationState] [varchar](80) NULL,
	[congregationZip] [int] NULL,
	[congregationPhone] [varchar](80) NULL,
	[congregationProviderId] [int] NULL,
	[hostLocationStreet] [varchar](80) NULL,
	[hostLocationStreet2] [varchar](80) NULL,
	[hostLocationCity] [varchar](80) NULL,
	[hostLocationState] [varchar](80) NULL,
	[hostLocationZip] [int] NULL,
	[hostLocal] [bit] NULL,
	[primaryCoordHumanId] [int] NULL,
	[primaryCoordNotes] [varchar](5000) NULL,
	[primaryCoordPrefCommunication] [varchar](40) NULL,
	[secondaryCoordHumanId] [int] NULL,
	[secondaryCoordNotes] [varchar](5000) NULL,
	[secondaryCoordPrefCommunication] [varchar](40) NULL,
	[hostMoreIds] [varchar](3000) NULL,
	[pickupTime] [varchar](10) NULL,
 CONSTRAINT [PK_LocationRegistrationDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[LocationSeasonal]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[LocationSeasonal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[seasonId] [int] NOT NULL,
	[genderId] [int] NULL,
	[transportId] [int] NULL,
	[frequencyId] [int] NULL,
	[hostLocationTypeId] [int] NOT NULL,
	[nights] [tinyint] NULL,
	[beds] [int] NOT NULL,
	[accessible] [bit] NULL,
	[families] [bit] NULL,
	[extraShortNotice] [bit] NULL,
	[stairs] [bit] NULL,
	[smoking] [bit] NULL,
	[reminderCall] [bit] NULL,
	[showers] [bit] NULL,
	[clothing] [bit] NULL,
	[laundry] [bit] NULL,
	[sackLunches] [bit] NULL,
	[breakfast] [bit] NULL,
	[dinner] [bit] NULL,
	[haircuts] [bit] NULL,
	[hygieneItems] [bit] NULL,
	[otherService] [bit] NULL,
	[otherServiceList] [varchar](100) NULL,
	[serviceNotes] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[notes] [varchar](3000) NULL,
	[partners] [varchar](300) NULL,
	[scheduleComments] [varchar](3000) NULL,
	[otherHostMore] [varchar](100) NULL,
	[bedsProjected] [int] NULL,
	[bedsActual] [int] NULL,
	[dateSelectionPattern] [int] NULL,
	[dateSelectionDays] [varchar](20) NULL,
	[pickupTime] [varchar](10) NULL,
	[BedsCapacityVsAllotmentEmail] [datetime] NULL,
	[IncompleteRegistrationEmail] [datetime] NULL,
 CONSTRAINT [PK_LocationPreference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Priority]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Priority](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[priority] [nvarchar](50) NULL,
 CONSTRAINT [PK_shelter.Priority] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Schedule]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Schedule](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[seasonId] [int] NOT NULL,
	[genderId] [int] NOT NULL,
	[totalBeds] [int] NOT NULL,
	[reservedBeds] [int] NOT NULL,
	[dayOfYear] [int] NOT NULL,
	[notes] [varchar](3000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeUpdated] [datetime] NULL,
	[timeCancelled] [datetime] NULL,
	[timeRetired] [datetime] NULL,
	[HostLocationType] [varchar](50) NULL,
 CONSTRAINT [shelter_Schedule_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Settings]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[settingName] [nvarchar](50) NOT NULL,
	[settingValue] [nvarchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ShelterTickets]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ShelterTickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datePrinted] [date] NOT NULL,
	[regularTickets] [int] NOT NULL,
	[plusTickets] [int] NOT NULL,
	[doublePlusTickets] [int] NOT NULL,
	[ifRoomTickets] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_ShelterTickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Status]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_SupportStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Support]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Support](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[locationId] [int] NOT NULL,
	[ticketTypeId] [int] NOT NULL,
	[dueDate] [datetime] NULL,
	[completedDate] [datetime] NULL,
	[statusId] [int] NULL,
	[congregationNotes] [nvarchar](100) NULL,
	[HMSNotes] [nvarchar](100) NULL,
	[staffId] [int] NULL,
	[priority] [int] NULL,
	[Contact] [nvarchar](100) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_Support] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[SupportStatus]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[SupportStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_Support_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Tasks]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[taskTypeId] [int] NULL,
	[title] [nvarchar](50) NOT NULL,
	[dueDate] [datetime] NULL,
	[staffId] [int] NULL,
	[priority] [int] NULL,
	[statusId] [int] NULL,
	[notes] [nvarchar](max) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[contact] [nvarchar](255) NULL,
	[completedDate] [datetime] NULL,
	[assignerId] [int] NULL,
	[participantId] [int] NULL,
 CONSTRAINT [PK_Tasks_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [shelter].[taskType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[taskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_TaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[ticketType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[ticketType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [PK_TicketType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[TotalBedsPerCongregation]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[TotalBedsPerCongregation](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationName] [varchar](100) NOT NULL,
	[seasonId] [int] NOT NULL,
	[totalBeds] [int] NOT NULL,
 CONSTRAINT [shelter_TotalBedsPerCongregation_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[Transport]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[Transport](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[transportTypeId] [int] NOT NULL,
	[capacity] [int] NOT NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_Transport_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[TransportType]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[TransportType](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[transportType] [varchar](100) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [shelter_TransportType_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [shelter].[WaitListSnapshot]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shelter].[WaitListSnapshot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalPeopleOnWaitlist] [int] NOT NULL,
	[snapshotDate] [date] NOT NULL,
 CONSTRAINT [PK_WaitListSnapshot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [staff].[Places]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staff].[Places](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[siteId] [int] NOT NULL,
	[placeName] [varchar](200) NOT NULL,
	[placeDescription] [varchar](5000) NULL,
	[isWS] [bit] NOT NULL,
	[locationId] [int] NULL,
	[street] [varchar](70) NULL,
	[city] [varchar](30) NULL,
	[state] [varchar](20) NULL,
	[zipCode] [int] NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
	[facilitatorId] [int] NULL,
 CONSTRAINT [staff_Places_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [staff].[Sites]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staff].[Sites](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[siteName] [varchar](200) NOT NULL,
	[siteDescription] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [staff_Sites_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [staff].[Skills]    Script Date: 1/30/2025 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staff].[Skills](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[skillName] [varchar](200) NOT NULL,
	[skillDescription] [varchar](5000) NULL,
	[timeCreated] [datetime] NOT NULL,
	[timeRetired] [datetime] NULL,
 CONSTRAINT [staff_Skills_id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [calendar].[CalendarEventsPointCounts] ADD  DEFAULT ((0)) FOR [points]
GO
ALTER TABLE [dbo].[APICalls] ADD  CONSTRAINT [DF_logger.APICalls_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [humans].[Human] ADD  CONSTRAINT [humans_HumanTest_dob_DF]  DEFAULT ('1900-01-01') FOR [dob]
GO
ALTER TABLE [interaction].[Program] ADD  CONSTRAINT [DF__Program__isResid__3B6BB5BF]  DEFAULT (NULL) FOR [isResidential]
GO
ALTER TABLE [lodging].[BedLog] ADD  DEFAULT ((-1)) FOR [reservationId]
GO
ALTER TABLE [lodging].[Reservation] ADD  DEFAULT ((0)) FOR [prescribedControlledSubstance]
GO
ALTER TABLE [participant].[AutomatedTaskRules] ADD  CONSTRAINT [DF_AutomatedTaskRules_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[AutomatedTaskType] ADD  CONSTRAINT [DF_AutomatedTaskType_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[ChronicHomelssHistory] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[EventAttendeeCategories] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [participant].[EventCategories] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [participant].[Events] ADD  DEFAULT ((0)) FOR [allDayEvent]
GO
ALTER TABLE [participant].[Events] ADD  DEFAULT ((0)) FOR [points]
GO
ALTER TABLE [participant].[Participant] ADD  CONSTRAINT [DF__Participa__suspe__2D7CBDC4]  DEFAULT ((0)) FOR [suspensionActive]
GO
ALTER TABLE [participant].[ProgramsHistory] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[ResidentialDashboard] ADD  DEFAULT ((0)) FOR [is_manual]
GO
ALTER TABLE [participant].[SORegistryHistory] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[StorageBinsXOptions] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[StorageBinsYOptions] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [participant].[TaskActivityLog] ADD  DEFAULT (NULL) FOR [activityDescription]
GO
ALTER TABLE [participant].[Tasks] ADD  CONSTRAINT [DF_Tasks_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[ActivityLog] ADD  DEFAULT (NULL) FOR [activityDescription]
GO
ALTER TABLE [shelter].[ColdWeatherReportData] ADD  DEFAULT ((0)) FOR [isCold]
GO
ALTER TABLE [shelter].[HostMore] ADD  CONSTRAINT [DF_HostMore_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[LocationSeasonal] ADD  CONSTRAINT [DF_LocationSeasonal_hostLocationTypeId]  DEFAULT ((0)) FOR [hostLocationTypeId]
GO
ALTER TABLE [shelter].[LocationSeasonal] ADD  CONSTRAINT [DF_LocationPreference_nights]  DEFAULT ((127)) FOR [nights]
GO
ALTER TABLE [shelter].[LocationSeasonal] ADD  CONSTRAINT [DF_LocationPreference_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[Schedule] ADD  CONSTRAINT [DF_Schedule_reservedBeds]  DEFAULT ((0)) FOR [reservedBeds]
GO
ALTER TABLE [shelter].[ShelterTickets] ADD  DEFAULT ((0)) FOR [regularTickets]
GO
ALTER TABLE [shelter].[ShelterTickets] ADD  DEFAULT ((0)) FOR [plusTickets]
GO
ALTER TABLE [shelter].[ShelterTickets] ADD  DEFAULT ((0)) FOR [doublePlusTickets]
GO
ALTER TABLE [shelter].[ShelterTickets] ADD  DEFAULT ((0)) FOR [ifRoomTickets]
GO
ALTER TABLE [shelter].[ShelterTickets] ADD  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[Status] ADD  CONSTRAINT [DF_SupportStatus_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[Support] ADD  CONSTRAINT [DF_Support_statusId]  DEFAULT ((2)) FOR [statusId]
GO
ALTER TABLE [shelter].[Support] ADD  CONSTRAINT [DF_Support_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[SupportStatus] ADD  CONSTRAINT [DF_Support_Status_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[Tasks] ADD  CONSTRAINT [DF_Tasks_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[taskType] ADD  CONSTRAINT [DF_TaskType_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[ticketType] ADD  CONSTRAINT [DF_TicketType_timeCreated]  DEFAULT (getdate()) FOR [timeCreated]
GO
ALTER TABLE [shelter].[WaitList] ADD  CONSTRAINT [DF_WaitList_dateadded]  DEFAULT (getdate()) FOR [dateadded]
GO
ALTER TABLE [calendar].[CalendarEvents]  WITH CHECK ADD  CONSTRAINT [FK_CalendarEvents_calendars] FOREIGN KEY([calendarId])
REFERENCES [calendar].[calendars] ([id])
GO
ALTER TABLE [calendar].[CalendarEvents] CHECK CONSTRAINT [FK_CalendarEvents_calendars]
GO
ALTER TABLE [calendar].[EventAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendance_CalendarEvents] FOREIGN KEY([eventId])
REFERENCES [calendar].[CalendarEvents] ([id])
GO
ALTER TABLE [calendar].[EventAttendance] CHECK CONSTRAINT [FK_EventAttendance_CalendarEvents]
GO
ALTER TABLE [calendar].[EventAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendance_EventAttendance] FOREIGN KEY([id])
REFERENCES [calendar].[EventAttendance] ([id])
GO
ALTER TABLE [calendar].[EventAttendance] CHECK CONSTRAINT [FK_EventAttendance_EventAttendance]
GO
ALTER TABLE [calendar].[EventAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EventAttendance_Human] FOREIGN KEY([humanId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [calendar].[EventAttendance] CHECK CONSTRAINT [FK_EventAttendance_Human]
GO
ALTER TABLE [interaction].[ProgramProviderTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProgramProviderTypes_ProgramID] FOREIGN KEY([programId])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [interaction].[ProgramProviderTypes] CHECK CONSTRAINT [FK_ProgramProviderTypes_ProgramID]
GO
ALTER TABLE [interaction].[ProgramProviderTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProgramProviderTypes_ProviderTypeId] FOREIGN KEY([providerTypeId])
REFERENCES [organization].[ProviderType] ([id])
GO
ALTER TABLE [interaction].[ProgramProviderTypes] CHECK CONSTRAINT [FK_ProgramProviderTypes_ProviderTypeId]
GO
ALTER TABLE [interaction].[ProgramService]  WITH CHECK ADD  CONSTRAINT [interaction_ProgramService_programId_FK] FOREIGN KEY([programId])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [interaction].[ProgramService] CHECK CONSTRAINT [interaction_ProgramService_programId_FK]
GO
ALTER TABLE [interaction].[ProgramService]  WITH CHECK ADD  CONSTRAINT [interaction_ProgramService_serviceId_FK] FOREIGN KEY([serviceId])
REFERENCES [interaction].[Service] ([id])
GO
ALTER TABLE [interaction].[ProgramService] CHECK CONSTRAINT [interaction_ProgramService_serviceId_FK]
GO
ALTER TABLE [lodging].[Bed]  WITH CHECK ADD  CONSTRAINT [lodging_Bed_roomId_FK] FOREIGN KEY([roomId])
REFERENCES [lodging].[Room] ([id])
GO
ALTER TABLE [lodging].[Bed] CHECK CONSTRAINT [lodging_Bed_roomId_FK]
GO
ALTER TABLE [lodging].[BedLog]  WITH CHECK ADD  CONSTRAINT [lodging_BedLog_bedId_FK] FOREIGN KEY([bedId])
REFERENCES [lodging].[Bed] ([id])
GO
ALTER TABLE [lodging].[BedLog] CHECK CONSTRAINT [lodging_BedLog_bedId_FK]
GO
ALTER TABLE [lodging].[BedLog]  WITH CHECK ADD  CONSTRAINT [lodging_BedLog_exitDestinationId_FK] FOREIGN KEY([exitDestinationId])
REFERENCES [lodging].[ExitDestination] ([id])
GO
ALTER TABLE [lodging].[BedLog] CHECK CONSTRAINT [lodging_BedLog_exitDestinationId_FK]
GO
ALTER TABLE [lodging].[BedLog]  WITH CHECK ADD  CONSTRAINT [lodging_BedLog_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [lodging].[BedLog] CHECK CONSTRAINT [lodging_BedLog_participantId_FK]
GO
ALTER TABLE [lodging].[ExitDestination]  WITH CHECK ADD  CONSTRAINT [lodging_ExitDestination_exitDestinationTypeId_FK] FOREIGN KEY([destinationTypeId])
REFERENCES [lodging].[ExitDestinationType] ([id])
GO
ALTER TABLE [lodging].[ExitDestination] CHECK CONSTRAINT [lodging_ExitDestination_exitDestinationTypeId_FK]
GO
ALTER TABLE [lodging].[Facility]  WITH CHECK ADD  CONSTRAINT [lodging_Facility_facilityTypeId_FK] FOREIGN KEY([facilityTypeId])
REFERENCES [lodging].[FacilityType] ([id])
GO
ALTER TABLE [lodging].[Facility] CHECK CONSTRAINT [lodging_Facility_facilityTypeId_FK]
GO
ALTER TABLE [lodging].[Reservation]  WITH CHECK ADD  CONSTRAINT [lodging_Reservation_bedId_FK] FOREIGN KEY([bedId])
REFERENCES [lodging].[Bed] ([id])
GO
ALTER TABLE [lodging].[Reservation] CHECK CONSTRAINT [lodging_Reservation_bedId_FK]
GO
ALTER TABLE [lodging].[Reservation]  WITH CHECK ADD  CONSTRAINT [lodging_Reservation_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [lodging].[Reservation] CHECK CONSTRAINT [lodging_Reservation_participantId_FK]
GO
ALTER TABLE [lodging].[Room]  WITH CHECK ADD  CONSTRAINT [lodging_Room_facilityId_FK] FOREIGN KEY([facilityId])
REFERENCES [lodging].[Facility] ([id])
GO
ALTER TABLE [lodging].[Room] CHECK CONSTRAINT [lodging_Room_facilityId_FK]
GO
ALTER TABLE [organization].[ApplicantStatus]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantStatus_EmployerNew] FOREIGN KEY([employerId])
REFERENCES [organization].[EmployerNew] ([id])
GO
ALTER TABLE [organization].[ApplicantStatus] CHECK CONSTRAINT [FK_ApplicantStatus_EmployerNew]
GO
ALTER TABLE [organization].[ApplicantStatus]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantStatus_Participant] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [organization].[ApplicantStatus] CHECK CONSTRAINT [FK_ApplicantStatus_Participant]
GO
ALTER TABLE [organization].[CommunityPartner]  WITH CHECK ADD  CONSTRAINT [organization_CommunityPartner_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[CommunityPartner] CHECK CONSTRAINT [organization_CommunityPartner_providerId_FK]
GO
ALTER TABLE [organization].[Congregation]  WITH CHECK ADD  CONSTRAINT [organization_Congregation_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[Congregation] CHECK CONSTRAINT [organization_Congregation_providerId_FK]
GO
ALTER TABLE [organization].[EmployerContacts]  WITH CHECK ADD  CONSTRAINT [organization_EmployerContacts_employerId_FK] FOREIGN KEY([employerId])
REFERENCES [organization].[EmployerNew] ([id])
GO
ALTER TABLE [organization].[EmployerContacts] CHECK CONSTRAINT [organization_EmployerContacts_employerId_FK]
GO
ALTER TABLE [organization].[EmployerNew]  WITH CHECK ADD  CONSTRAINT [organization_EmployerNew_BusinessDescriptionID_FK] FOREIGN KEY([BusinessDescriptionID])
REFERENCES [organization].[BusinessDescription] ([BusinessDescriptionID])
GO
ALTER TABLE [organization].[EmployerNew] CHECK CONSTRAINT [organization_EmployerNew_BusinessDescriptionID_FK]
GO
ALTER TABLE [organization].[EmployerNewQualifier]  WITH CHECK ADD  CONSTRAINT [organization_EmployerNewQualifier_EmployerNewId_FK] FOREIGN KEY([EmployerNewId])
REFERENCES [organization].[EmployerNew] ([id])
GO
ALTER TABLE [organization].[EmployerNewQualifier] CHECK CONSTRAINT [organization_EmployerNewQualifier_EmployerNewId_FK]
GO
ALTER TABLE [organization].[EmployerNewQualifier]  WITH CHECK ADD  CONSTRAINT [organization_EmployerNewQualifier_QualifierId_FK] FOREIGN KEY([QualifierId])
REFERENCES [organization].[Qualifier] ([ID])
GO
ALTER TABLE [organization].[EmployerNewQualifier] CHECK CONSTRAINT [organization_EmployerNewQualifier_QualifierId_FK]
GO
ALTER TABLE [organization].[EmployerNotes]  WITH CHECK ADD  CONSTRAINT [organization_EmployerNotes_employerId_FK] FOREIGN KEY([employerId])
REFERENCES [organization].[EmployerNew] ([id])
GO
ALTER TABLE [organization].[EmployerNotes] CHECK CONSTRAINT [organization_EmployerNotes_employerId_FK]
GO
ALTER TABLE [organization].[Housing]  WITH CHECK ADD  CONSTRAINT [organization_Housing_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[Housing] CHECK CONSTRAINT [organization_Housing_providerId_FK]
GO
ALTER TABLE [organization].[Insurance]  WITH CHECK ADD  CONSTRAINT [organization_Insurance_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[Insurance] CHECK CONSTRAINT [organization_Insurance_providerId_FK]
GO
ALTER TABLE [organization].[JobParticipant]  WITH CHECK ADD  CONSTRAINT [organization_JobParticipant_jobId_FK] FOREIGN KEY([jobId])
REFERENCES [organization].[Job] ([id])
GO
ALTER TABLE [organization].[JobParticipant] CHECK CONSTRAINT [organization_JobParticipant_jobId_FK]
GO
ALTER TABLE [organization].[JobParticipant]  WITH CHECK ADD  CONSTRAINT [organization_JobParticipant_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [organization].[JobParticipant] CHECK CONSTRAINT [organization_JobParticipant_participantId_FK]
GO
ALTER TABLE [organization].[JobParticipantStatus]  WITH CHECK ADD  CONSTRAINT [organization_JobParticipantStatus_jobParticipantId_FK] FOREIGN KEY([jobParticipantId])
REFERENCES [organization].[JobParticipant] ([id])
GO
ALTER TABLE [organization].[JobParticipantStatus] CHECK CONSTRAINT [organization_JobParticipantStatus_jobParticipantId_FK]
GO
ALTER TABLE [organization].[JobQualifier]  WITH CHECK ADD  CONSTRAINT [organization_JobQualifier_jobId_FK] FOREIGN KEY([jobId])
REFERENCES [organization].[Job] ([id])
GO
ALTER TABLE [organization].[JobQualifier] CHECK CONSTRAINT [organization_JobQualifier_jobId_FK]
GO
ALTER TABLE [organization].[LawEnforcement]  WITH CHECK ADD  CONSTRAINT [organization_LawEnforcement_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[LawEnforcement] CHECK CONSTRAINT [organization_LawEnforcement_providerId_FK]
GO
ALTER TABLE [organization].[Medical]  WITH CHECK ADD  CONSTRAINT [organization_Medical_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[Medical] CHECK CONSTRAINT [organization_Medical_providerId_FK]
GO
ALTER TABLE [organization].[Provider]  WITH CHECK ADD  CONSTRAINT [organization_Provider_providerTypeId_FK] FOREIGN KEY([providerTypeId])
REFERENCES [organization].[ProviderType] ([id])
GO
ALTER TABLE [organization].[Provider] CHECK CONSTRAINT [organization_Provider_providerTypeId_FK]
GO
ALTER TABLE [organization].[ProviderContacts]  WITH CHECK ADD  CONSTRAINT [organization_ProviderContacts_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[ProviderContacts] CHECK CONSTRAINT [organization_ProviderContacts_providerId_FK]
GO
ALTER TABLE [organization].[ProviderHuman]  WITH CHECK ADD  CONSTRAINT [organization_ProviderHuman_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[ProviderHuman] CHECK CONSTRAINT [organization_ProviderHuman_providerId_FK]
GO
ALTER TABLE [organization].[ProviderNotes]  WITH CHECK ADD  CONSTRAINT [organization_ProviderDetail_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [organization].[ProviderNotes] CHECK CONSTRAINT [organization_ProviderDetail_providerId_FK]
GO
ALTER TABLE [organization].[Vendor]  WITH CHECK ADD  CONSTRAINT [organization_Vendor_BusinessDescriptionID_FK] FOREIGN KEY([BusinessDescriptionID])
REFERENCES [organization].[VendorBusinessDescription] ([BusinessDescriptionID])
GO
ALTER TABLE [organization].[Vendor] CHECK CONSTRAINT [organization_Vendor_BusinessDescriptionID_FK]
GO
ALTER TABLE [organization].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [organization_VendorContacts_vendorId_FK] FOREIGN KEY([vendorId])
REFERENCES [organization].[Vendor] ([id])
GO
ALTER TABLE [organization].[VendorContacts] CHECK CONSTRAINT [organization_VendorContacts_vendorId_FK]
GO
ALTER TABLE [organization].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [organization_VendorNotes_vendorId_FK] FOREIGN KEY([vendorId])
REFERENCES [organization].[Vendor] ([id])
GO
ALTER TABLE [organization].[VendorNotes] CHECK CONSTRAINT [organization_VendorNotes_vendorId_FK]
GO
ALTER TABLE [participant].[CampusStore]  WITH CHECK ADD  CONSTRAINT [participant_CampusStore_ParticipantId_FK] FOREIGN KEY([ParticipantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[CampusStore] CHECK CONSTRAINT [participant_CampusStore_ParticipantId_FK]
GO
ALTER TABLE [participant].[CaseManager]  WITH CHECK ADD  CONSTRAINT [participant_CaseManager_EmployeeId_FK] FOREIGN KEY([EmployeeId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[CaseManager] CHECK CONSTRAINT [participant_CaseManager_EmployeeId_FK]
GO
ALTER TABLE [participant].[CaseNotes]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotes_employeeId_FK] FOREIGN KEY([employeeId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[CaseNotes] CHECK CONSTRAINT [participant_CaseNotes_employeeId_FK]
GO
ALTER TABLE [participant].[CaseNotes]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotes_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[CaseNotes] CHECK CONSTRAINT [participant_CaseNotes_participantId_FK]
GO
ALTER TABLE [participant].[CaseNotesServices]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotesServices_CaseNotesId_FK] FOREIGN KEY([CaseNotesId])
REFERENCES [participant].[CaseNotes] ([id])
GO
ALTER TABLE [participant].[CaseNotesServices] CHECK CONSTRAINT [participant_CaseNotesServices_CaseNotesId_FK]
GO
ALTER TABLE [participant].[CaseNotesServices]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotesServices_ServicesId_FK] FOREIGN KEY([ServicesId])
REFERENCES [participant].[services] ([id])
GO
ALTER TABLE [participant].[CaseNotesServices] CHECK CONSTRAINT [participant_CaseNotesServices_ServicesId_FK]
GO
ALTER TABLE [participant].[CaseNotesTypes]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotesTypes_CaseNotesId_FK] FOREIGN KEY([CaseNotesId])
REFERENCES [participant].[CaseNotes] ([id])
GO
ALTER TABLE [participant].[CaseNotesTypes] CHECK CONSTRAINT [participant_CaseNotesTypes_CaseNotesId_FK]
GO
ALTER TABLE [participant].[CaseNotesTypes]  WITH CHECK ADD  CONSTRAINT [participant_CaseNotesTypes_CaseNoteTypeID_FK] FOREIGN KEY([CaseNoteTypeID])
REFERENCES [participant].[CaseNoteType] ([id])
GO
ALTER TABLE [participant].[CaseNotesTypes] CHECK CONSTRAINT [participant_CaseNotesTypes_CaseNoteTypeID_FK]
GO
ALTER TABLE [participant].[ChronicHomelssHistory]  WITH CHECK ADD  CONSTRAINT [participant_ChronicHomelssHistory_ParticipantID_FK] FOREIGN KEY([ParticipantID])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[ChronicHomelssHistory] CHECK CONSTRAINT [participant_ChronicHomelssHistory_ParticipantID_FK]
GO
ALTER TABLE [participant].[DrugScreenLog]  WITH CHECK ADD  CONSTRAINT [participant_DrugScreenLog_drugScreenTypeId_FK] FOREIGN KEY([drugScreenTypeId])
REFERENCES [participant].[DrugScreenType] ([id])
GO
ALTER TABLE [participant].[DrugScreenLog] CHECK CONSTRAINT [participant_DrugScreenLog_drugScreenTypeId_FK]
GO
ALTER TABLE [participant].[DrugScreenLog]  WITH CHECK ADD  CONSTRAINT [participant_DrugScreenLog_employeeId_FK] FOREIGN KEY([employeeId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[DrugScreenLog] CHECK CONSTRAINT [participant_DrugScreenLog_employeeId_FK]
GO
ALTER TABLE [participant].[DrugScreenLog]  WITH CHECK ADD  CONSTRAINT [participant_DrugScreenLog_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[DrugScreenLog] CHECK CONSTRAINT [participant_DrugScreenLog_participantId_FK]
GO
ALTER TABLE [participant].[DrugScreenLog]  WITH CHECK ADD  CONSTRAINT [participant_DrugScreenLog_providerId_FK] FOREIGN KEY([providerId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[DrugScreenLog] CHECK CONSTRAINT [participant_DrugScreenLog_providerId_FK]
GO
ALTER TABLE [participant].[DrugScreenLog]  WITH CHECK ADD  CONSTRAINT [participant_DrugScreenResonId_FK] FOREIGN KEY([drugscreenreasonid])
REFERENCES [participant].[DrugScreenReason] ([id])
GO
ALTER TABLE [participant].[DrugScreenLog] CHECK CONSTRAINT [participant_DrugScreenResonId_FK]
GO
ALTER TABLE [participant].[Enrollments]  WITH CHECK ADD  CONSTRAINT [participant_Enrollments_participantId_FK] FOREIGN KEY([particpantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[Enrollments] CHECK CONSTRAINT [participant_Enrollments_participantId_FK]
GO
ALTER TABLE [participant].[Enrollments]  WITH CHECK ADD  CONSTRAINT [participant_Enrollments_programId_FK] FOREIGN KEY([programId])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [participant].[Enrollments] CHECK CONSTRAINT [participant_Enrollments_programId_FK]
GO
ALTER TABLE [participant].[EventAttendance]  WITH CHECK ADD  CONSTRAINT [participant_EventAttendance_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[EventAttendance] CHECK CONSTRAINT [participant_EventAttendance_participantId_FK]
GO
ALTER TABLE [participant].[EventAttendance]  WITH CHECK ADD  CONSTRAINT [participant_EventAttendance_scheduleId_FK] FOREIGN KEY([scheduleId])
REFERENCES [participant].[EventSchedule] ([id])
GO
ALTER TABLE [participant].[EventAttendance] CHECK CONSTRAINT [participant_EventAttendance_scheduleId_FK]
GO
ALTER TABLE [participant].[EventNotes]  WITH CHECK ADD  CONSTRAINT [participant_EventNotes_eventId_FK] FOREIGN KEY([eventId])
REFERENCES [participant].[Events] ([id])
GO
ALTER TABLE [participant].[EventNotes] CHECK CONSTRAINT [participant_EventNotes_eventId_FK]
GO
ALTER TABLE [participant].[Events]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantEvents_categories] FOREIGN KEY([categoryId])
REFERENCES [participant].[EventCategories] ([id])
GO
ALTER TABLE [participant].[Events] CHECK CONSTRAINT [FK_ParticipantEvents_categories]
GO
ALTER TABLE [participant].[Events]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantEvents_location] FOREIGN KEY([locationId])
REFERENCES [participant].[EventLocations] ([id])
GO
ALTER TABLE [participant].[Events] CHECK CONSTRAINT [FK_ParticipantEvents_location]
GO
ALTER TABLE [participant].[EventSchedule]  WITH CHECK ADD  CONSTRAINT [participant_EventsSchedule_eventId_FK] FOREIGN KEY([eventId])
REFERENCES [participant].[Events] ([id])
GO
ALTER TABLE [participant].[EventSchedule] CHECK CONSTRAINT [participant_EventsSchedule_eventId_FK]
GO
ALTER TABLE [participant].[EventSelectedAttendeeCategories]  WITH CHECK ADD  CONSTRAINT [participant_EventSelectedAttendeeCategories_eventId_FK] FOREIGN KEY([eventId])
REFERENCES [participant].[Events] ([id])
GO
ALTER TABLE [participant].[EventSelectedAttendeeCategories] CHECK CONSTRAINT [participant_EventSelectedAttendeeCategories_eventId_FK]
GO
ALTER TABLE [participant].[EventSelectedFacilitators]  WITH CHECK ADD  CONSTRAINT [participant_FacilitatorOfEvents_eventId_FK] FOREIGN KEY([eventId])
REFERENCES [participant].[Events] ([id])
GO
ALTER TABLE [participant].[EventSelectedFacilitators] CHECK CONSTRAINT [participant_FacilitatorOfEvents_eventId_FK]
GO
ALTER TABLE [participant].[EventSheduleSelectedFacilitators]  WITH CHECK ADD  CONSTRAINT [participant_FacilitatorOfEvents_scheduleId_FK] FOREIGN KEY([scheduleId])
REFERENCES [participant].[EventSchedule] ([id])
GO
ALTER TABLE [participant].[EventSheduleSelectedFacilitators] CHECK CONSTRAINT [participant_FacilitatorOfEvents_scheduleId_FK]
GO
ALTER TABLE [participant].[EventWeeklyScheduleNote]  WITH CHECK ADD  CONSTRAINT [participant_EventWeeklyScheduleNote_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [participant].[EventLocations] ([id])
GO
ALTER TABLE [participant].[EventWeeklyScheduleNote] CHECK CONSTRAINT [participant_EventWeeklyScheduleNote_locationId_FK]
GO
ALTER TABLE [participant].[IncidentAttendeeLog]  WITH CHECK ADD  CONSTRAINT [participant_IncidentAttendeeLog_humanId_FK] FOREIGN KEY([humanId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [participant].[IncidentAttendeeLog] CHECK CONSTRAINT [participant_IncidentAttendeeLog_humanId_FK]
GO
ALTER TABLE [participant].[IncidentAttendeeLog]  WITH CHECK ADD  CONSTRAINT [participant_IncidentAttendeeLog_incidentAttendeeTypeId_FK] FOREIGN KEY([incidentAttendeeTypeId])
REFERENCES [participant].[IncidentAttendeeType] ([id])
GO
ALTER TABLE [participant].[IncidentAttendeeLog] CHECK CONSTRAINT [participant_IncidentAttendeeLog_incidentAttendeeTypeId_FK]
GO
ALTER TABLE [participant].[IncidentAttendeeLog]  WITH CHECK ADD  CONSTRAINT [participant_IncidentAttendeeLog_incidentLogId_FK] FOREIGN KEY([incidentLogId])
REFERENCES [participant].[IncidentLog] ([id])
GO
ALTER TABLE [participant].[IncidentAttendeeLog] CHECK CONSTRAINT [participant_IncidentAttendeeLog_incidentLogId_FK]
GO
ALTER TABLE [participant].[IncidentLog]  WITH CHECK ADD FOREIGN KEY([IncidentLocationTypeID])
REFERENCES [participant].[IncidentLocationType] ([id])
GO
ALTER TABLE [participant].[IncidentLog]  WITH CHECK ADD  CONSTRAINT [participant_IncidentLog_employeeId_FK] FOREIGN KEY([employeeId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[IncidentLog] CHECK CONSTRAINT [participant_IncidentLog_employeeId_FK]
GO
ALTER TABLE [participant].[IncidentLog]  WITH CHECK ADD  CONSTRAINT [participant_incidentLog_ParticipantID_FK] FOREIGN KEY([ParticipantID])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[IncidentLog] CHECK CONSTRAINT [participant_incidentLog_ParticipantID_FK]
GO
ALTER TABLE [participant].[IncidentLogType]  WITH CHECK ADD  CONSTRAINT [participant_IncidentLogType_IncidentLogId_FK] FOREIGN KEY([IncidentLogId])
REFERENCES [participant].[IncidentLog] ([id])
GO
ALTER TABLE [participant].[IncidentLogType] CHECK CONSTRAINT [participant_IncidentLogType_IncidentLogId_FK]
GO
ALTER TABLE [participant].[IncidentLogType]  WITH CHECK ADD  CONSTRAINT [participant_IncidentLogType_IncidentTypeId_FK] FOREIGN KEY([IncidentTypeId])
REFERENCES [participant].[IncidentType] ([id])
GO
ALTER TABLE [participant].[IncidentLogType] CHECK CONSTRAINT [participant_IncidentLogType_IncidentTypeId_FK]
GO
ALTER TABLE [participant].[Referral]  WITH CHECK ADD  CONSTRAINT [participant_Referral_ParticipantId_FK] FOREIGN KEY([ParticipantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[Referral] CHECK CONSTRAINT [participant_Referral_ParticipantId_FK]
GO
ALTER TABLE [participant].[Referral]  WITH CHECK ADD  CONSTRAINT [participant_Referral_ProgramId_FK] FOREIGN KEY([ProgramId])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [participant].[Referral] CHECK CONSTRAINT [participant_Referral_ProgramId_FK]
GO
ALTER TABLE [participant].[Referral]  WITH CHECK ADD  CONSTRAINT [participant_Referral_ProviderId_FK] FOREIGN KEY([ProviderId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [participant].[Referral] CHECK CONSTRAINT [participant_Referral_ProviderId_FK]
GO
ALTER TABLE [participant].[Referral]  WITH CHECK ADD  CONSTRAINT [participant_Referral_statusId_FK] FOREIGN KEY([Status_Id])
REFERENCES [participant].[ReferralStatus] ([id])
GO
ALTER TABLE [participant].[Referral] CHECK CONSTRAINT [participant_Referral_statusId_FK]
GO
ALTER TABLE [participant].[Referral]  WITH CHECK ADD  CONSTRAINT [participant_Referral_typeId_FK] FOREIGN KEY([Type_Id])
REFERENCES [participant].[ReferralType] ([id])
GO
ALTER TABLE [participant].[Referral] CHECK CONSTRAINT [participant_Referral_typeId_FK]
GO
ALTER TABLE [participant].[ReferralLog]  WITH CHECK ADD  CONSTRAINT [participant_ReferralLog_ReferralId_FK] FOREIGN KEY([ReferralId])
REFERENCES [participant].[Referral] ([id])
GO
ALTER TABLE [participant].[ReferralLog] CHECK CONSTRAINT [participant_ReferralLog_ReferralId_FK]
GO
ALTER TABLE [participant].[ReferralLog]  WITH CHECK ADD  CONSTRAINT [participant_ReferralLog_ReferralStatus_Id_FK] FOREIGN KEY([ReferralStatus_ID])
REFERENCES [participant].[ReferralStatus] ([id])
GO
ALTER TABLE [participant].[ReferralLog] CHECK CONSTRAINT [participant_ReferralLog_ReferralStatus_Id_FK]
GO
ALTER TABLE [participant].[ReferralLog]  WITH CHECK ADD  CONSTRAINT [participant_ReferralLog_ReferralType_Id_FK] FOREIGN KEY([ReferralType_ID])
REFERENCES [participant].[ReferralType] ([id])
GO
ALTER TABLE [participant].[ReferralLog] CHECK CONSTRAINT [participant_ReferralLog_ReferralType_Id_FK]
GO
ALTER TABLE [participant].[ReinstatementLog]  WITH CHECK ADD  CONSTRAINT [participant_reinstatement_suspensionTypeId_FK] FOREIGN KEY([suspensionTypeId])
REFERENCES [participant].[SuspensionType] ([id])
GO
ALTER TABLE [participant].[ReinstatementLog] CHECK CONSTRAINT [participant_reinstatement_suspensionTypeId_FK]
GO
ALTER TABLE [participant].[ReinstatementLog]  WITH CHECK ADD  CONSTRAINT [participant_ReinstatementLog_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[ReinstatementLog] CHECK CONSTRAINT [participant_ReinstatementLog_participantId_FK]
GO
ALTER TABLE [participant].[ReinstatementLog]  WITH CHECK ADD  CONSTRAINT [participant_ReinstatementLog_suspensionId_FK] FOREIGN KEY([suspensionId])
REFERENCES [participant].[Suspension] ([id])
GO
ALTER TABLE [participant].[ReinstatementLog] CHECK CONSTRAINT [participant_ReinstatementLog_suspensionId_FK]
GO
ALTER TABLE [participant].[services]  WITH CHECK ADD  CONSTRAINT [participant_services_employeeId_FK] FOREIGN KEY([employeeId])
REFERENCES [staff].[Employee] ([id])
GO
ALTER TABLE [participant].[services] CHECK CONSTRAINT [participant_services_employeeId_FK]
GO
ALTER TABLE [participant].[services]  WITH CHECK ADD  CONSTRAINT [participant_services_InteractionServiceid_FK] FOREIGN KEY([Serviceid])
REFERENCES [interaction].[Service] ([id])
GO
ALTER TABLE [participant].[services] CHECK CONSTRAINT [participant_services_InteractionServiceid_FK]
GO
ALTER TABLE [participant].[services]  WITH CHECK ADD  CONSTRAINT [participant_services_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[services] CHECK CONSTRAINT [participant_services_participantId_FK]
GO
ALTER TABLE [participant].[services]  WITH CHECK ADD  CONSTRAINT [participant_services_programid_FK] FOREIGN KEY([programid])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [participant].[services] CHECK CONSTRAINT [participant_services_programid_FK]
GO
ALTER TABLE [participant].[SORegistryHistory]  WITH CHECK ADD  CONSTRAINT [participant_SORegistryHistory_ParticipantID_FK] FOREIGN KEY([ParticipantID])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[SORegistryHistory] CHECK CONSTRAINT [participant_SORegistryHistory_ParticipantID_FK]
GO
ALTER TABLE [participant].[Suspension]  WITH CHECK ADD  CONSTRAINT [FK__Suspensio__Locat__10E07F16] FOREIGN KEY([LocationTypeID])
REFERENCES [participant].[IncidentLocationType] ([id])
GO
ALTER TABLE [participant].[Suspension] CHECK CONSTRAINT [FK__Suspensio__Locat__10E07F16]
GO
ALTER TABLE [participant].[Suspension]  WITH CHECK ADD  CONSTRAINT [participant_Suspension_incidentLogId_FK] FOREIGN KEY([incidentLogId])
REFERENCES [participant].[IncidentLog] ([id])
GO
ALTER TABLE [participant].[Suspension] CHECK CONSTRAINT [participant_Suspension_incidentLogId_FK]
GO
ALTER TABLE [participant].[Suspension]  WITH CHECK ADD  CONSTRAINT [participant_Suspension_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[Suspension] CHECK CONSTRAINT [participant_Suspension_participantId_FK]
GO
ALTER TABLE [participant].[Suspension]  WITH CHECK ADD  CONSTRAINT [participant_Suspension_suspensionTypeId_FK] FOREIGN KEY([suspensionTypeId])
REFERENCES [participant].[SuspensionType] ([id])
GO
ALTER TABLE [participant].[Suspension] CHECK CONSTRAINT [participant_Suspension_suspensionTypeId_FK]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Assigner] FOREIGN KEY([assignerId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_Assigner]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Employee] FOREIGN KEY([staffId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_Employee]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Participant] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_Participant]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Prioity] FOREIGN KEY([priority])
REFERENCES [shelter].[Priority] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_Prioity]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Status] FOREIGN KEY([statusId])
REFERENCES [shelter].[Status] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_Status]
GO
ALTER TABLE [participant].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskType] FOREIGN KEY([taskTypeId])
REFERENCES [shelter].[taskType] ([id])
GO
ALTER TABLE [participant].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskType]
GO
ALTER TABLE [shelter].[Coordinator]  WITH CHECK ADD  CONSTRAINT [FK_Coordinator_Human] FOREIGN KEY([humanId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [shelter].[Coordinator] CHECK CONSTRAINT [FK_Coordinator_Human]
GO
ALTER TABLE [shelter].[Coordinator]  WITH CHECK ADD  CONSTRAINT [FK_Coordinator_Location] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Coordinator] CHECK CONSTRAINT [FK_Coordinator_Location]
GO
ALTER TABLE [shelter].[Frequency]  WITH CHECK ADD  CONSTRAINT [shelter_Frequency_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Frequency] CHECK CONSTRAINT [shelter_Frequency_locationId_FK]
GO
ALTER TABLE [shelter].[Frequency]  WITH CHECK ADD  CONSTRAINT [shelter_Frequency_typeId_FK] FOREIGN KEY([frequencyTypeId])
REFERENCES [shelter].[FrequencyType] ([id])
GO
ALTER TABLE [shelter].[Frequency] CHECK CONSTRAINT [shelter_Frequency_typeId_FK]
GO
ALTER TABLE [shelter].[HostMoreLocation]  WITH CHECK ADD  CONSTRAINT [FK_HostMoreLocation_HostMore] FOREIGN KEY([hostMoreId])
REFERENCES [shelter].[HostMore] ([id])
GO
ALTER TABLE [shelter].[HostMoreLocation] CHECK CONSTRAINT [FK_HostMoreLocation_HostMore]
GO
ALTER TABLE [shelter].[HostMoreLocation]  WITH CHECK ADD  CONSTRAINT [FK_HostMoreLocation_Location] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[HostMoreLocation] CHECK CONSTRAINT [FK_HostMoreLocation_Location]
GO
ALTER TABLE [shelter].[HostMoreLocation]  WITH CHECK ADD  CONSTRAINT [FK_HostMoreLocation_Season] FOREIGN KEY([seasonId])
REFERENCES [shelter].[Seasons] ([id])
GO
ALTER TABLE [shelter].[HostMoreLocation] CHECK CONSTRAINT [FK_HostMoreLocation_Season]
GO
ALTER TABLE [shelter].[LocationNotes]  WITH CHECK ADD  CONSTRAINT [shelter_LocationNotes_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[LocationNotes] CHECK CONSTRAINT [shelter_LocationNotes_locationId_FK]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_FrequencyId] FOREIGN KEY([frequencyId])
REFERENCES [shelter].[Frequency] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_FrequencyId]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_Gender] FOREIGN KEY([genderId])
REFERENCES [shelter].[Gender] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_Gender]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_HostLocation] FOREIGN KEY([hostLocationTypeId])
REFERENCES [shelter].[HostLocationType] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_HostLocation]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_Location] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_Location]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_Season] FOREIGN KEY([seasonId])
REFERENCES [shelter].[Seasons] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_Season]
GO
ALTER TABLE [shelter].[LocationSeasonal]  WITH CHECK ADD  CONSTRAINT [FK_LocationSeasonal_TransportId] FOREIGN KEY([transportId])
REFERENCES [shelter].[Transport] ([id])
GO
ALTER TABLE [shelter].[LocationSeasonal] CHECK CONSTRAINT [FK_LocationSeasonal_TransportId]
GO
ALTER TABLE [shelter].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Gender] FOREIGN KEY([genderId])
REFERENCES [shelter].[Gender] ([id])
GO
ALTER TABLE [shelter].[Schedule] CHECK CONSTRAINT [FK_Schedule_Gender]
GO
ALTER TABLE [shelter].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Schedule] FOREIGN KEY([id])
REFERENCES [shelter].[Schedule] ([id])
GO
ALTER TABLE [shelter].[Schedule] CHECK CONSTRAINT [FK_Schedule_Schedule]
GO
ALTER TABLE [shelter].[Schedule]  WITH CHECK ADD  CONSTRAINT [shelter_Schedule_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Schedule] CHECK CONSTRAINT [shelter_Schedule_locationId_FK]
GO
ALTER TABLE [shelter].[Schedule]  WITH CHECK ADD  CONSTRAINT [shelter_Schedule_seasonId_FK] FOREIGN KEY([seasonId])
REFERENCES [shelter].[Seasons] ([id])
GO
ALTER TABLE [shelter].[Schedule] CHECK CONSTRAINT [shelter_Schedule_seasonId_FK]
GO
ALTER TABLE [shelter].[ScheduleParticipant]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleParticipant_seasonId_FK] FOREIGN KEY([seasonId])
REFERENCES [shelter].[Seasons] ([id])
GO
ALTER TABLE [shelter].[ScheduleParticipant] CHECK CONSTRAINT [FK_ScheduleParticipant_seasonId_FK]
GO
ALTER TABLE [shelter].[ScheduleParticipant]  WITH CHECK ADD  CONSTRAINT [shelter_ScheduleParticipant_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[ScheduleParticipant] CHECK CONSTRAINT [shelter_ScheduleParticipant_locationId_FK]
GO
ALTER TABLE [shelter].[ScheduleParticipant]  WITH CHECK ADD  CONSTRAINT [shelter_ScheduleParticipant_participantId_FK] FOREIGN KEY([participantId])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [shelter].[ScheduleParticipant] CHECK CONSTRAINT [shelter_ScheduleParticipant_participantId_FK]
GO
ALTER TABLE [shelter].[ScheduleParticipant]  WITH CHECK ADD  CONSTRAINT [shelter_ScheduleParticipant_scheduleId_FK] FOREIGN KEY([scheduleId])
REFERENCES [shelter].[Schedule] ([id])
GO
ALTER TABLE [shelter].[ScheduleParticipant] CHECK CONSTRAINT [shelter_ScheduleParticipant_scheduleId_FK]
GO
ALTER TABLE [shelter].[Support]  WITH CHECK ADD  CONSTRAINT [FK_Support_Location] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Support] CHECK CONSTRAINT [FK_Support_Location]
GO
ALTER TABLE [shelter].[Support]  WITH CHECK ADD  CONSTRAINT [FK_Support_Priority] FOREIGN KEY([priority])
REFERENCES [shelter].[Priority] ([id])
GO
ALTER TABLE [shelter].[Support] CHECK CONSTRAINT [FK_Support_Priority]
GO
ALTER TABLE [shelter].[Support]  WITH CHECK ADD  CONSTRAINT [FK_Support_Staff] FOREIGN KEY([staffId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [shelter].[Support] CHECK CONSTRAINT [FK_Support_Staff]
GO
ALTER TABLE [shelter].[Support]  WITH CHECK ADD  CONSTRAINT [FK_Support_Status] FOREIGN KEY([statusId])
REFERENCES [shelter].[SupportStatus] ([id])
GO
ALTER TABLE [shelter].[Support] CHECK CONSTRAINT [FK_Support_Status]
GO
ALTER TABLE [shelter].[Support]  WITH CHECK ADD  CONSTRAINT [FK_Support_Type] FOREIGN KEY([ticketTypeId])
REFERENCES [shelter].[ticketType] ([id])
GO
ALTER TABLE [shelter].[Support] CHECK CONSTRAINT [FK_Support_Type]
GO
ALTER TABLE [shelter].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Employee] FOREIGN KEY([staffId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [shelter].[Tasks] CHECK CONSTRAINT [FK_Tasks_Employee]
GO
ALTER TABLE [shelter].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Location] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Tasks] CHECK CONSTRAINT [FK_Tasks_Location]
GO
ALTER TABLE [shelter].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Prioity] FOREIGN KEY([priority])
REFERENCES [shelter].[Priority] ([id])
GO
ALTER TABLE [shelter].[Tasks] CHECK CONSTRAINT [FK_Tasks_Prioity]
GO
ALTER TABLE [shelter].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Status] FOREIGN KEY([statusId])
REFERENCES [shelter].[Status] ([id])
GO
ALTER TABLE [shelter].[Tasks] CHECK CONSTRAINT [FK_Tasks_Status]
GO
ALTER TABLE [shelter].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskType] FOREIGN KEY([taskTypeId])
REFERENCES [shelter].[taskType] ([id])
GO
ALTER TABLE [shelter].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskType]
GO
ALTER TABLE [shelter].[Transport]  WITH CHECK ADD  CONSTRAINT [shelter_Transport_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [shelter].[Transport] CHECK CONSTRAINT [shelter_Transport_locationId_FK]
GO
ALTER TABLE [shelter].[Transport]  WITH CHECK ADD  CONSTRAINT [shelter_Transport_typeID_FK] FOREIGN KEY([transportTypeId])
REFERENCES [shelter].[TransportType] ([id])
GO
ALTER TABLE [shelter].[Transport] CHECK CONSTRAINT [shelter_Transport_typeID_FK]
GO
ALTER TABLE [shelter].[WaitList]  WITH CHECK ADD  CONSTRAINT [shelter_waitlist_participantId_FK] FOREIGN KEY([participantid])
REFERENCES [participant].[Participant] ([id])
GO
ALTER TABLE [shelter].[WaitList] CHECK CONSTRAINT [shelter_waitlist_participantId_FK]
GO
ALTER TABLE [shelter].[WaitList]  WITH CHECK ADD  CONSTRAINT [shelter_waitlist_programId_FK] FOREIGN KEY([WaitListProgramId])
REFERENCES [shelter].[WaitListPrograms] ([id])
GO
ALTER TABLE [shelter].[WaitList] CHECK CONSTRAINT [shelter_waitlist_programId_FK]
GO
ALTER TABLE [shelter].[WaitListPrograms]  WITH CHECK ADD  CONSTRAINT [shelter_WaitListPrograms_programId_FK] FOREIGN KEY([programId])
REFERENCES [interaction].[Program] ([id])
GO
ALTER TABLE [shelter].[WaitListPrograms] CHECK CONSTRAINT [shelter_WaitListPrograms_programId_FK]
GO
ALTER TABLE [shelter].[WaitListPrograms]  WITH CHECK ADD  CONSTRAINT [shelter_WaitListPrograms_provider_Id_FK] FOREIGN KEY([providerId])
REFERENCES [organization].[Provider] ([id])
GO
ALTER TABLE [shelter].[WaitListPrograms] CHECK CONSTRAINT [shelter_WaitListPrograms_provider_Id_FK]
GO
ALTER TABLE [staff].[Employee]  WITH CHECK ADD  CONSTRAINT [staff_Employee_humanId_FK] FOREIGN KEY([humanId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [staff].[Employee] CHECK CONSTRAINT [staff_Employee_humanId_FK]
GO
ALTER TABLE [staff].[Places]  WITH CHECK ADD  CONSTRAINT [staff_Places_locationId_FK] FOREIGN KEY([locationId])
REFERENCES [shelter].[Location] ([id])
GO
ALTER TABLE [staff].[Places] CHECK CONSTRAINT [staff_Places_locationId_FK]
GO
ALTER TABLE [staff].[Places]  WITH CHECK ADD  CONSTRAINT [staff_Places_siteId_FK] FOREIGN KEY([siteId])
REFERENCES [staff].[Sites] ([id])
GO
ALTER TABLE [staff].[Places] CHECK CONSTRAINT [staff_Places_siteId_FK]
GO
ALTER TABLE [staff].[Volunteer]  WITH CHECK ADD  CONSTRAINT [Volunteer_FK] FOREIGN KEY([humanId])
REFERENCES [humans].[Human] ([id])
GO
ALTER TABLE [staff].[Volunteer] CHECK CONSTRAINT [Volunteer_FK]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "o"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "j"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "jp"
            Begin Extent = 
               Top = 138
               Left = 260
               Bottom = 268
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "h"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "jps"
            Begin Extent = 
               Top = 270
               Left = 257
               Bottom = 400
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End' , @level0type=N'SCHEMA',@level0name=N'organization', @level1type=N'VIEW',@level1name=N'EmployerAction_FV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'organization', @level1type=N'VIEW',@level1name=N'EmployerAction_FV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'organization', @level1type=N'VIEW',@level1name=N'EmployerAction_FV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "h"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 317
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 263
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'participant', @level1type=N'VIEW',@level1name=N'vwParticipantDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'participant', @level1type=N'VIEW',@level1name=N'vwParticipantDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[25] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "bins"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 251
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ed_exit"
            Begin Extent = 
               Top = 119
               Left = 324
               Bottom = 416
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ed_cancel"
            Begin Extent = 
               Top = 40
               Left = 826
               Bottom = 315
               Right = 1051
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pd"
            Begin Extent = 
               Top = 48
               Left = 591
               Bottom = 337
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3270
         Alias = 3345
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'participant', @level1type=N'VIEW',@level1name=N'vwStorageBinsLogDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'participant', @level1type=N'VIEW',@level1name=N'vwStorageBinsLogDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 311
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "h"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 317
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'staff', @level1type=N'VIEW',@level1name=N'vwEmployeeDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'staff', @level1type=N'VIEW',@level1name=N'vwEmployeeDetails'
GO
