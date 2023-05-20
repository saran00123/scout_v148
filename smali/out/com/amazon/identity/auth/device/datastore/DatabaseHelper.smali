.class public final Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATE_FORMAT_LOCAL:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final DATE_FORMAT_UTC:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss\'Z\'"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.DatabaseHelper"

.field public static final MAP_DB_NAME:Ljava/lang/String; = "MAPDataStore.db"

.field public static final MAP_DB_VERSION:I = 0x9

.field private static final SECOND_MILLIS:J

.field private static final THIRD_PARTY_VER_2_1_X:I = 0x5

.field private static final THIRD_PARTY_VER_2_2_X:I = 0x6

.field private static final THIRD_PARTY_VER_2_3_1:I = 0x8

.field private static final THIRD_PARTY_VER_2_3_X:I = 0x7

.field private static final THIRD_PARTY_VER_2_4:I = 0x9

.field private static final THIRD_PARTY_VER_2_X:I = 0x4

.field public static final appInfoTable:Ljava/lang/String; = "AppInfo"

.field public static final appInfo_AllowedScopes:Ljava/lang/String; = "AllowedScopes"

.field public static final appInfo_AppFamilyId:Ljava/lang/String; = "AppFamilyId"

.field public static final appInfo_AppVariantId:Ljava/lang/String; = "AppVariantId"

.field public static final appInfo_AuthzHost:Ljava/lang/String; = "AuthzHost"

.field public static final appInfo_ClientId:Ljava/lang/String; = "ClientId"

.field public static final appInfo_ExchangeHost:Ljava/lang/String; = "ExchangeHost"

.field public static final appInfo_GrantedPermissions:Ljava/lang/String; = "GrantedPermissions"

.field public static final appInfo_PackageName:Ljava/lang/String; = "PackageName"

.field public static final appInfo_Payload:Ljava/lang/String; = "Payload"

.field public static final authorizationCode:Ljava/lang/String; = "Code"

.field public static final authorizationCodeTable:Ljava/lang/String; = "AuthorizationCode"

.field public static final authorizationCode_AppId:Ljava/lang/String; = "AppId"

.field public static final authorizationCode_AuthorizationTokenId:Ljava/lang/String; = "AuthorizationTokenId"

.field public static final authorizationCode_Id:Ljava/lang/String; = "Id"

.field public static final authorizationTokenTable:Ljava/lang/String; = "AuthorizationToken"

.field public static final authorizationToken_AppFamilyId:Ljava/lang/String; = "AppId"

.field public static final authorizationToken_CreationTime:Ljava/lang/String; = "CreationTime"

.field public static final authorizationToken_DirectedId:Ljava/lang/String; = "directedId"

.field public static final authorizationToken_ExpirationTime:Ljava/lang/String; = "ExpirationTime"

.field public static final authorizationToken_Id:Ljava/lang/String; = "Id"

.field public static final authorizationToken_MiscData:Ljava/lang/String; = "MiscData"

.field public static final authorizationToken_Token:Ljava/lang/String; = "Token"

.field public static final authorizationToken_Type:Ljava/lang/String; = "type"

.field public static final codePairTable:Ljava/lang/String; = "CodePair"

.field public static final codePair_AppId:Ljava/lang/String; = "AppId"

.field public static final codePair_CreationTime:Ljava/lang/String; = "CreationTime"

.field public static final codePair_DeviceCode:Ljava/lang/String; = "DeviceCode"

.field public static final codePair_ExpirationTime:Ljava/lang/String; = "ExpirationTime"

.field public static final codePair_Id:Ljava/lang/String; = "Id"

.field public static final codePair_Interval:Ljava/lang/String; = "Interval"

.field public static final codePair_Scopes:Ljava/lang/String; = "Scopes"

.field public static final codePair_UserCode:Ljava/lang/String; = "UserCode"

.field public static final codePair_VerificationUri:Ljava/lang/String; = "VerificationUri"

.field public static final profileTable:Ljava/lang/String; = "Profile"

.field public static final profile_AppId:Ljava/lang/String; = "AppId"

.field public static final profile_Data:Ljava/lang/String; = "Data"

.field public static final profile_ExpirationTime:Ljava/lang/String; = "ExpirationTime"

.field public static final profile_Id:Ljava/lang/String; = "Id"

.field public static final requestedScopeTable:Ljava/lang/String; = "RequestedScope"

.field public static final requestedScope_AppFamilyId:Ljava/lang/String; = "AppId"

.field public static final requestedScope_AuthorizationAccessTokenId:Ljava/lang/String; = "AtzAccessTokenId"

.field public static final requestedScope_AuthorizationRefreshTokenId:Ljava/lang/String; = "AtzRefreshTokenId"

.field public static final requestedScope_DirectedId:Ljava/lang/String; = "DirectedId"

.field public static final requestedScope_Scope:Ljava/lang/String; = "Scope"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->SECOND_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "MAPDataStore.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 118
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 119
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "DatabaseHelper created ver=9"

    const-string v1, "MAP_DB_NAME=MAPDataStore.db"

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearServiceAuthorizationStateWorker(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)V

    return-void
.end method

.method public static clearAuthorizationState(Landroid/content/Context;)V
    .registers 3

    .line 369
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Clearing Authorization Locally"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->deleteAllRows()I

    .line 371
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->deleteAllRows()I

    .line 372
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->deleteAllRows()I

    .line 373
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 374
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;->deleteAllRows()I

    return-void
.end method

.method public static clearServiceAuthorizationState(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearServiceAuthorizationState(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)V

    return-void
.end method

.method public static clearServiceAuthorizationState(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper$1;-><init>()V

    .line 404
    invoke-virtual {v0, p0, p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper$1;->execute(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)Ljava/lang/Object;

    return-void
.end method

.method private static clearServiceAuthorizationStateWorker(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Clearing Authorization via Service"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;->clearAuthorizationState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string p1, "AUTH_ERROR_EXECEPTION"

    .line 438
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_20

    .line 440
    :cond_1b
    invoke-static {p0}, Lcom/amazon/identity/auth/device/AuthError;->extractError(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p0

    throw p0

    :cond_20
    :goto_20
    return-void
.end method

.method public static getDateFormat()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 414
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 415
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getDateFormatLocal()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 420
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "Z"

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 427
    invoke-static {}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 431
    :cond_11
    invoke-static {}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->getDateFormatLocal()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;
    .registers 5

    if-eqz p0, :cond_e

    .line 354
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->SECOND_MILLIS:J

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doesColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 260
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if COL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in table="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Column does NOT exist"

    if-nez v0, :cond_ae

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_ae

    :cond_3b
    const/4 v0, 0x0

    .line 268
    :try_start_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from sqlite_master where name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' and sql like \'%"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%\' "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_69

    .line 273
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_65} :catch_86
    .catchall {:try_start_3c .. :try_end_65} :catchall_84

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    .line 277
    :cond_69
    :try_start_69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 279
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Column does exist"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_76} :catch_86
    .catchall {:try_start_69 .. :try_end_76} :catchall_84

    const/4 p1, 0x1

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_7b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_84
    move-exception p1

    goto :goto_aa

    :catch_86
    move-exception p1

    .line 283
    :try_start_87
    sget-object p2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_87 .. :try_end_a6} :catchall_84

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :goto_aa
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    throw p1

    .line 263
    :cond_ae
    :goto_ae
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    .line 124
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS AppInfo (AppFamilyId TEXT NOT NULL, PackageName TEXT NOT NULL, AllowedScopes TEXT, GrantedPermissions TEXT, ClientId TEXT, AppVariantId TEXT,AuthzHost TEXT, ExchangeHost TEXT, Payload TEXT,UNIQUE (PackageName), PRIMARY KEY (AppVariantId))"

    .line 127
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS app_info_index_pkg_name ON AppInfo (PackageName)"

    .line 137
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS app_info_index_app_variant_id ON AppInfo (AppVariantId)"

    .line 140
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS RequestedScope (Scope TEXT NOT NULL, AppId TEXT NOT NULL, DirectedId TEXT, AtzAccessTokenId INTEGER NOT NULL, AtzRefreshTokenId INTEGER NOT NULL, PRIMARY KEY (Scope,AppId,AtzAccessTokenId,AtzRefreshTokenId))"

    .line 145
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS requested_scope_index_scope ON RequestedScope (Scope)"

    .line 154
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS requested_scope_index_app_id ON RequestedScope (AppId)"

    .line 157
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS requested_scope_index_atz_access_token_id ON RequestedScope (AtzAccessTokenId)"

    .line 160
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS requested_scope_index_directed_id ON RequestedScope (DirectedId)"

    .line 164
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS requested_scope_index_atz_refresh_token_id ON RequestedScope (AtzRefreshTokenId)"

    .line 167
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_access_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzAccessTokenId != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->UNKNOWN:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND new."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AtzAccessTokenId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v4, v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->GRANTED_LOCALLY:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v4, v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") THEN RAISE(ABORT, \'Invalid authorization token ID\') END; END;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_refresh_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzRefreshTokenId != "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->UNKNOWN:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v5, v5, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "AtzRefreshTokenId"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v6, v3, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->GRANTED_LOCALLY:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Attempting to create authorizationTokenTable TABLE"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS AuthorizationToken (Id INTEGER PRIMARY KEY AUTOINCREMENT, AppId TEXT NOT NULL, Token TEXT NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, MiscData BLOB, type INTEGER NOT NULL, directedId TEXT )"

    .line 198
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS authz_token_index_app_id ON AuthorizationToken (AppId)"

    .line 208
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS authz_token_index_directed_id ON AuthorizationToken (directedId)"

    .line 212
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS AuthorizationCode (Id INTEGER PRIMARY KEY AUTOINCREMENT, Code TEXT NOT NULL, AppId TEXT NOT NULL, AuthorizationTokenId INTEGER NOT NULL )"

    .line 217
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS authz_code_index_app_id ON AuthorizationCode (AppId)"

    .line 224
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS authz_code_index_token_id ON AuthorizationCode (AuthorizationTokenId)"

    .line 229
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS Profile (Id INTEGER PRIMARY KEY AUTOINCREMENT, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Data TEXT NOT NULL )"

    .line 236
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS profile_index_app_id ON Profile (AppId)"

    .line 243
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS CodePair (Id INTEGER PRIMARY KEY AUTOINCREMENT, UserCode TEXT NOT NULL, DeviceCode TEXT NOT NULL, VerificationUri TEXT NOT NULL, Interval INTEGER NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Scopes TEXT NOT NULL )"

    .line 254
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .line 296
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade called old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-string v1, "DROP TABLE IF EXISTS AppInfo"

    if-ge p2, v0, :cond_48

    if-lt p3, v0, :cond_48

    .line 300
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Doing upgrades for 4"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS AuthorizationToken"

    .line 302
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS RequestedScope"

    .line 304
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX IF EXISTS RequestedScope.requested_scope_index_directed_id"

    .line 309
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX IF EXISTS RequestedScope.requested_scope_index_atz_token_id"

    .line 311
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS requested_scope_valid_atz_token_id"

    .line 313
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_48
    const/4 v0, 0x5

    if-ge p2, v0, :cond_54

    if-lt p3, v0, :cond_54

    .line 317
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Doing upgrades for 5"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 v0, 0x6

    if-ge p2, v0, :cond_63

    if-lt p3, v0, :cond_63

    .line 322
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Doing upgrades for 6"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_63
    const/16 v0, 0x8

    const/16 v2, 0x9

    if-ge p2, v0, :cond_6b

    if-ge p3, v0, :cond_6f

    :cond_6b
    if-ge p2, v2, :cond_79

    if-lt p3, v2, :cond_79

    .line 334
    :cond_6f
    sget-object p2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Doing upgrades for 8"

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_79
    if-gt p3, v2, :cond_7f

    .line 344
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .line 341
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Database version was updated, but no upgrade was done ver=8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
