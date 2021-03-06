USE [AIRLINE]
GO
/****** Object:  Table [dbo].[AIRPLANES]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIRPLANES](
	[AIRPLANE_NO] [varchar](50) NOT NULL,
	[NO_OF_SEATS] [int] NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AIRPLANE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIRPORT]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIRPORT](
	[CODE] [char](3) NOT NULL,
	[COUNTRY] [char](50) NOT NULL,
	[CITY] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASSIGN_AIRPLANES]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSIGN_AIRPLANES](
	[FLIGHT_NO] [int] NOT NULL,
	[AIRPLANE_NO] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FLIGHT_NO] ASC,
	[AIRPLANE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASSIGN_CREW]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSIGN_CREW](
	[FLIGHT_NO] [int] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FLIGHT_NO] ASC,
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASSIGN_PILOTS]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSIGN_PILOTS](
	[FLIGHT_NO] [int] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FLIGHT_NO] ASC,
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKING]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[CLIENT_USERNAME] [varchar](50) NOT NULL,
	[FLIGHT_NUMBER] [int] NOT NULL,
	[RESERVATION_NUMBER] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLIENT_USERNAME] ASC,
	[FLIGHT_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENT]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENT](
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
	[FNAME] [char](50) NOT NULL,
	[LNAME] [char](50) NOT NULL,
	[PHONE_NUMBER] [int] NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[SSN] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
	[FNAME] [char](50) NOT NULL,
	[LNAME] [char](50) NOT NULL,
	[JobTitle] [char](50) NOT NULL,
	[ID] [int] NOT NULL,
	[DATE_OF_BIRTH] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLIGHT]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLIGHT](
	[FLIGHT_NUMBER] [int] NOT NULL,
	[FLIGHT_DATE] [date] NOT NULL,
	[AVAILABLE_SEATS] [int] NOT NULL,
	[ARRIVAL_TIME] [time](7) NOT NULL,
	[DEPARTURE_TIME] [time](7) NOT NULL,
	[FARE] [float] NOT NULL,
	[SOURCE] [char](3) NOT NULL,
	[DESTINATION] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FLIGHT_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICE_REQUESTED]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE_REQUESTED](
	[SERVICE_NO] [int] NOT NULL,
	[CLIENT_USERNAME] [varchar](50) NOT NULL,
	[RESERVATION_NUMBER] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLIENT_USERNAME] ASC,
	[SERVICE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICES]    Script Date: 1/11/2021 7:34:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICES](
	[SERVICE_NO] [int] NOT NULL,
	[SERVICE_NAME] [char](50) NOT NULL,
	[SERVICE_PRICE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SERVICE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A330', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A331', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A332', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A333', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A334', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A335', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A336', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A337', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A338', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A339', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A340', 300, N'BOEING')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A341', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A342', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A343', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A344', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A345', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A346', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A347', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A348', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A349', 200, N'AIRBUS')
INSERT [dbo].[AIRPLANES] ([AIRPLANE_NO], [NO_OF_SEATS], [MODEL]) VALUES (N'A350', 200, N'AIRBUS')
GO
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ABE', N'USA                                               ', N'PA                                                ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ABQ', N'USA                                               ', N'NM                                                ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ABZ', N'United Kingdom                                    ', N'Aberdeen                                          ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ACA', N'Mexico                                            ', N'Acapulco                                          ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ACC', N'GHANA                                             ', N'ACCRA                                             ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ADA', N'TURKEY                                            ', N'ADANA                                             ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ADE', N'YEMEN                                             ', N'ADEN                                              ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AEX', N'USA                                               ', N'LA                                                ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AGB', N'Germany                                           ', N'Munich                                            ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AGF', N'France                                            ', N'Agen                                              ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AHB', N'Saudi Arabia                                      ', N'Abha                                              ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AHE', N'POLYNESIA                                         ', N'AHE                                               ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'ALL', N'ITALY                                             ', N'ALBENGA                                           ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'AOR', N'MALAYSIA                                          ', N'ALOR                                              ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'CAI', N'Egypt                                             ', N'Cairo                                             ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'DOH', N'Qatar                                             ', N'Doha                                              ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'DXB', N'United Arab Emirates                              ', N'Dubai                                             ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'HBE', N'Egypt                                             ', N'Borg El Arab                                      ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'KCZ', N'Japan                                             ', N'Kochi                                             ')
INSERT [dbo].[AIRPORT] ([CODE], [COUNTRY], [CITY]) VALUES (N'SYX', N'China                                             ', N'Sanya                                             ')
GO
INSERT [dbo].[ASSIGN_CREW] ([FLIGHT_NO], [USERNAME]) VALUES (5, N'Stewart1')
GO
INSERT [dbo].[ASSIGN_PILOTS] ([FLIGHT_NO], [USERNAME]) VALUES (1, N'Pilot1')
INSERT [dbo].[ASSIGN_PILOTS] ([FLIGHT_NO], [USERNAME]) VALUES (2, N'Pilot1')
GO
INSERT [dbo].[BOOKING] ([CLIENT_USERNAME], [FLIGHT_NUMBER], [RESERVATION_NUMBER]) VALUES (N't', 5, N'253315')
GO
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'3tywe', N'78131367613', N'rqw6qw                                            ', N'dqwttyd                                           ', 107361313, N'eslmajheqe@gmail.com', 4124513)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Abdalla', N'abd', N'Abdalla                                           ', N'Salah                                             ', 10101010, N'abdalla.compa@gmail.com', 11990099)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'AES', N'6133767', N'Ihab                                              ', N'Alaa                                              ', 1032556753, N'temporary@edx.com', 5125)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Ahmed', N'Ahmed', N'Ahmed                                             ', N'Nashaat                                           ', 1293888, N'aksjhkajsh', 11223344)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'etyqwe', N'1376761376', N'esesa                                             ', N'sasa                                              ', 1071363313, N'rqwr@gmail.com', 2189324)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'ewe782', N'51252133', N'sttfdyq                                           ', N'eastrdqw                                          ', 107236813, N'estqwqw@gmail.com', 1213523)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Hoda', N'hh12', N'Huda                                              ', N'Mahmoud                                           ', 12912093, N'akshdkahs@gmail.com', 11223344)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Mando', N'mando', N'Mohammed                                          ', N'Wael                                              ', 101010101, N'mando.waelsaad@gmail.com', 1122334455)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'qwttywq', N'7613`3', N'smoto                                             ', N'matoly                                            ', 107813613, N'wtrrqw@yahoo.com', 12512561)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'rqwew121', N'7823761376', N'yoko                                              ', N'mata                                              ', 12836472, N'Emailtemope@edx.com', 7356137)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'seko121', N'37813636`', N'sonic                                             ', N'mario                                             ', 1082371563, N'tqwyeq@gmail.com', 761376123)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'shaban3121', N'76127813', N'shabolo                                           ', N'hnta                                              ', 104524512, N'sjewuf@gmail.com', 12781313)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Sharkawy', N'mohamedvi', N'Mohammed                                          ', N'Hamed                                             ', 1066554411, N'mohamedvi@gmail.com', 11330099)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N't', N't', N'Trial                                             ', N'Trial                                             ', 12121, N'tttt', 12124311)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'tyqtyw', N'313376813', N'tqwty1                                            ', N'twrqie1                                           ', 1083781213, N'eslamediqe@gmail.com', 412612)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'tyqwtyqw', N'13631731', N'tqwyqwer1                                         ', N'stdfwd                                            ', 10737813, N'easdsa@gmail.com', 41313613)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'tyqwtyqwq', N'267613763', N'Teqwi                                             ', N'tqeqns                                            ', 1062513556, N'ededs@gmail.com', 412241781)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'uiefuiqef', N'71378`37683', N'desta                                             ', N'melo                                              ', 10883782, N'esjeuiqe@gmail.com', 241215621)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'Yousef', N'joe', N'Yousef                                            ', N'Adel                                              ', 101010, N'joegaafar99@gmail.com', 11223344)
INSERT [dbo].[CLIENT] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [PHONE_NUMBER], [EMAIL], [SSN]) VALUES (N'yueeqq', N'61376313', N'asftrfws                                          ', N'wqqwtfw                                           ', 107637613, N'smaie@gmail.com', 19372376)
GO
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'admin', N'admin', N'Khaled                                            ', N'Ali                                               ', N'Administrator                                     ', 230, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmad', N'762413', N'wetwe                                             ', N'QWD                                               ', N'Adminstrator                                      ', 1213713, CAST(N'1990-09-08' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmar', N'762413', N'wetwe                                             ', N'QWD                                               ', N'Pilot                                             ', 1223412, CAST(N'1990-09-08' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmqwe', N'76241', N'wetqe                                             ', N'tewew                                             ', N'officeemployee                                    ', 2335724, CAST(N'1990-09-08' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmt34', N'76729', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1983324, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmtey', N'76729', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 198372, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahmwe', N'76241', N'wetwe                                             ', N'tewew                                             ', N'Pilot                                             ', 2356763, CAST(N'1990-09-08' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'ahydw', N'76729', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1983908, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'bark1', N'7677767', N'bark                                              ', N'bark                                              ', N'officeemployee                                    ', 874123421, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'fheyrr', N'767724', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1988462, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'fqww', N'7677767', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 8741234, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'hdjiwe', N'7677766', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 198327, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'heye', N'767724', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 19882143, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'heyio', N'7677766', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1965781, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'heywq', N'7677766', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1965321, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'heyywo', N'7677766', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 1965651, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'heyywwuidq', N'7677766', N'wetda                                             ', N'tewew                                             ', N'officeemployee                                    ', 19653611, CAST(N'1990-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'Pilot1', N'ahmed', N'Ahmed                                             ', N'Mahmoud                                           ', N'Pilot                                             ', 150, CAST(N'1980-09-14' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'Samir', N's123', N'Samir                                             ', N'Samy                                              ', N'OfficeEmployee                                    ', 210, CAST(N'1988-09-09' AS Date))
INSERT [dbo].[Employees] ([USERNAME], [PASSWORD], [FNAME], [LNAME], [JobTitle], [ID], [DATE_OF_BIRTH]) VALUES (N'Stewart1', N'sara', N'Sara                                              ', N'Khaled                                            ', N'Stewart                                           ', 90, CAST(N'1990-01-05' AS Date))
GO
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (1, CAST(N'2021-01-10' AS Date), 0, CAST(N'10:00:00' AS Time), CAST(N'08:00:00' AS Time), 5000, N'ABZ', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (2, CAST(N'2021-01-10' AS Date), 0, CAST(N'18:00:00' AS Time), CAST(N'08:00:00' AS Time), 6000, N'ABZ', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (5, CAST(N'2021-02-01' AS Date), 0, CAST(N'01:00:00' AS Time), CAST(N'05:00:00' AS Time), 1000, N'CAI', N'DOH')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (72, CAST(N'2021-09-02' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'ALL', N'HBE')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (74, CAST(N'2021-09-02' AS Date), 51, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'ALL', N'HBE')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (77, CAST(N'2021-09-01' AS Date), 50, CAST(N'12:00:00' AS Time), CAST(N'08:00:00' AS Time), 120, N'DXB', N'HBE')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (80, CAST(N'2021-09-02' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'ALL', N'DOH')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (81, CAST(N'2021-09-02' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'ALL', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (82, CAST(N'2021-09-02' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'ACC', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (83, CAST(N'2021-09-02' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'AGF', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (84, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'AEX', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (85, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'HBE', N'KCZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (86, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'HBE', N'ACA')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (87, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'CAI', N'ACA')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (88, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'CAI', N'AHB')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (89, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 124, N'CAI', N'AEX')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (90, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 120, N'AOR', N'AEX')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (91, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 120, N'SYX', N'AEX')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (92, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 120, N'ABE', N'AEX')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (93, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 120, N'ABE', N'ABZ')
INSERT [dbo].[FLIGHT] ([FLIGHT_NUMBER], [FLIGHT_DATE], [AVAILABLE_SEATS], [ARRIVAL_TIME], [DEPARTURE_TIME], [FARE], [SOURCE], [DESTINATION]) VALUES (98, CAST(N'2021-01-11' AS Date), 58, CAST(N'12:00:00' AS Time), CAST(N'04:00:00' AS Time), 120, N'AHE', N'ABZ')
GO
INSERT [dbo].[SERVICE_REQUESTED] ([SERVICE_NO], [CLIENT_USERNAME], [RESERVATION_NUMBER]) VALUES (7, N't', 253315)
GO
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (1, N'Premium Meals                                     ', 10)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (2, N'CheckIn Priority                                  ', 25)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (3, N'Infant Care                                       ', 50)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (4, N'Buy Extra Miles                                   ', 75)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (5, N'ADD Extra 20 Kg Baggage Weight                    ', 125)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (6, N'Entertainment Packages                            ', 50)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (7, N'WI-FI                                             ', 7)
INSERT [dbo].[SERVICES] ([SERVICE_NO], [SERVICE_NAME], [SERVICE_PRICE]) VALUES (8, N'Upgrade To FirstClass                             ', 150)
GO
ALTER TABLE [dbo].[ASSIGN_AIRPLANES]  WITH CHECK ADD FOREIGN KEY([AIRPLANE_NO])
REFERENCES [dbo].[AIRPLANES] ([AIRPLANE_NO])
GO
ALTER TABLE [dbo].[ASSIGN_AIRPLANES]  WITH CHECK ADD  CONSTRAINT [FK__ASSIGN_AI__FLIGH__300424B4] FOREIGN KEY([FLIGHT_NO])
REFERENCES [dbo].[FLIGHT] ([FLIGHT_NUMBER])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ASSIGN_AIRPLANES] CHECK CONSTRAINT [FK__ASSIGN_AI__FLIGH__300424B4]
GO
ALTER TABLE [dbo].[ASSIGN_CREW]  WITH CHECK ADD  CONSTRAINT [FK__ASSIGN_CR__FLIGH__3C69FB99] FOREIGN KEY([FLIGHT_NO])
REFERENCES [dbo].[FLIGHT] ([FLIGHT_NUMBER])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ASSIGN_CREW] CHECK CONSTRAINT [FK__ASSIGN_CR__FLIGH__3C69FB99]
GO
ALTER TABLE [dbo].[ASSIGN_CREW]  WITH CHECK ADD FOREIGN KEY([USERNAME])
REFERENCES [dbo].[Employees] ([USERNAME])
GO
ALTER TABLE [dbo].[ASSIGN_PILOTS]  WITH CHECK ADD  CONSTRAINT [FK__ASSIGN_PI__FLIGH__38996AB5] FOREIGN KEY([FLIGHT_NO])
REFERENCES [dbo].[FLIGHT] ([FLIGHT_NUMBER])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ASSIGN_PILOTS] CHECK CONSTRAINT [FK__ASSIGN_PI__FLIGH__38996AB5]
GO
ALTER TABLE [dbo].[ASSIGN_PILOTS]  WITH CHECK ADD FOREIGN KEY([USERNAME])
REFERENCES [dbo].[Employees] ([USERNAME])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD FOREIGN KEY([CLIENT_USERNAME])
REFERENCES [dbo].[CLIENT] ([USERNAME])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK__BOOKING__FLIGHT___403A8C7D] FOREIGN KEY([FLIGHT_NUMBER])
REFERENCES [dbo].[FLIGHT] ([FLIGHT_NUMBER])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK__BOOKING__FLIGHT___403A8C7D]
GO
ALTER TABLE [dbo].[FLIGHT]  WITH CHECK ADD FOREIGN KEY([DESTINATION])
REFERENCES [dbo].[AIRPORT] ([CODE])
GO
ALTER TABLE [dbo].[FLIGHT]  WITH CHECK ADD FOREIGN KEY([SOURCE])
REFERENCES [dbo].[AIRPORT] ([CODE])
GO
ALTER TABLE [dbo].[SERVICE_REQUESTED]  WITH CHECK ADD FOREIGN KEY([CLIENT_USERNAME])
REFERENCES [dbo].[CLIENT] ([USERNAME])
GO
ALTER TABLE [dbo].[SERVICE_REQUESTED]  WITH CHECK ADD FOREIGN KEY([SERVICE_NO])
REFERENCES [dbo].[SERVICES] ([SERVICE_NO])
GO
/****** Object:  StoredProcedure [dbo].[CheckForBooking]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[CheckForBooking] @User varchar(50)
  AS

  SELECT RESERVATION_NUMBER FROM BOOKING WHERE CLIENT_USERNAME = @User
GO
/****** Object:  StoredProcedure [dbo].[DecrementAvailableSeats]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DecrementAvailableSeats] @FlightNumber int, @Seats int
AS
UPDATE FLIGHT SET AVAILABLE_SEATS = AVAILABLE_SEATS - @Seats WHERE FLIGHT_NUMBER = @FlightNumber
GO
/****** Object:  StoredProcedure [dbo].[ForgetPassword]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ForgetPassword] @Email varchar(50)
AS
SELECT PASSWORD FROM CLIENT WHERE EMAIL = @Email
GO
/****** Object:  StoredProcedure [dbo].[GetUsernameFromReservation]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsernameFromReservation] @RNO int
  AS

  SELECT CLIENT_USERNAME FROM BOOKING WHERE RESERVATION_NUMBER = @RNO
GO
/****** Object:  StoredProcedure [dbo].[InsertingServiceRequested]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  Create Procedure [dbo].[InsertingServiceRequested] @User varchar(50), @SNO int, @RNO int
  AS

  INSERT INTO SERVICE_REQUESTED (SERVICE_NO,CLIENT_USERNAME,RESERVATION_NUMBER) VALUES (@SNO,@User,@RNO)
GO
/****** Object:  StoredProcedure [dbo].[ReviewAssignedPilotsAndCrew]    Script Date: 1/11/2021 7:34:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReviewAssignedPilotsAndCrew] @Username varchar(50)
AS
SELECT  FLIGHT.SOURCE AS Source, FLIGHT.DESTINATION AS Destination, 
FLIGHT.FLIGHT_DATE AS Date, FLIGHT.DEPARTURE_TIME AS Departure, FLIGHT.ARRIVAL_TIME AS Arrival
FROM FLIGHT
WHERE FLIGHT_NUMBER IN
(
SELECT FLIGHT_NO
FROM ASSIGN_PILOTS
WHERE USERNAME = @Username
UNION
SELECT FLIGHT_NO
FROM ASSIGN_CREW
WHERE USERNAME = @Username
)
GO
