USE [master]
GO
/****** Object:  Database [BrentwoodPrintingDB]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE DATABASE [BrentwoodPrintingDB] ON  PRIMARY 
( NAME = N'BrentwoodPrintingDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BrentwoodPrintingDB.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BrentwoodPrintingDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BrentwoodPrintingDB_log.ldf' , SIZE = 5824KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrentwoodPrintingDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET RECOVERY FULL 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET  MULTI_USER 
GO
ALTER DATABASE [BrentwoodPrintingDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrentwoodPrintingDB] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BrentwoodPrintingDB', N'ON'
GO
USE [BrentwoodPrintingDB]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Roles_ReportingAccess', @membername = N'aspnet_Roles_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Roles_BasicAccess', @membername = N'aspnet_Roles_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Profile_ReportingAccess', @membername = N'aspnet_Profile_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Profile_BasicAccess', @membername = N'aspnet_Profile_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Personalization_ReportingAccess', @membername = N'aspnet_Personalization_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Personalization_BasicAccess', @membername = N'aspnet_Personalization_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Membership_ReportingAccess', @membername = N'aspnet_Membership_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Membership_BasicAccess', @membername = N'aspnet_Membership_FullAccess'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetEmailAddressByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[aspnet_Membership_GetEmailAddressByJobID] (@JobID int)
AS
SELECT		Email
FROM		aspnet_Membership
INNER JOIN	Job
ON			Job.CustomerID = aspnet_Membership.UserId
WHERE		JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_AddEmployeeToRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_AddEmployeeToRole]
@Username nvarchar(256),
@RoleName varchar(50)
as
	if @RoleName is null
		raiserror('Role name is required', 16, 1)
	else if @Username is null
		raiserror('User ID is required.', 16, 1)
	else
		if not exists (select UserId, RoleId 
					   from EmployeeRoleaspnet_Users 
					   where UserId = (select UserId from aspnet_Users where lower(UserName) = lower(@Username)) 
					   and RoleId = (select RoleID from EmployeeRole where lower(RoleName) = lower(@RoleName))) 
			insert into EmployeeRoleaspnet_Users (UserId, RoleID)
			values
			(
				(select UserId from aspnet_Users where lower(UserName) = lower(@Username)),
				(select RoleID from EmployeeRole where lower(RoleName) = lower(@RoleName))
			)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_AddUserToCompany]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_AddUserToCompany]
@UserID uniqueidentifier = null,
@CompanyID int = null
as
	if @UserID is null
		raiserror('User ID is required', 16, 1)
	else if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		update aspnet_Users
		set CompanyID = @CompanyID
		where UserId = @UserID
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ApproveCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_ApproveCustomer]
	@Username nvarchar(256)
as
	if @Username is null
		raiserror('Username is required', 16, 1)
	else
		update aspnet_Users
			set Approved = 'Y'
		where UserName = @Username

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ArchiveCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_ArchiveCustomer]
@UserId uniqueidentifier
as
	if @UserId is null
		raiserror('Username is required.', 16, 1)
	else
		update aspnet_Membership
			set IsApproved = 0
		where UserId = @UserId

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_GetCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_GetCustomer]
@CustomerID uniqueidentifier = null
as
	if @CustomerID is null
		raiserror('Customer ID is required.', 16, 1)
	else
		select CV.UserId, CV.UserName, CV.FirstName, CV.LastName, CV.CustomerAddress, CV.City, CV.Province, CV.PostalCode, 
			CV.PhoneNumber, CV.Name, CV.Approved, CV.LastActivityDate, M.Email
		from CustomerView CV
			inner join aspnet_Membership M
				on CV.UserId = M.UserId
		where CV.UserId = @CustomerID
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_GetEmployee]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_GetEmployee]
@EmployeeID uniqueidentifier
as
	if @EmployeeID is null
		raiserror('Employee ID is required', 16, 1)
	else
		select U.UserId, M.Email, U.Username, U.LastActivityDate, U.FirstName, U.LastName
		from aspnet_Users U
			inner join aspnet_UsersInRoles I
				on U.UserId = I.UserId
			inner join aspnet_Roles R
				on I.RoleId = R.RoleId
			inner join aspnet_Membership M
				on U.UserId = M.UserId
		where R.LoweredRoleName = 'employee'
		and U.UserId = @EmployeeID

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_GetEmployeeByUsername]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_GetEmployeeByUsername]
@EmployeeUsername nvarchar(256)
as
	if @EmployeeUsername is null
		raiserror('Employee username is required', 16, 1)
	else
		select U.UserId, M.Email, U.Username, U.LastActivityDate, U.FirstName, U.LastName
		from aspnet_Users U
			inner join aspnet_UsersInRoles I
				on U.UserId = I.UserId
			inner join aspnet_Roles R
				on I.RoleId = R.RoleId
			inner join aspnet_Membership M
				on U.UserId = M.UserId
		where R.LoweredRoleName = 'employee'
		and U.UserName = @EmployeeUsername

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_GetUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_GetUser]
@Username nvarchar(256) = null
as
	if @Username is null
		raiserror('User ID is required', 16, 1)
	else
		select ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate,
		FirstName, LastName, CustomerAddress, City, Province, PostalCode, PhoneNumber, CompanyID, Approved, IsAdmin
		from aspnet_Users
		where Username = @Username
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_Insert_Customer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_Insert_Customer]
	@UserId uniqueidentifier,
	@FirstName varchar(50),
	@LastName varchar(50),
	@CustomerAddress varchar(150),
	@City varchar(50),
	@Province char(2),
	@PostalCode char(6),
	@PhoneNumber char(10),
	@CompanyID int
as
	if @UserId is null
		raiserror('User ID is required', 16, 1)
	else if @FirstName is null
		raiserror('First Name is required', 16, 1)
	else if @LastName is null
		raiserror('Last Name is required', 16, 1)
	else if @CustomerAddress is null
		raiserror('Address is required', 16, 1)
	else if @City is null
		raiserror('City is required', 16, 1)
	else if @Province is null
		raiserror('Province is required', 16, 1)
	else if @PostalCode is null
		raiserror('Postal Code is required', 16, 1)
	else if @PhoneNumber is null
		raiserror('Phone Number is required', 16, 1)
	else
		update aspnet_Users set
			FirstName = @FirstName,
			LastName = @LastName,
			CustomerAddress = @CustomerAddress,
			City = @City,
			Province = upper(@Province),
			PostalCode = upper(@PostalCode),
			PhoneNumber = @PhoneNumber,
			CompanyID = @CompanyID
		where UserId = @UserId

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_IsEmployeeAdmin]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_IsEmployeeAdmin]
@UserId uniqueidentifier = null
as
	if @UserId is null
		raiserror('User ID is null', 16, 1)
	else
		if exists (select * from aspnet_UsersInRoles where RoleId = (select RoleId from aspnet_Roles where LoweredRoleName = 'admin') and UserId = @UserId)
			select cast(1 as bit) as 'IsAdmin'
		else
			select cast(0 as bit) as 'IsAdmin'

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListAllUsers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListAllUsers]
as
	select U.UserId, U.UserName, M.Email, U.FirstName, U.LastName, R.RoleName, M.IsApproved
	from aspnet_Users U
		inner join aspnet_Membership M
			on U.UserId = M.UserId
		inner join aspnet_UsersInRoles I
			on U.UserId = I.UserId
		inner join aspnet_Roles R
			on R.RoleId = I.RoleId
	group by M.IsApproved, R.RoleName, U.UserId, U.UserName, M.Email, U.FirstName, U.LastName
	order by M.IsApproved, R.RoleName, U.UserName
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListArchivedByCompany]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListArchivedByCompany]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		select aspnet_Users.ApplicationId, aspnet_Users.UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate,
			FirstName, LastName, CustomerAddress, City, Province, PostalCode, PhoneNumber, CompanyID, Approved, IsAdmin
		from aspnet_Users
			inner join aspnet_Membership
				on aspnet_Users.UserId = aspnet_Membership.UserId
		where CompanyID = @CompanyID
		and aspnet_Membership.IsApproved = 0
		order by LastName, FirstName
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListArchivedCustomers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListArchivedCustomers]
as
	select CV.UserId, CV.UserName, CV.FirstName, CV.LastName, CV.CustomerAddress, CV.City, CV.Province, CV.PostalCode, 
		CV.PhoneNumber, C.Name, CV.Approved, CV.LastActivityDate, M.Email, CV.IsAdmin
	from aspnet_UsersInRoles I
		inner join aspnet_Users CV
			on I.UserId = CV.UserId
		inner join aspnet_Membership M
			on CV.UserId = M.UserId
		left outer join Company C
			on C.CompanyID = CV.CompanyID
		inner join aspnet_Roles R
			on I.RoleId = R.RoleId
	where M.IsApproved = 0
	order by CV.Approved, C.Name, CV.LastName, CV.FirstName

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListArchivedEmployees]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListArchivedEmployees]
as
	select U.UserId, M.Email, U.Username, U.LastActivityDate, U.FirstName, U.LastName
	from aspnet_Users U
		inner join aspnet_UsersInRoles I
			on U.UserId = I.UserId
		inner join aspnet_Roles R
			on I.RoleId = R.RoleId
		inner join aspnet_Membership M
			on U.UserId = M.UserId
	where R.LoweredRoleName = 'employee'
		and M.IsApproved = 0

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListByCompany]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListByCompany]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		select aspnet_Users.ApplicationId, aspnet_Users.UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate,
			FirstName, LastName, CustomerAddress, City, Province, PostalCode, PhoneNumber, CompanyID, Approved, IsAdmin
		from aspnet_Users
			inner join aspnet_Membership
				on aspnet_Users.UserId = aspnet_Membership.UserId
		where CompanyID = @CompanyID
		and aspnet_Membership.IsApproved = 1
		order by LastName, FirstName
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListCustomers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListCustomers]
as
	select distinct CV.UserId, CV.UserName, CV.FirstName, CV.LastName, CV.CustomerAddress, CV.City, CV.Province, CV.PostalCode, 
		CV.PhoneNumber, C.Name, CV.Approved, CV.LastActivityDate, M.Email, CV.IsAdmin
	from aspnet_UsersInRoles I
		inner join aspnet_Users CV
			on I.UserId = CV.UserId
		inner join aspnet_Membership M
			on CV.UserId = M.UserId
		left outer join Company C
			on C.CompanyID = CV.CompanyID
		inner join aspnet_Roles R
			on I.RoleId = R.RoleId
	where M.IsApproved = 1
	and R.RoleName = 'Customer' or R.RoleName = 'Approved Customer'
	order by CV.Approved, C.Name, CV.LastName, CV.FirstName

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListEmployees]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListEmployees]
as
	select U.UserId, M.Email, U.Username, U.LastActivityDate, U.FirstName, U.LastName
	from aspnet_Users U
		inner join aspnet_UsersInRoles I
			on U.UserId = I.UserId
		inner join aspnet_Roles R
			on I.RoleId = R.RoleId
		inner join aspnet_Membership M
			on U.UserId = M.UserId
	where R.LoweredRoleName = 'employee'
		and M.IsApproved = 1

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_ListNotApprovedCustomers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_ListNotApprovedCustomers]
as
	select CV.UserId, CV.UserName, CV.FirstName, CV.LastName, 
		CV.CustomerAddress, CV.City, CV.Province, CV.PostalCode, CV.PhoneNumber, CV.Name, CV.Approved, CV.LastActivityDate
	from CustomerView CV
	where CV.Approved = 0

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_LookupCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_LookupCustomer]
@UserID uniqueidentifier
as
	if @UserID is null
		raiserror('User ID is required', 16, 1)
	else
		select U.ApplicationId, U.UserId, U.UserName, U.LoweredUserName, U.MobileAlias, U.IsAnonymous, U.LastActivityDate, U.FirstName, U.LastName, 
			U.CustomerAddress, U.City, U.Province, U.PostalCode, U.PhoneNumber, U.CompanyID, U.Approved, U.IsAdmin
		from aspnet_UsersInRoles UIR
			inner join aspnet_Users U
				on U.UserId = UIR.UserId
			inner join aspnet_Roles R
				on UIR.RoleId = R.RoleId
		where U.UserId = @UserID
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_LookupCustomerByName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_LookupCustomerByName]
@Username nvarchar(256) = null
as
	if @Username is null
		raiserror('Username is required', 16, 1)
	else
		select U.ApplicationId, U.UserId, U.UserName, U.LoweredUserName, U.MobileAlias,
			U.IsAnonymous, U.LastActivityDate, U.FirstName, U.LastName, U.CustomerAddress,
			U.City, U.Province, U.PostalCode, U.PhoneNumber, U.CompanyID, U.Approved, U.IsAdmin
		from aspnet_Users U
			inner join aspnet_Membership M
				on U.UserId = M.UserId
		where U.UserName = @Username
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_MakeCustomerAdmin]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_MakeCustomerAdmin]
@UserName nvarchar(256) = null
as
	if @UserName is null
		raiserror('Username is required', 16, 1)
	else
		update aspnet_Users
			set IsAdmin = 1
		where UserId = (select UserId from aspnet_Users where UserName = @UserName)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_MakeCustomerAdminByUserId]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_MakeCustomerAdminByUserId]
@UserId uniqueidentifier = null
as
	if @UserId is null
		raiserror('Username is required', 16, 1)
	else
		update aspnet_Users
			set IsAdmin = 1
		where UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_MakeCustomerNotAdmin]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_MakeCustomerNotAdmin]
@UserId uniqueidentifier = null
as
	if @UserId is null
		raiserror('Username is required', 16, 1)
	else
		update aspnet_Users
			set IsAdmin = 0
		where UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_RemoveEmployeeFromRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_RemoveEmployeeFromRole]
@RoleName varchar(50),
@UserId uniqueidentifier
as
	if @UserId is null
		raiserror('User id is required.', 16, 1)
	else if @RoleName is null
		raiserror('Role Name is required.', 16, 1)
	else
		delete from EmployeeRoleaspnet_Users where RoleID = (select RoleID from EmployeeRole where lower(RoleName) = lower(@RoleName))
		and UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_UnArchiveCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_UnArchiveCustomer]
@CustomerId uniqueidentifier
as
	if @CustomerId is null
		raiserror('User Id is required.', 16, 1)
	else
		update aspnet_Membership
			set IsApproved = 1
		where UserId = @CustomerId

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_UnArchiveEmployee]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aspnet_Users_UnArchiveEmployee]
@EmployeeID uniqueidentifier
as
	if @EmployeeID is null
		raiserror('User Id is required.', 16, 1)
	else
		update aspnet_Membership
			set IsApproved = 1
		where UserId = @EmployeeID

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_UpdateCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_UpdateCustomer]
	@Username nvarchar(256),
	@FirstName varchar(50),
	@LastName varchar(50),
	@CustomerAddress varchar(250),
	@City varchar(50),
	@Province char(2),
	@PostalCode char(6),
	@PhoneNumber char(10),
	@CompanyID int,
	@Approved bit,
	@Email nvarchar(256)
as
	update aspnet_Users set
		FirstName = @FirstName,
		LastName = @LastName,
		CustomerAddress = @CustomerAddress,
		City = @City,
		Province = upper(@Province),
		PostalCode = upper(@PostalCode),
		PhoneNumber = @PhoneNumber,
		CompanyID = @CompanyID,
		Approved = @Approved
	where UserName = @Username

	update aspnet_Membership set
		Email = @Email
	where UserId = (select UserId from aspnet_Users where UserName = @Username)

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_UpdateEmployee]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aspnet_Users_UpdateEmployee]
@Username nvarchar(256),
@FirstName varchar(50),
@LastName varchar(50),
@Email nvarchar(256)
as
	if @Username is null
		raiserror('Employee username is required', 16, 1)
	else
		update aspnet_Users set
			FirstName = @FirstName,
			LastName = @LastName
		where UserName = @Username

		update aspnet_Membership set
			Email = @Email
		where UserId = (select UserId from aspnet_Users where UserName = @Username)

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END


GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        


GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END


GO
/****** Object:  StoredProcedure [dbo].[CleanOutDatabase]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CleanOutDatabase]
as
	delete from JobInfo
	delete from JobAsset
	delete from Job
	delete from JobType
	delete from JobProof
	delete from JobControl
	delete from Company
	delete from UserMessage
	delete from EmployeeRoleaspnet_Users
	delete from JobJobStatus
GO
/****** Object:  StoredProcedure [dbo].[Company_Approve]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Company_Approve]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		update Company set Approved = 1
GO
/****** Object:  StoredProcedure [dbo].[Company_Archive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_Archive]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		update Company set Archived = 'Y' where CompanyID = @CompanyID

GO
/****** Object:  StoredProcedure [dbo].[Company_Delete]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Company_Delete]
@CompanyID int
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		delete from Company
		where CompanyID = @CompanyID

GO
/****** Object:  StoredProcedure [dbo].[Company_Disapprove]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Company_Disapprove]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		update Company set Approved = 0
GO
/****** Object:  StoredProcedure [dbo].[Company_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_Get]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		select CompanyID, Name, CompanyAddress, City, Province, PostalCode, PhoneNumber, Website, Flagged, Archived, Approved
		from Company
		where CompanyID = @CompanyID

GO
/****** Object:  StoredProcedure [dbo].[Company_GetByCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_GetByCustomer]
@CustomerID uniqueidentifier
as
	if @CustomerID is null
		raiserror('Customer ID is required', 16, 1)
	else
		select C.CompanyID, C.Name, C.CompanyAddress, C.City, C.Province, C.PostalCode, C.PhoneNumber, C.Website, C.Flagged, C.Archived, C.Approved
		from Company C
			inner join aspnet_Users U
				on C.CompanyID = U.CompanyID
			inner join aspnet_UsersInRoles I
				on U.UserId = I.UserId
			inner join aspnet_Roles R
				on R.RoleId = I.RoleId
		where U.UserId = @CustomerID
			and R.LoweredRoleName = 'customer'
		

GO
/****** Object:  StoredProcedure [dbo].[Company_GetByUserId]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_GetByUserId]
@UserId uniqueidentifier
as
	if @UserId is null
		raiserror('User Id is required', 16, 1)
	else
		select C.Name, C.CompanyAddress, C.City, C.Province, C.PostalCode, C.PhoneNumber, C.Website, C.Flagged, C.Approved
		from Company C
			inner join aspnet_Users U
				on C.CompanyID = U.CompanyID
		where U.UserId = @UserId

GO
/****** Object:  StoredProcedure [dbo].[Company_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_Insert]
@Name varchar(50) = null,
@CompanyAddress varchar(150) = null,
@City varchar(50) = null,
@Province char(2) = null,
@PostalCode char(6) = null,
@PhoneNumber char(10) = null,
@Website varchar(50),
@Flagged bit
as
	if @Name is null
		raiserror('Name is required', 16, 1)
	else if @CompanyAddress is null
		raiserror('Address is required', 16, 1)
	else if @City is null
		raiserror('City is required', 16, 1)
	else if @Province is null
		raiserror('Province is required', 16, 1)
	else if @PostalCode is null
		raiserror('Postal Code is required', 16, 1)
	else
		insert into Company (Name, CompanyAddress, City, Province, PostalCode, PhoneNumber, Website, Flagged) values
		(
			@Name,
			@CompanyAddress,
			@City,
			upper(@Province),
			upper(@PostalCode),
			@PhoneNumber,
			@Website,
			@Flagged
		)

		select cast((select scope_identity() as CompanyID) as int)

GO
/****** Object:  StoredProcedure [dbo].[Company_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_List]
as
	select CompanyID, Name, CompanyAddress, City, Province, PostalCode, PhoneNumber, Website, Flagged, Archived, Approved
	from Company
	where Archived = 'N'
GO
/****** Object:  StoredProcedure [dbo].[Company_ListArchived]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_ListArchived]
as
	select CompanyID, Name, CompanyAddress, City, Province, PostalCode, PhoneNumber, Website, Flagged, Archived, Approved
	from Company
	where Archived = 'Y'
GO
/****** Object:  StoredProcedure [dbo].[Company_UnArchive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Company_UnArchive]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else
		update Company
		set Archived = 'N'
		where CompanyID = @CompanyID
GO
/****** Object:  StoredProcedure [dbo].[Company_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Company_Update]
@CompanyID int,
@Name varchar(50),
@CompanyAddress varchar(150),
@City varchar(50),
@Province char(2),
@PostalCode char(6),
@PhoneNumber char(10),
@Website varchar(50),
@Flagged bit
as
	if @CompanyID is null
		raiserror('Company ID is required', 16, 1)
	else if @Name is null
		raiserror('Name is required', 16, 1)
	else if @CompanyAddress is null
		raiserror('Address is required', 16, 1)
	else if @CompanyAddress is null
		raiserror('Address is required', 16, 1)
	else if @City is null
		raiserror('City is required', 16, 1)
	else if @Province is null
		raiserror('Province is required', 16, 1)
	else if @PostalCode is null
		raiserror('Postal Code is required', 16, 1)
	else
		update Company set
			Name = @Name, 
			CompanyAddress = @CompanyAddress, 
			City = @City, 
			Province = upper(@Province),
			PostalCode = upper(@PostalCode),
			PhoneNumber = @PhoneNumber,
			Website = @Website,
			Flagged = @Flagged
		where CompanyID = @CompanyID

		select cast((select scope_identity() as CompanyID) as int)

GO
/****** Object:  StoredProcedure [dbo].[EmployeeRole_GetByEmployee]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[EmployeeRole_GetByEmployee]
@EmployeeID uniqueidentifier = null
as
	if @EmployeeID is null
		raiserror('Employee ID is null', 16, 1)
	else
		select RoleName
		from EmployeeRole R
			inner join EmployeeRoleaspnet_Users E
				on E.RoleID = R.RoleID
		where E.UserId = @EmployeeID


GO
/****** Object:  StoredProcedure [dbo].[EmployeeRole_GetByStatusID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EmployeeRole_GetByStatusID]
@StatusID int = null
as
	if @StatusID is null
		raiserror('Status ID is required', 16, 1)
	else
		select RoleID, RoleName
		from EmployeeRole
			inner join JobStatus
				on EmployeeRole.RoleID = JobStatus.EmployeeRoleID
		where JobStatus.JobStatusID = @StatusID
GO
/****** Object:  StoredProcedure [dbo].[EmployeeRole_IsEmployeeInRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[EmployeeRole_IsEmployeeInRole]
@Username nvarchar(256) = null,
@RoleName varchar(50) = null
as
	if @Username is null
		raiserror('Username is required', 16, 1)
	else if @RoleName is null
		raiserror('Role name is required', 16, 1)
	else
		if (select Count(*) from EmployeeRoleaspnet_Users where UserId = (select UserId from aspnet_Users where UserName = @Username) and RoleID = (select RoleID from EmployeeRole where RoleName = @RoleName)) = 0
			select 0
		else
			select 1
GO
/****** Object:  StoredProcedure [dbo].[EmployeeRole_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EmployeeRole_List]
as
	select RoleID, RoleName
	from EmployeeRole

GO
/****** Object:  StoredProcedure [dbo].[EmployeeRole_ListByEmployeeID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EmployeeRole_ListByEmployeeID]
@UserID uniqueidentifier = null
as
	if @UserID is null
		raiserror('Employee ID is required', 16, 1)
	else
		select E.RoleID, E.RoleName
		from EmployeeRole E
			inner join EmployeeRoleaspnet_Users A
				on E.RoleID = A.RoleID
		where A.UserId = @UserID
GO
/****** Object:  StoredProcedure [dbo].[GetJobDetailsByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetJobDetailsByJobID] (@jobid int = null)
as
if @jobid is null
	begin
	raiserror('You must provide a jobID.',16,1)
	end
else
	begin
	if not exists (select CustomerID from Job where JobID = @jobid)
		begin
		raiserror('That jobID does not exist.',16,1)
		end
	else
		begin
		Select Job.JobID,
			   JobType.Name as JobName, 
			   JobStatus.Name as JobStatus,
			   Company.CompanyID,
			   Company.Name as CompanyName,
			   aspnet_Users.UserId as CustomerID,
			   aspnet_Users.FirstName as CustomerFirstName, 
			   aspnet_Users.LastName as CustomerLastName, 
			   Job.Quantity,
			   Job.StartDate,
			   Job.PromiseDate,
			   Job.SpecialInstructions,
			   aspnet_Membership.Email as CustomerEmail
		from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
				     left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
				     left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
				     left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
				     left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
				     left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
		where Job.JobID = @jobid
		end
	end
return

-- Insert Job Proof

GO
/****** Object:  StoredProcedure [dbo].[GetUserNameByUserID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetUserNameByUserID] (@userid uniqueidentifier = null)
AS
if @userid is null
	begin
	raiserror('You must provide a UserID.',16,1)
	end
else
	begin
	if not exists (select UserName from aspnet_Users where UserId = @userid)
		begin
		raiserror('That UserID does not exist.',16,1)
		end
	else
		begin
		select UserName from aspnet_Users
		where UserId = @userid
		end
	end
return

--List jobs with JobStatus ID and partial match Company Name

GO
/****** Object:  StoredProcedure [dbo].[Job_AddQuote]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Job_AddQuote] (@jobid int = null, @quote money = null)
AS
if @jobid is null or @quote is null
	begin
	raiserror('You must provide a JobID and Quote amount.',16,1)
	end
else
	begin
	Update Job
	set QuoteAmount = @quote
	where JobID = @jobid
	select cast((select scope_identity() as CompanyID) as int)
	if @@ERROR <>0
		begin
		raiserror ('Quote Job Failed.',16,1)
		end
	end
return

-- Change status

GO
/****** Object:  StoredProcedure [dbo].[Job_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_Get]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required.', 16, 1)
	else
		select JobID, JobTypeID, SpecialInstructions, Quantity, DeliveryOrPickup, CustomerID, PromiseDate, StartDate, InvoicedDate, Paid, QuoteAmount
		from Job
		where JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[Job_GetOutstandingInvoices]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Job_GetOutstandingInvoices]
as
select aspnet_Users.FirstName + aspnet_Users.LastName 'Customer', JobType.Name, Job.JobID, Job.DeliveryOrPickup, Job.InvoicedDate, 
	   datediff(d, Job.InvoicedDate, getdate()) 'Days Past Due',
	   (
		select top 1 MessagedOn
		from UserMessage
		where JobID = Job.JobID
		and SentTo = aspnet_Users.UserId
	   ) 'Last Messaged On'
from aspnet_Users 
	inner join Job
		on aspnet_Users.UserId = Job.CustomerID
	inner join JobType
		on Job.JobTypeID = JobType.JobTypeID
where InvoicedDate IS NOT NULL
	and Paid = 'N'
GO
/****** Object:  StoredProcedure [dbo].[Job_GetOutstandingInvoicesByCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_GetOutstandingInvoicesByCustomer]
@Username nvarchar(256) = null
as
	if @Username is null
		raiserror('Username is required', 16, 1)
	else
		select aspnet_Users.FirstName + aspnet_Users.LastName 'Customer', JobType.Name, Job.JobID, Job.DeliveryOrPickup, Job.InvoicedDate, 
			   datediff(d, Job.InvoicedDate, getdate()) 'Days Past Due',
			   (
				select top 1 MessagedOn
				from UserMessage
				where JobID = Job.JobID
				and SentTo = aspnet_Users.UserId
			   ) 'Last Messaged On'
		from aspnet_Users 
			inner join Job
				on aspnet_Users.UserId = Job.CustomerID
			inner join JobType
				on Job.JobTypeID = JobType.JobTypeID
		where InvoicedDate IS NOT NULL
			and Paid = 'N'
			and Username = @Username
GO
/****** Object:  StoredProcedure [dbo].[Job_GetStatus]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_GetStatus]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		select S.JobStatusID, S.Name, S.Archived, S.EmployeeRoleID, S.OrderingNumber
		from JobJobStatus JJ
			inner join JobStatus S
				on JJ.JobStatusID = S.JobStatusID
		where JJ.JobID = @JobID
			and CompletedOn is null
GO
/****** Object:  StoredProcedure [dbo].[Job_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_Insert]
@JobTypeID int = null,
@SpecialInstructions text = null,
@Quantity int = null,
@DeliveryOrPickup char(1) = null,
@CustomerID uniqueidentifier = null,
@PromiseDate datetime = null
as
	if @JobTypeID is null
		raiserror('JobTypeID is required', 16, 1)
	else if @Quantity is null
		raiserror('Quantity is required', 16, 1)
	else if @DeliveryOrPickup is null
		raiserror('Delivery Or Pickup specification is required', 16, 1)
	else if @CustomerID is null
		raiserror('Customer ID is required.', 16, 1)
	else
		insert into Job (JobTypeID, SpecialInstructions, Quantity, DeliveryOrPickup, CustomerID, PromiseDate, StartDate)
		values(@JobTypeID, @SpecialInstructions, @Quantity, @DeliveryOrPickup, @CustomerID, @PromiseDate, getdate())
		select cast((select scope_identity() as JobID) as int)
GO
/****** Object:  StoredProcedure [dbo].[Job_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_List]
as
	select JobID, JobTypeID, SpecialInstructions, Quantity, DeliveryOrPickup, CustomerID, PromiseDate, StartDate
	from Job
GO
/****** Object:  StoredProcedure [dbo].[Job_ListByCompany]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_ListByCompany]
@CompanyID int = null
as
	if @CompanyID is null
		raiserror('Company ID is required.', 16, 1)
	else
		select JobID, T.Name 'JobType', Quantity, PromiseDate, StartDate
		from Job J
			inner join Company C
				on (select CompanyID from aspnet_Users where UserId = J.CustomerID) = C.CompanyID
			inner join JobType T
				on J.JobTypeID = T.JobTypeID
		where C.CompanyID = @CompanyID
GO
/****** Object:  StoredProcedure [dbo].[Job_ListByCustomer]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_ListByCustomer]
@CustomerID uniqueidentifier = null
as
	if @CustomerID is null
		raiserror('Customer ID is required.', 16, 1)
	else
		select JobID, JobTypeID, SpecialInstructions, Quantity, DeliveryOrPickup, CustomerID, PromiseDate, StartDate
		from Job
		where CustomerID = @CustomerID
GO
/****** Object:  StoredProcedure [dbo].[Job_ListByCustomerUsername]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_ListByCustomerUsername]
@CustomerUsername nvarchar(256) = null
as
	if @CustomerUsername is null
		raiserror('Username is required', 16, 1)
	else
		select JobID, Name 'JobType', Quantity, PromiseDate, StartDate
		from Job J
			inner join aspnet_Users C
				on J.CustomerID = C.UserId
			inner join JobType T
				on J.JobTypeID = T.JobTypeID
		where C.UserName = @CustomerUsername
GO
/****** Object:  StoredProcedure [dbo].[Job_ListByJobStatus]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_ListByJobStatus]
@JobStatusID int = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is required.', 16, 1)
	else
		select J.JobID, T.Name, J.SpecialInstructions, J.Quantity,
			J.DeliveryOrPickup, (C.FirstName + ' ' + C.LastName) 'Customer',
			J.PromiseDate, J.StartDate, S.JobStatusID
		from JobJobStatus S
			inner join Job J
				on S.JobID = J.JobID
			inner join aspnet_Users C
				on J.CustomerID = C.UserId
			inner join JobType T
				on J.JobTypeID = T.JobTypeID
		where S.JobStatusID = @JobStatusID
		and S.CompletedOn is NULL
GO
/****** Object:  StoredProcedure [dbo].[Job_ListByStatusName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Job_ListByStatusName]
@JobStatusName varchar(50) = null
as
	if @JobStatusName is null
		raiserror('Job Type Name is required', 16, 1)
	else
		select J.JobID, JobTypeID, SpecialInstructions, Quantity, DeliveryOrPickup, CustomerID, PromiseDate, StartDate
		from Job J
			inner join JobJobStatus S
				on J.JobID = S.JobID
			inner join JobStatus JS
				on JS.JobStatusID = S.JobStatusID
		where JS.Name = @JobStatusName
		and CompletedOn is null
GO
/****** Object:  StoredProcedure [dbo].[Job_MarkAsInvoiced]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_MarkAsInvoiced]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		update Job set InvoicedDate = getdate() where JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[Job_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Job_Update]
@JobID int = null,
@JobTypeID int = null,
@SpecialInstructions text = null,
@Quantity int = null,
@DeliveryOrPickup char(1) = null,
@CustomerID uniqueidentifier = null,
@PromiseDate datetime = null,
@StartDate datetime = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @JobTypeID is null
		raiserror('JobTypeID is required', 16, 1)
	else if @Quantity is null
		raiserror('Quantity is required', 16, 1)
	else if @DeliveryOrPickup is null
		raiserror('Delivery Or Pickup specification is required', 16, 1)
	else if @CustomerID is null
		raiserror('Customer ID is required.', 16, 1)
	else
		update Job set
		JobTypeID = @JobTypeID, 
		SpecialInstructions = @SpecialInstructions, 
		Quantity = @Quantity, 
		DeliveryOrPickup = @DeliveryOrPickup,
		CustomerID = @CustomerID,
		PromiseDate = @PromiseDate,
		StartDate = @StartDate
		where JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[JobAsset_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobAsset_Get]
@JobAssetID int = null
as
	if @JobAssetID is null
		raiserror('Job Asset ID is required', 16, 1)
	else
		select JobAssetID, Filepath, JobID
		from JobAsset
		where JobAssetID = @JobAssetID
GO
/****** Object:  StoredProcedure [dbo].[JobAsset_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobAsset_Insert]
@Filepath varchar(500) = null,
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @Filepath is null
		raiserror('Filepath is required', 16, 1)
	else
		insert into JobAsset (Filepath, JobID)
		values (@Filepath, @JobID)
GO
/****** Object:  StoredProcedure [dbo].[JobAsset_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobAsset_List]
as
	select JobAssetID, Filepath, JobID
	from JobAsset
GO
/****** Object:  StoredProcedure [dbo].[JobAsset_ListByJob]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobAsset_ListByJob]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		select JobAssetID, Filepath, JobID
		from JobAsset
		where JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[JobAsset_ListByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[JobAsset_ListByJobID] (@jobid int = null)
as
if @jobid is null
	begin
	raiserror('You must provide a jobID.',16,1)
	end
else
	begin
	if not exists (select JobTypeID from Job where JobID = @jobid)
		begin
		raiserror('That jobID does not exist.',16,1)
		end
	else
		begin
		select JobAssetID, JobID, Filepath
		from JobAsset
		where JobID = @jobid
		end
	end
return

-- Get username by ID

GO
/****** Object:  StoredProcedure [dbo].[JobAsset_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobAsset_Update]
@JobAssetID int = null,
@Filepath varchar(500) = null,
@JobID int = null
as
	if @JobAssetID is null
		raiserror('Job Asset ID is required', 16, 1)
	else if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @Filepath is null
		raiserror('Filepath is required', 16, 1)
	else
		update JobAsset
		set
			Filepath = @Filepath,
			JobID = @JobID
		where JobAssetID = @JobAssetID
GO
/****** Object:  StoredProcedure [dbo].[JobContol_AddControlToJobType]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobContol_AddControlToJobType]
@JobControlID int,
@JobTypeID int
as
	if @JobControlID is null
		raiserror('Job Control ID is required', 16, 1)
	else if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else
		insert into JobControlJobType values
		(
			@JobControlID,
			@JobTypeID
		)


GO
/****** Object:  StoredProcedure [dbo].[JobControl_Delete]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobControl_Delete]
@JobControlID int = null
as
	if @JobControlID is null
		raiserror('Job Control ID is required', 16, 1)
	else
		delete from JobControl where JobControlID = @JobControlID
GO
/****** Object:  StoredProcedure [dbo].[JobControl_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[JobControl_Get]
@JobControlID int
as
	if @JobControlID is null
		raiserror('Job Control ID is required', 16, 1)
	else
		select JobControlID, ControlName, ControlTypeName
		from JobControl
			inner join JobControlType
				on JobControl.JobControlTypeID = JobControlType.JobControlTypeID
		where JobControlID = @JobControlID


GO
/****** Object:  StoredProcedure [dbo].[JobControl_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControl_Insert]
	@ControlName varchar(25) = null,
	@JobControlTypeID int = null,
	@JobTypeID int = null
as
	if @ControlName is null
		raiserror('Control Name is required', 16, 1)
	else if @JobControlTypeID is null
		raiserror('Job Control Type ID is required', 16, 1)
	else if @JobTypeID is null
		raiserror('Job Type ID is required', 15, 1)
	else
		insert into JobControl (ControlName, JobControlTypeID, JobTypeID) values
		(
			@ControlName,
			@JobControlTypeID,
			@JobTypeID
		)

		select cast((select scope_identity() as JobControLID) as int)
GO
/****** Object:  StoredProcedure [dbo].[JobControl_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControl_List]
as
	select JobControlID, ControlName, ControlTypeName
	from JobControl
		inner join JobControlType
			on JobControl.JobControlTypeID = JobControlType.JobControlTypeID


GO
/****** Object:  StoredProcedure [dbo].[JobControl_ListByJobType]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControl_ListByJobType]
@JobTypeID int
as
	if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else
		select JC.JobControlID, JC.ControlName, JCT.ControlTypeName
		from JobControl JC
			inner join JobControlType JCT
				on JC.JobControlTypeID = JCT.JobControlTypeID
		where JC.JobTypeID = @JobTypeID


GO
/****** Object:  StoredProcedure [dbo].[JobControl_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControl_Update]
	@JobControlID int,
	@ControlName varchar(25),
	@JobControlTypeID int
as
	if @JobControlID is null
		raiserror('Job Control ID is required', 16, 1)
	else if @ControlName is null
		raiserror('Control Name is required', 16, 1)
	else if @JobControlTypeID is null
		raiserror('Job Control Type ID is required', 16, 1)
	else
		update JobControl set
			ControlName = @ControlName,
			JobControlTypeID = @JobControlTypeID
		where JobControlID = @JobControlID

		select cast((select scope_identity() as JobControlID) as int)


GO
/****** Object:  StoredProcedure [dbo].[JobControlType_Delete]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobControlType_Delete]
@JobControlTypeID int
as
	if @JobControlTypeID is null
		raiserror('Job Control Type ID is required', 16, 1)
	else
		delete from JobControlType
		where JobControlTypeID = @JobControlTypeID

GO
/****** Object:  StoredProcedure [dbo].[JobControlType_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControlType_Get]
@JobControlTypeID int
as
	select JobControlTypeID, ControlTypeName
	from JobControlType
	where JobControlTypeID = @JobControlTypeID

GO
/****** Object:  StoredProcedure [dbo].[JobControlType_GetByName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[JobControlType_GetByName]
@Name varchar(255)
as
	if @Name is null
		raiserror('Name is required.', 16, 1)
	else
		select JobControlTypeID, ControlTypeName
		from JobControlType
		where ControlTypeName like ('%' + @Name + '%')



GO
/****** Object:  StoredProcedure [dbo].[JobControlType_GetControlTypeByControlID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobControlType_GetControlTypeByControlID]
@JobControlID int = null
as
	if @JobControlID is null
		raiserror('Job Control ID is required.', 16, 1)
	else
		select J.JobControlTypeID, J.ControlTypeName
		from JobControlType J
			inner join JobControl C
				on J.JobControlTypeID = C.JobControlTypeID
		where C.JobControlID = @JobControlID
GO
/****** Object:  StoredProcedure [dbo].[JobControlType_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControlType_Insert]
@ControlName varchar(25)
as
	if @ControlName is null
		raiserror('Control Name is required', 16, 1)
	else
		insert into JobControlType (ControlTypeName) values
		(
			@ControlName
		)

		select cast((select scope_identity() as JobControlTypeID) as int)

GO
/****** Object:  StoredProcedure [dbo].[JobControlType_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControlType_List]
as
	select JobControlTypeID, ControlTypeName
	from JobControlType

GO
/****** Object:  StoredProcedure [dbo].[JobControlType_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobControlType_Update]
@ControlName varchar(25),
@JobControlTypeID int
as
	if @ControlName is null
		raiserror('Control Name is required', 16, 1)
	else if @JobControlTypeID is null
		raiserror('Job Control Type ID is required', 16, 1)
	else
		update JobControlType set
			ControlTypeName = @ControlName
		where JobControlTypeID = @JobControlTypeID

		select cast((select scope_identity() as JobControlTypeID) as int)

GO
/****** Object:  StoredProcedure [dbo].[JobInfo_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobInfo_Insert]
@NameKey varchar(25) = null,
@DataValue text = null,
@JobID int = null
as
	if @NameKey is null
		raiserror('Name Key is required', 16, 1)
	else if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		insert into JobInfo (NameKey, DataValue, JobID)
		values
		(
			@NameKey,
			@DataValue,
			@JobID
		)
GO
/****** Object:  StoredProcedure [dbo].[JobInfo_ListByJob]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobInfo_ListByJob]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required.', 16, 1)
	else
		select JobInfoID, NameKey, DataValue, JobID
		from JobInfo
		where JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[JobInfo_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobInfo_Update]
@JobInfoID int = null,
@NameKey varchar(25) = null,
@DataValue text = null,
@JobID int = null
as
	if @JobInfoID is null
		raiserror('Job Info ID is required', 16, 1)
	else if @NameKey is null
		raiserror('Name Key is required', 16, 1)
	else if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		update JobInfo
		set
			NameKey = @NameKey,
			DataValue = @DataValue,
			JobID = @JobID
		where JobInfoID = @JobInfoID
GO
/****** Object:  StoredProcedure [dbo].[JobJobStatus_Change]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobJobStatus_Change]
@JobStatusID int = null,
@JobID int = null,
@UserID uniqueidentifier = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is required', 16, 1)
	else if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @UserID is null
		raiserror('User ID is required', 16, 1)
	else
		begin tran
			update JobJobStatus set CompletedOn = GetDate() where JobID = @JobID and CompletedOn is NULL

			insert into JobJobStatus (JobStatusID, JobID, UserID, CompletedOn, ChangedOn)
			values (@JobStatusID, @JobID, @UserID, NULL, getdate())
			
			if @@error <> 0
				rollback tran
			else
				commit tran
GO
/****** Object:  StoredProcedure [dbo].[JobJobStatus_GetCurrentByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobJobStatus_GetCurrentByJobID]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		select JobID, CompletedOn, UserID, JobStatusID, ChangedOn
		from JobJobStatus
		where CompletedOn is null
			and JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[JobJobStatus_Initialize]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobJobStatus_Initialize]
@JobID int = null,
@UserID uniqueidentifier = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @UserID is null
		raiserror('User ID is required', 16, 1)
	else
		insert into JobJobStatus (JobID, CompletedOn, UserID, JobStatusID)
		values (@JobID, NULL, @UserID, (select top 1 JobStatusID 
										from JobStatus 
										order by JobStatusID))
GO
/****** Object:  StoredProcedure [dbo].[JobJobStatus_ListJobStatusesByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobJobStatus_ListJobStatusesByJobID]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		select S.Name, JJ.ChangedOn, JJ.CompletedOn, (U.FirstName + ' ' + U.LastName) 'User'
		from JobJobStatus JJ
			inner join JobStatus S
				on JJ.JobStatusID = S.JobStatusID
			inner join aspnet_Users U
				on JJ.UserID = U.UserId
		where JJ.JobID = @JobID
GO
/****** Object:  StoredProcedure [dbo].[JobJobStatus_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[JobJobStatus_Update] (@jobid int = null, 
									 @userid uniqueidentifier = null,
									 @jobstatusid int = null)
as
if @jobid is null or @userid is null or @jobstatusid is null
	begin
	raiserror('You must provide a JobID, UserID and JobStatusID.',16,1)
	end
else
	begin
	if not exists (select JobTypeID from Job where JobID = @jobid)
		begin
		raiserror('That jobID does not exist.',16,1)
		end
	else
		begin
		if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
			begin
			raiserror('That job status ID does not exist.',16,1)
			end
		else
			begin
			if not exists (select UserName from aspnet_Users where UserId = @userid)
				begin
				raiserror('That employee ID does not exist.',16,1)
				end
			else
				begin
				Update JobJobStatus
				set UserID = @userid
				where JobID = @jobid and
					  UserID = @userid and
					  JobStatusID = @jobstatusid
				end
			end
		end
	end
return
GO
/****** Object:  StoredProcedure [dbo].[JobProof_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[JobProof_Insert] (@jobid int = null, @filepath varchar(500) = null)
as
if @jobid is null or @filepath is null
	begin
	raiserror('You must provide a jobID and Filepath.',16,1)
	end
else
	begin
	if not exists (select CustomerID from Job where JobID = @jobid)
		begin
		raiserror('That jobID does not exist.',16,1)
		end
	else
		begin
		insert into JobProof (Filepath, JobID, Active, DateCreated)
		values (@filepath, @jobid, 1, GETDATE())
		select cast((select scope_identity() as JobProofID) as int)
		if @@ERROR <>0
			begin
			raiserror ('Insert Job Proof Failed.',16,1)
			end
		end
	end
return

-- List Job Proofs by JobID

GO
/****** Object:  StoredProcedure [dbo].[JobProof_ListByJobID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[JobProof_ListByJobID] (@jobid int = null)
as
if @jobid is null
	begin
	raiserror('You must provide a jobID.',16,1)
	end
else
	begin
	if not exists (select JobTypeID from Job where JobID = @jobid)
		begin
		raiserror('That jobID does not exist.',16,1)
		end
	else
		begin
		select JobProofID, JobID, Filepath, DateCreated, Active
		from JobProof
		where JobID = @jobid
		end
	end
return

-- List Job Assets by JobID

GO
/****** Object:  StoredProcedure [dbo].[JobStatus_Archive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobStatus_Archive]
@JobStatusID int = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is requred', 16, 1)
	else
		update JobStatus
		set Archived = 'Y'
		where JobStatusID = @JobStatusID
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_ChangeOrderingNumber]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobStatus_ChangeOrderingNumber]
@JobStatusID int = null,
@OrderingNumber int = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is required', 16, 1)
	else if @OrderingNumber is null
		raiserror('Ordering Number is required', 16, 1)
	else
		update JobStatus set 
			OrderingNumber = @OrderingNumber
		where JobStatusID = @JobStatusID
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_Get]
@JobStatusID int = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is required', 16, 1)
	else
		select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
		from JobStatus
		where JobStatusID = @JobStatusID
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_GetByName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_GetByName]
@Name varchar(50) = null
as
	if @Name is null
		raiserror('Name is required', 16, 1)
	else
		select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
		from JobStatus
		where Name = @Name
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_GetByOrderingNumber]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobStatus_GetByOrderingNumber]
@OrderingNumber int = null
as
	if @OrderingNumber is null
		raiserror('Ordering Number is required', 16, 1)
	else
		select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
		from JobStatus
		where OrderingNumber = @OrderingNumber
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_GetFirstOrderingNo]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_GetFirstOrderingNo]
as
	select OrderingNumber
	from JobStatus
	where JobStatusID = 1
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_GetLastOrderingNo]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_GetLastOrderingNo]
as
	select MAX(OrderingNumber) 'Ordering Number'
	from JobStatus

GO
/****** Object:  StoredProcedure [dbo].[JobStatus_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_Insert]
@Name varchar(50) = null,
@EmployeeRoleID int
as
	if @Name is null
		raiserror('Name is required', 16, 1)
	else
		declare @OrderingNumber int
		set @OrderingNumber = (	select MAX(OrderingNumber)
							from JobStatus ) + 1

		insert into JobStatus (Name, Archived, EmployeeRoleID, OrderingNumber)
		values (@Name, 'N', @EmployeeRoleID, @OrderingNumber)
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_List]
as
	select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
	from JobStatus
	where Archived = 'N'
	order by OrderingNumber
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_ListArchived]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_ListArchived]
as
	select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
	from JobStatus
	where Archived = 'Y'
	order by OrderingNumber
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_ListByRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_ListByRole]
@RoleID int = null
as
	if @RoleID is null
		raiserror('Role is required', 16, 1)
	else
		select JobStatusID, Name, Archived, EmployeeRoleID, OrderingNumber
		from JobStatus
		where EmployeeRoleID = @RoleID
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_ListWithStatusName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobStatus_ListWithStatusName]
as
	select JobStatusID, Name, Archived, R.RoleName
	from JobStatus J
		inner join EmployeeRole R
			on J.EmployeeRoleID = R.RoleID
	where Archived = 'N'
	order by OrderingNumber
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_UnArchive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobStatus_UnArchive]
@JobStatusID int = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is requred', 16, 1)
	else
		update JobStatus
		set Archived = 'N'
		where JobStatusID = @JobStatusID
GO
/****** Object:  StoredProcedure [dbo].[JobStatus_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobStatus_Update]
@JobStatusID int = null,
@Name varchar(50) = null
as
	if @JobStatusID is null
		raiserror('Job Status ID is required', 16, 1)
	if @Name is null
		raiserror('Name is required', 16, 1)
	else
		update JobStatus
		set
			Name = @Name
		where JobStatusID = @JobStatusID
GO
/****** Object:  StoredProcedure [dbo].[JobType_Archive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_Archive]
@JobTypeID int
as
	if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else
		update JobType set
			Archived = 'Y'
		where JobTypeID = @JobTypeID

GO
/****** Object:  StoredProcedure [dbo].[JobType_Get]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_Get]
@JobTypeID int
as
	if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else
		select JobTypeID, Name, EstimatedTimeToComplete, JobTypeDescription, Archived
		from JobType
		where JobTypeID = @JobTypeID


GO
/****** Object:  StoredProcedure [dbo].[JobType_GetByJob]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_GetByJob]
@JobID int = null
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else
		select JobType.JobTypeID, Name, EstimatedTimeToComplete, JobTypeDescription, Archived
		from JobType
			inner join Job
				on Job.JobTypeID = JobType.JobTypeID
		where Job.JobID = @JobID

GO
/****** Object:  StoredProcedure [dbo].[JobType_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_Insert]
@Name varchar(50),
@EstimatedTimeToComplete char(6),
@JobTypeDescription text
as
	if @Name is null
		raiserror('Name is required', 16, 1)
	else
		insert into JobType (Name, EstimatedTimeToComplete, JobTypeDescription, Archived) values
			(
				@Name,
				@EstimatedTimeToComplete,
				@JobTypeDescription,
				'N'
			)

		
		select cast((select scope_identity() as JobTypeID) as int)


GO
/****** Object:  StoredProcedure [dbo].[JobType_List]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_List]
as
	select JobTypeID, Name, EstimatedTimeToComplete, JobTypeDescription, Archived
	from JobType
	where Archived = 'N'


GO
/****** Object:  StoredProcedure [dbo].[JobType_ListArchived]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobType_ListArchived]
as
	select JobTypeID, Name, EstimatedTimeToComplete, JobTypeDescription, Archived
	from JobType
	where Archived = 'Y'

GO
/****** Object:  StoredProcedure [dbo].[JobType_UnArchive]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[JobType_UnArchive]
@JobTypeID int
as
	if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else
		update JobType
		set Archived = 'N'
		where JobTypeID = @JobTypeID

GO
/****** Object:  StoredProcedure [dbo].[JobType_Update]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[JobType_Update]
@Name varchar(50),
@EstimatedTimeToComplete char(6),
@JobTypeDescription text,
@JobTypeID int
as
	if @JobTypeID is null
		raiserror('Job Type ID is required', 16, 1)
	else if @Name is null
		raiserror('Name is required', 16, 1)
	else
		update JobType set
				Name = @Name,
				EstimatedTimeToComplete = @EstimatedTimeToComplete,
				JobTypeDescription = @JobTypeDescription
		where JobTypeID = @JobTypeID

		select cast((select scope_identity() as JobTypeID) as int)


GO
/****** Object:  StoredProcedure [dbo].[ListCustomersByJobStatusID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ListCustomersByJobStatusID] (@jobstatusid int = null)
as
if @jobstatusid is null
	begin
	raiserror('You must provide a job status ID.',16,1)
	end
else
	begin
	if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
		begin
		raiserror('That job status ID does not exist.',16,1)
		end
	else
		begin
		Select distinct JobStatus.Name as JobStatus,
			   Company.CompanyID,
			   Company.Name as CompanyName,
			   aspnet_Users.UserId as CustomerID,
			   aspnet_Users.FirstName as CustomerFirstName, 
			   aspnet_Users.LastName as CustomerLastName,
			   aspnet_Membership.Email as CustomerEmail
		from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
				     left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
				     left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
				     left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
				     left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
				     left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
		where JobJobStatus.JobStatusID = @jobstatusid and JobJobStatus.CompletedOn is NULL
		end
	end
return

-- Get JobDetails by Job ID

GO
/****** Object:  StoredProcedure [dbo].[ListJobsByJobStatusID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListJobsByJobStatusID] (@jobstatusid int = null)
as
if @jobstatusid is null
	begin
	raiserror('You must provide a job status ID.',16,1)
	end
else
	begin
	if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
		begin
		raiserror('That job status ID does not exist.',16,1)
		end
	else
		begin
		Select Job.JobID, 
			   JobType.Name as JobName, 
			   JobStatus.Name as JobStatus,
			   Company.CompanyID,
			   Company.Name as CompanyName,
			   aspnet_Users.UserId as CustomerID,
			   aspnet_Users.FirstName as CustomerFirstName, 
			   aspnet_Users.LastName as CustomerLastName, 
			   Job.Quantity,
			   Job.StartDate,
			   Job.PromiseDate,
			   aspnet_Membership.Email as CustomerEmail
		from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
				     left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
				     left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
				     left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
				     left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
				     left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
		where JobJobStatus.JobStatusID = @jobstatusid and JobJobStatus.CompletedOn is NULL
		end
	end
return

-- Get Jobs by Job StatusID and CustomerID

GO
/****** Object:  StoredProcedure [dbo].[ListJobsByJobStatusIDCompanyName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListJobsByJobStatusIDCompanyName] (@jobstatusid int = null, @companyname varchar(101) = null)
as
if @jobstatusid is null or @companyname is null
	begin
	raiserror('You must provide a job status ID and a Compamy Name.',16,1)
	end
else
	begin
	if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
		begin
		raiserror('That job status ID does not exist.',16,1)
		end
	else
			begin
			Select Job.JobID,
				   JobType.Name as JobName, 
				   JobStatus.Name as JobStatus,
				   Company.CompanyID,
				   Company.Name as CompanyName,
				   aspnet_Users.UserId as CustomerID,
				   aspnet_Users.FirstName as CustomerFirstName, 
				   aspnet_Users.LastName as CustomerLastName, 
				   Job.Quantity,
				   Job.StartDate,
				   Job.PromiseDate,
				   aspnet_Membership.Email as CustomerEmail
			from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
						 left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
						 left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
						 left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
						 left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
						 left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
			where JobJobStatus.JobStatusID = @jobstatusid and Company.Name like '%'+@companyname+'%' and JobJobStatus.CompletedOn is NULL
			end
		end
return

--List jobs with JobStatus ID and partial match Customer Name


GO
/****** Object:  StoredProcedure [dbo].[ListJobsByJobStatusIDCustomerID]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListJobsByJobStatusIDCustomerID] (@jobstatusid int = null, @userid uniqueidentifier = null)
as
if @jobstatusid is null or @userid is null
	begin
	raiserror('You must provide a job status ID and a CustomerID.',16,1)
	end
else
	begin
	if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
		begin
		raiserror('That job status ID does not exist.',16,1)
		end
	else
		begin
		if not exists (select ApplicationId from aspnet_Users where UserId = @userid)
			begin
			raiserror('That customer ID does not exist.',16,1)
			end
		else
			begin
			Select Job.JobID,
				   JobType.Name as JobName, 
				   JobStatus.Name as JobStatus,
				   Company.CompanyID,
				   Company.Name as CompanyName,
				   aspnet_Users.UserId as CustomerID,
				   aspnet_Users.FirstName as CustomerFirstName, 
				   aspnet_Users.LastName as CustomerLastName, 
				   Job.Quantity,
				   Job.StartDate,
				   Job.PromiseDate,
				   aspnet_Membership.Email as CustomerEmail
			from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
						 left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
						 left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
						 left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
						 left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
						 left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
			where JobJobStatus.JobStatusID = @jobstatusid and aspnet_Users.UserId = @userid and JobJobStatus.CompletedOn is NULL
			end
		end
	end
return

-- Get JobDetails by Job ID

GO
/****** Object:  StoredProcedure [dbo].[ListJobsByJobStatusIDCustomerName]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListJobsByJobStatusIDCustomerName] (@jobstatusid int = null, @name varchar(101) = null)
as
if @jobstatusid is null or @name is null
	begin
	raiserror('You must provide a job status ID and a Customer Name.',16,1)
	end
else
	begin
	if not exists (select Name from JobStatus where JobStatusID = @jobstatusid)
		begin
		raiserror('That job status ID does not exist.',16,1)
		end
	else
			begin
			Select Job.JobID,
				   JobType.Name as JobName, 
				   JobStatus.Name as JobStatus,
				   Company.CompanyID,
				   Company.Name as CompanyName,
				   aspnet_Users.UserId as CustomerID,
				   aspnet_Users.FirstName as CustomerFirstName, 
				   aspnet_Users.LastName as CustomerLastName, 
				   Job.Quantity,
				   Job.StartDate,
				   Job.PromiseDate,
				   aspnet_Membership.Email as CustomerEmail
			from JobType left outer join Job on JobType.JobTypeID = Job.JobTypeID
						 left outer join JobJobStatus on Job.JobID = JobJobStatus.JobID
						 left outer join JobStatus on JobJobStatus.JobStatusID = JobStatus.JobStatusID
						 left outer join aspnet_Users on Job.CustomerID = aspnet_Users.UserID
						 left outer join Company on aspnet_Users.CompanyID = Company.CompanyID
						 left outer join aspnet_Membership on aspnet_Users.UserID = aspnet_Membership.UserID
			where JobJobStatus.JobStatusID = @jobstatusid and (aspnet_Users.FirstName + ' ' + aspnet_Users.LastName) like '%'+@name+'%' and JobJobStatus.CompletedOn is NULL
			end
		end
return

-- Add Quote to job

GO
/****** Object:  StoredProcedure [dbo].[UserMessage_Insert]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserMessage_Insert] (@MessageSubject varchar(200), @MessageBody text, @JobID int, 
@SentFrom uniqueidentifier, @SentTo uniqueidentifier, @MessagedOn datetime)
as
	if @JobID is null
		raiserror('Job ID is required', 16, 1)
	else if @SentFrom is null
		raiserror('Sent From is required', 16, 1)
	else if @SentTo is null
		raiserror('Sent To is required', 16, 1)
	else if @MessagedOn is null
		raiserror('Messaged On is required', 16, 1)
	else
		insert into UserMessage (MessageSubject, MessageBody, JobID, SentFrom, SentTo, MessagedOn) values
		(@MessageSubject, @MessageBody, @JobID, @SentFrom, @SentTo, @MessagedOn)
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CustomerAddress] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[Province] [char](2) NULL,
	[PostalCode] [char](6) NULL,
	[PhoneNumber] [char](10) NULL,
	[CompanyID] [int] NULL,
	[Approved] [bit] NULL,
	[IsAdmin] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(200,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CompanyAddress] [varchar](150) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Province] [char](2) NOT NULL,
	[PostalCode] [char](6) NOT NULL,
	[PhoneNumber] [char](10) NOT NULL,
	[Website] [varchar](50) NULL,
	[Flagged] [bit] NOT NULL,
	[Archived] [char](1) NULL,
	[Approved] [bit] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeRole](
	[RoleID] [int] IDENTITY(1,3) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RoleID] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeRoleaspnet_Users]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRoleaspnet_Users](
	[RoleID] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_EmployeeRoleaspnet_Users] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(100000,1) NOT NULL,
	[JobTypeID] [int] NOT NULL,
	[SpecialInstructions] [text] NULL,
	[Quantity] [int] NOT NULL,
	[DeliveryOrPickup] [char](1) NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[PromiseDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[InvoicedDate] [datetime] NULL,
	[Paid] [char](1) NULL,
	[QuoteAmount] [money] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobAsset]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobAsset](
	[JobAssetID] [int] IDENTITY(1,1) NOT NULL,
	[Filepath] [varchar](500) NOT NULL,
	[JobID] [int] NOT NULL,
 CONSTRAINT [PK_JobAsset] PRIMARY KEY CLUSTERED 
(
	[JobAssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobControl]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobControl](
	[JobControlID] [int] IDENTITY(1,3) NOT NULL,
	[ControlName] [varchar](25) NOT NULL,
	[JobControlTypeID] [int] NOT NULL,
	[JobTypeID] [int] NOT NULL,
 CONSTRAINT [PK_JobControl] PRIMARY KEY CLUSTERED 
(
	[JobControlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobControlType]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobControlType](
	[JobControlTypeID] [int] IDENTITY(1,3) NOT NULL,
	[ControlTypeName] [varchar](25) NOT NULL,
 CONSTRAINT [PK_JobControlType] PRIMARY KEY CLUSTERED 
(
	[JobControlTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobInfo]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobInfo](
	[JobInfoID] [int] IDENTITY(300,4) NOT NULL,
	[NameKey] [varchar](25) NOT NULL,
	[DataValue] [text] NULL,
	[JobID] [int] NOT NULL,
 CONSTRAINT [PK_JobInfo] PRIMARY KEY CLUSTERED 
(
	[JobInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobJobStatus]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobJobStatus](
	[JobID] [int] NOT NULL,
	[CompletedOn] [datetime] NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[JobStatusID] [int] NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_JobJobStatus] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC,
	[UserID] ASC,
	[ChangedOn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobProof]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobProof](
	[JobProofID] [int] IDENTITY(1,1) NOT NULL,
	[Filepath] [varchar](500) NOT NULL,
	[JobID] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_JobProof] PRIMARY KEY CLUSTERED 
(
	[JobProofID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobStatus]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobStatus](
	[JobStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Archived] [char](1) NULL,
	[EmployeeRoleID] [int] NULL,
	[OrderingNumber] [int] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[JobStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobType]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobType](
	[JobTypeID] [int] IDENTITY(20,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[EstimatedTimeToComplete] [char](6) NULL,
	[JobTypeDescription] [text] NULL,
	[Archived] [char](1) NULL,
 CONSTRAINT [PK_JobType] PRIMARY KEY CLUSTERED 
(
	[JobTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMessage]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMessage](
	[UserMessageID] [int] IDENTITY(1000000,1) NOT NULL,
	[MessageSubject] [varchar](200) NULL,
	[MessageBody] [text] NULL,
	[JobID] [int] NOT NULL,
	[SentFrom] [uniqueidentifier] NOT NULL,
	[SentTo] [uniqueidentifier] NOT NULL,
	[MessagedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[UserMessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CustomerView]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CustomerView]
AS
SELECT dbo.aspnet_Users.UserId, dbo.aspnet_Users.UserName, dbo.aspnet_Users.LastActivityDate, dbo.aspnet_Users.FirstName, dbo.aspnet_Users.LastName, 
                  dbo.aspnet_Users.CustomerAddress, dbo.aspnet_Users.City, dbo.aspnet_Users.Province, dbo.aspnet_Users.PostalCode, dbo.aspnet_Users.PhoneNumber, 
                  dbo.aspnet_Users.Approved, dbo.Company.Name
FROM     dbo.aspnet_Users LEFT OUTER JOIN
                  dbo.Company ON dbo.aspnet_Users.CompanyID = dbo.Company.CompanyID INNER JOIN
                  dbo.aspnet_UsersInRoles ON dbo.aspnet_Users.UserId = dbo.aspnet_UsersInRoles.UserId INNER JOIN
                  dbo.aspnet_Roles ON dbo.aspnet_UsersInRoles.RoleId = dbo.aspnet_Roles.RoleId
WHERE  (dbo.aspnet_Roles.LoweredRoleName = 'customer')


GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  


GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  


GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  


GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  


GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  


GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  


GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  


GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  


GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 16/04/2013 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  


GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'db6f7a03-99dd-4090-82a4-c756f995fb46', N'A+fBgLdBQm3L3Dw+xBxe7M6sxE0=', 1, N'6BK0MPXxmywtbSXCk/v9Yg==', NULL, N'Brentwood.Test.Email@gmail.com', N'brentwood.test.email@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A1A201392F00 AS DateTime), CAST(0x0000A1A201392F00 AS DateTime), CAST(0x0000A1A201392F00 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'629cebdf-5db2-4077-8a26-5f61ecc312cf', N'/b0Ho7ePbKit5GH9AiXjkzat16Y=', 1, N'cr8MBEvlRFOPy8zq6FC4rA==', NULL, N'bwadmin@brentwood.com', N'bwadmin@brentwood.com', NULL, NULL, 1, 0, CAST(0x0000A15D010A47F8 AS DateTime), CAST(0x0000A1A20134A42D AS DateTime), CAST(0x0000A15D010A47F8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', N'YnbGShAv2OrG29pdn8/F2ztbRrs=', 1, N'FmtBQgUrSwaX40TSDZaHrg==', NULL, N'eike@local.box', N'eike@local.box', NULL, NULL, 1, 0, CAST(0x0000A1A1016D45C4 AS DateTime), CAST(0x0000A1A201389FE5 AS DateTime), CAST(0x0000A1A1016D45C4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'a375c12d-8238-4b01-b1a6-faf9820c0391', N'4S0lB1wjOgsBFqEFs4eLsGBN7bs=', 1, N'1d5JJUz7LEyuT8nnMJb0tQ==', NULL, N'Brentwood.Test.Email@gmail.com', N'pbj@hotmail.com', NULL, NULL, 1, 0, CAST(0x0000A1A2012F3EDC AS DateTime), CAST(0x0000A1A20148603C AS DateTime), CAST(0x0000A1A2012F3EDC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'38d4fc1a-c527-4877-8a27-8b4dee580192', N'Admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'bc4342e3-29c3-4388-8fa6-c9f74f697646', N'Approved Customer', N'approved customer', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'38f52ca4-8d67-4af1-92e5-85dd94fc11ee', N'Customer', N'customer', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'ce432e80-8751-479c-a3c9-8d0e33d375fc', N'Employee', N'employee', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [FirstName], [LastName], [CustomerAddress], [City], [Province], [PostalCode], [PhoneNumber], [CompanyID], [Approved], [IsAdmin]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'db6f7a03-99dd-4090-82a4-c756f995fb46', N'BobJenkins', N'bobjenkins', NULL, 0, CAST(0x0000A1A201392F00 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [FirstName], [LastName], [CustomerAddress], [City], [Province], [PostalCode], [PhoneNumber], [CompanyID], [Approved], [IsAdmin]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'629cebdf-5db2-4077-8a26-5f61ecc312cf', N'BWAdmin', N'bwadmin', NULL, 0, CAST(0x0000A1A20134A42D AS DateTime), N'Brentwood', N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [FirstName], [LastName], [CustomerAddress], [City], [Province], [PostalCode], [PhoneNumber], [CompanyID], [Approved], [IsAdmin]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'a375c12d-8238-4b01-b1a6-faf9820c0391', N'CustomerPBJ', N'customerpbj', NULL, 0, CAST(0x0000A1A20148603C AS DateTime), N'Peter', N'James', N'4445 Calgary Trail NW', N'Edmonton', N'AB', N'T6H   ', N'7804300164', NULL, 1, 0)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [FirstName], [LastName], [CustomerAddress], [City], [Province], [PostalCode], [PhoneNumber], [CompanyID], [Approved], [IsAdmin]) VALUES (N'cdcd62f5-0b67-4c41-a5e9-edbe5f0a9d1c', N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', N'EmployeeIke', N'employeeike', NULL, 0, CAST(0x0000A1A201419F12 AS DateTime), N'Employee', N'Ike', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a375c12d-8238-4b01-b1a6-faf9820c0391', N'38f52ca4-8d67-4af1-92e5-85dd94fc11ee')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'629cebdf-5db2-4077-8a26-5f61ecc312cf', N'38d4fc1a-c527-4877-8a27-8b4dee580192')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', N'ce432e80-8751-479c-a3c9-8d0e33d375fc')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'db6f7a03-99dd-4090-82a4-c756f995fb46', N'bc4342e3-29c3-4388-8fa6-c9f74f697646')
SET IDENTITY_INSERT [dbo].[EmployeeRole] ON 

INSERT [dbo].[EmployeeRole] ([RoleID], [RoleName]) VALUES (1, N'Manager')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleName]) VALUES (4, N'Designer')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleName]) VALUES (7, N'Pressman')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleName]) VALUES (10, N'Finishing')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleName]) VALUES (13, N'Deliver')
SET IDENTITY_INSERT [dbo].[EmployeeRole] OFF
INSERT [dbo].[EmployeeRoleaspnet_Users] ([RoleID], [UserId]) VALUES (1, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e')
INSERT [dbo].[EmployeeRoleaspnet_Users] ([RoleID], [UserId]) VALUES (4, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e')
INSERT [dbo].[EmployeeRoleaspnet_Users] ([RoleID], [UserId]) VALUES (7, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e')
INSERT [dbo].[EmployeeRoleaspnet_Users] ([RoleID], [UserId]) VALUES (10, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e')
INSERT [dbo].[EmployeeRoleaspnet_Users] ([RoleID], [UserId]) VALUES (13, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e')
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobID], [JobTypeID], [SpecialInstructions], [Quantity], [DeliveryOrPickup], [CustomerID], [PromiseDate], [StartDate], [InvoicedDate], [Paid], [QuoteAmount]) VALUES (101046, 1044, N'', 15, N'D', N'a375c12d-8238-4b01-b1a6-faf9820c0391', CAST(0x0000A1A500097A1E AS DateTime), CAST(0x0000A1A200CF3B21 AS DateTime), NULL, N'N', 100.0000)
INSERT [dbo].[Job] ([JobID], [JobTypeID], [SpecialInstructions], [Quantity], [DeliveryOrPickup], [CustomerID], [PromiseDate], [StartDate], [InvoicedDate], [Paid], [QuoteAmount]) VALUES (101047, 1044, N'', 5, N'P', N'a375c12d-8238-4b01-b1a6-faf9820c0391', CAST(0x0000A1A5000CFFE6 AS DateTime), CAST(0x0000A1A200D2C0E8 AS DateTime), NULL, N'N', NULL)
INSERT [dbo].[Job] ([JobID], [JobTypeID], [SpecialInstructions], [Quantity], [DeliveryOrPickup], [CustomerID], [PromiseDate], [StartDate], [InvoicedDate], [Paid], [QuoteAmount]) VALUES (101048, 1044, N'', 12, N'P', N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', CAST(0x0000A1A500108E9C AS DateTime), CAST(0x0000A1A200D64F9D AS DateTime), NULL, N'N', NULL)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[JobAsset] ON 

INSERT [dbo].[JobAsset] ([JobAssetID], [Filepath], [JobID]) VALUES (1048, N'C:\Users\Jack\SkyDrive\Documents\254 Capstone\Rev 3\Website\Customer\Images\CustomerPBJ\2013\Apr\Business Card_16-12-34\Jellyfish.jpg', 101046)
INSERT [dbo].[JobAsset] ([JobAssetID], [Filepath], [JobID]) VALUES (1049, N'C:\Users\Jack\SkyDrive\Documents\254 Capstone\Rev 3\Website\Customer\Images\CustomerPBJ\2013\Apr\Business Card_16-12-34\Desert.jpg', 101046)
INSERT [dbo].[JobAsset] ([JobAssetID], [Filepath], [JobID]) VALUES (1050, N'C:\Users\Jack\SkyDrive\Documents\254 Capstone\Rev 3\Website\Customer\Images\CustomerPBJ\2013\Apr\Business Card_16-12-47\Tulips.jpg', 101047)
INSERT [dbo].[JobAsset] ([JobAssetID], [Filepath], [JobID]) VALUES (1051, N'C:\Users\Jack\SkyDrive\Documents\254 Capstone\Rev 3\Website\Images\EmployeeIke\2013\Apr\Business Card_16-13-00\Penguins.jpg', 101048)
SET IDENTITY_INSERT [dbo].[JobAsset] OFF
SET IDENTITY_INSERT [dbo].[JobControl] ON 

INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3076, N'Width', 7, 1044)
INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3079, N'Height', 7, 1044)
INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3082, N'Text Color', 7, 1044)
INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3085, N'Background Color', 7, 1044)
INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3088, N'Icon?', 10, 1044)
INSERT [dbo].[JobControl] ([JobControlID], [ControlName], [JobControlTypeID], [JobTypeID]) VALUES (3091, N'Background Image?', 10, 1044)
SET IDENTITY_INSERT [dbo].[JobControl] OFF
SET IDENTITY_INSERT [dbo].[JobControlType] ON 

INSERT [dbo].[JobControlType] ([JobControlTypeID], [ControlTypeName]) VALUES (1, N'CheckBox')
INSERT [dbo].[JobControlType] ([JobControlTypeID], [ControlTypeName]) VALUES (7, N'TextBox')
INSERT [dbo].[JobControlType] ([JobControlTypeID], [ControlTypeName]) VALUES (10, N'ImageUpload')
SET IDENTITY_INSERT [dbo].[JobControlType] OFF
SET IDENTITY_INSERT [dbo].[JobInfo] ON 

INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5396, N'Width', N'125', 101046)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5400, N'Height', N'75', 101046)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5404, N'Text Color', N'Orange', 101046)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5408, N'Background Color', N'Black', 101046)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5412, N'Width', N'200', 101047)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5416, N'Height', N'500', 101047)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5420, N'Text Color', N'Red', 101047)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5424, N'Background Color', N'Yellow', 101047)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5428, N'Width', N'125', 101048)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5432, N'Height', N'75', 101048)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5436, N'Text Color', N'Blue', 101048)
INSERT [dbo].[JobInfo] ([JobInfoID], [NameKey], [DataValue], [JobID]) VALUES (5440, N'Background Color', N'Orange', 101048)
SET IDENTITY_INSERT [dbo].[JobInfo] OFF
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200D254AE AS DateTime), N'629cebdf-5db2-4077-8a26-5f61ecc312cf', 5, CAST(0x0000A1A200D1ED1A AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200D0DD92 AS DateTime), N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 3, CAST(0x0000A1A200CFA849 AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200D103D5 AS DateTime), N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 1, CAST(0x0000A1A200D0DD92 AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200D1ED1A AS DateTime), N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 3, CAST(0x0000A1A200D103D5 AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200D3507E AS DateTime), N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 6, CAST(0x0000A1A200D254AE AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, NULL, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 7, CAST(0x0000A1A200D3507E AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101046, CAST(0x0000A1A200CFA849 AS DateTime), N'a375c12d-8238-4b01-b1a6-faf9820c0391', 1, CAST(0x0000A1A200CF3B25 AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101047, NULL, N'a375c12d-8238-4b01-b1a6-faf9820c0391', 1, CAST(0x0000A1A200D2C0EA AS DateTime))
INSERT [dbo].[JobJobStatus] ([JobID], [CompletedOn], [UserID], [JobStatusID], [ChangedOn]) VALUES (101048, NULL, N'f1b01aa9-c8cb-4868-bc16-bf13c4e7721e', 1, CAST(0x0000A1A200D64F9F AS DateTime))
SET IDENTITY_INSERT [dbo].[JobProof] ON 

INSERT [dbo].[JobProof] ([JobProofID], [Filepath], [JobID], [Active], [DateCreated]) VALUES (1, N'C:\Users\Jack\SkyDrive\Documents\254 Capstone\Rev 3\Website\Images\CustomerPBJ\2013\Apr\Business Card_16-12-45/Koala.jpg', 101046, 1, CAST(0x0000A1A200D25034 AS DateTime))
SET IDENTITY_INSERT [dbo].[JobProof] OFF
SET IDENTITY_INSERT [dbo].[JobStatus] ON 

INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (1, N'Pending Approval', N'N', 1, 1)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (2, N'Approved', N'N', 1, 2)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (3, N'Pending Quote Approval', N'N', 1, 3)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (4, N'Quote Approved', N'N', 1, 4)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (5, N'In Design', N'N', 4, 5)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (6, N'Pending Design Approval', N'N', 4, 6)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (7, N'Designs Approved', N'N', 4, 7)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (18, N'NewStatus', N'Y', 1, 8)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (19, N'NewerStatus', N'Y', 1, 9)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (20, N'InPrint', N'N', 7, 10)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (21, N'Printing Complete', N'N', 7, 11)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (22, N'Finishing', N'N', 10, 12)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (23, N'Finishing Complete', N'N', 10, 13)
INSERT [dbo].[JobStatus] ([JobStatusID], [Name], [Archived], [EmployeeRoleID], [OrderingNumber]) VALUES (24, N'Delivered', N'N', 13, 14)
SET IDENTITY_INSERT [dbo].[JobStatus] OFF
SET IDENTITY_INSERT [dbo].[JobType] ON 

INSERT [dbo].[JobType] ([JobTypeID], [Name], [EstimatedTimeToComplete], [JobTypeDescription], [Archived]) VALUES (1044, N'Business Card', N'02d12h', N'Basic Business Card', N'N')
SET IDENTITY_INSERT [dbo].[JobType] OFF
/****** Object:  Index [PK__aspnet_A__C93A4C98D251E187]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE43F702D34]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE4BDD5FB0E]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__30910331AD2DFDB1]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__30910331B4C0FA13]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4D4E3B223E]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58BD0E7821]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC06FB6C3938]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B43B197C2]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4D62D65C95]    Script Date: 16/04/2013 2:37:29 PM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 16/04/2013 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF_Approved]  DEFAULT ((0)) FOR [Approved]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('N') FOR [Archived]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [Approved]
GO
ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_DeliveryOrPickup]  DEFAULT ('P') FOR [DeliveryOrPickup]
GO
ALTER TABLE [dbo].[Job] ADD  DEFAULT ('N') FOR [Paid]
GO
ALTER TABLE [dbo].[JobJobStatus] ADD  DEFAULT (getdate()) FOR [ChangedOn]
GO
ALTER TABLE [dbo].[JobProof] ADD  CONSTRAINT [df_jobproof_active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[JobProof] ADD  CONSTRAINT [df_jobproof_datecreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[JobStatus] ADD  DEFAULT ('N') FOR [Archived]
GO
ALTER TABLE [dbo].[JobStatus] ADD  DEFAULT ((0)) FOR [OrderingNumber]
GO
ALTER TABLE [dbo].[JobType] ADD  DEFAULT ('N') FOR [Archived]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_UsersCompany] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK_aspnet_UsersCompany]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[EmployeeRoleaspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeRoleaspnet_Usersaspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[EmployeeRoleaspnet_Users] CHECK CONSTRAINT [FK_EmployeeRoleaspnet_Usersaspnet_Users]
GO
ALTER TABLE [dbo].[EmployeeRoleaspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeRoleaspnet_UsersEmployeeRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[EmployeeRole] ([RoleID])
GO
ALTER TABLE [dbo].[EmployeeRoleaspnet_Users] CHECK CONSTRAINT [FK_EmployeeRoleaspnet_UsersEmployeeRole]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Jobaspnet_Users] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Jobaspnet_Users]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_JobJobType] FOREIGN KEY([JobTypeID])
REFERENCES [dbo].[JobType] ([JobTypeID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_JobJobType]
GO
ALTER TABLE [dbo].[JobAsset]  WITH CHECK ADD  CONSTRAINT [FK_JobAssetJob] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobAsset] CHECK CONSTRAINT [FK_JobAssetJob]
GO
ALTER TABLE [dbo].[JobControl]  WITH CHECK ADD  CONSTRAINT [FK_JobControlJob] FOREIGN KEY([JobTypeID])
REFERENCES [dbo].[JobType] ([JobTypeID])
GO
ALTER TABLE [dbo].[JobControl] CHECK CONSTRAINT [FK_JobControlJob]
GO
ALTER TABLE [dbo].[JobControl]  WITH CHECK ADD  CONSTRAINT [FK_JobControlJobControlType] FOREIGN KEY([JobControlTypeID])
REFERENCES [dbo].[JobControlType] ([JobControlTypeID])
GO
ALTER TABLE [dbo].[JobControl] CHECK CONSTRAINT [FK_JobControlJobControlType]
GO
ALTER TABLE [dbo].[JobInfo]  WITH CHECK ADD  CONSTRAINT [FK_JobInfoJob] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobInfo] CHECK CONSTRAINT [FK_JobInfoJob]
GO
ALTER TABLE [dbo].[JobJobStatus]  WITH CHECK ADD  CONSTRAINT [FK_JobJobStatusJobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobJobStatus] CHECK CONSTRAINT [FK_JobJobStatusJobID]
GO
ALTER TABLE [dbo].[JobJobStatus]  WITH CHECK ADD  CONSTRAINT [FK_JobJobStatusJobStatusID] FOREIGN KEY([JobStatusID])
REFERENCES [dbo].[JobStatus] ([JobStatusID])
GO
ALTER TABLE [dbo].[JobJobStatus] CHECK CONSTRAINT [FK_JobJobStatusJobStatusID]
GO
ALTER TABLE [dbo].[JobJobStatus]  WITH CHECK ADD  CONSTRAINT [FK_JobJobStatusUserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[JobJobStatus] CHECK CONSTRAINT [FK_JobJobStatusUserId]
GO
ALTER TABLE [dbo].[JobProof]  WITH CHECK ADD  CONSTRAINT [FK_JobProofJob] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobProof] CHECK CONSTRAINT [FK_JobProofJob]
GO
ALTER TABLE [dbo].[JobStatus]  WITH CHECK ADD  CONSTRAINT [FK_JobStatus_EmployeeRole] FOREIGN KEY([EmployeeRoleID])
REFERENCES [dbo].[EmployeeRole] ([RoleID])
GO
ALTER TABLE [dbo].[JobStatus] CHECK CONSTRAINT [FK_JobStatus_EmployeeRole]
GO
ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK_MessageJob] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK_MessageJob]
GO
ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK_UserMessageaspnet_UsersFrom] FOREIGN KEY([SentFrom])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK_UserMessageaspnet_UsersFrom]
GO
ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK_UserMessageaspnet_UsersTo] FOREIGN KEY([SentTo])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK_UserMessageaspnet_UsersTo]
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
         Begin Table = "aspnet_Users"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 168
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Company"
            Begin Extent = 
               Top = 203
               Left = 412
               Bottom = 364
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_UsersInRoles"
            Begin Extent = 
               Top = 11
               Left = 329
               Bottom = 128
               Right = 523
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_Roles"
            Begin Extent = 
               Top = 11
               Left = 615
               Bottom = 172
               Right = 837
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
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CustomerView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CustomerView'
GO
USE [master]
GO
ALTER DATABASE [BrentwoodPrintingDB] SET  READ_WRITE 
GO
