.class public Lcom/amazon/identity/auth/device/api/authorization/PollingTask;
.super Ljava/lang/Object;
.source "PollingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.authorization.PollingTask"


# instance fields
.field private mAppInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

.field private mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

.field private mScopeString:Ljava/lang/String;

.field private mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Ljava/lang/String;)V
    .registers 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    .line 32
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    .line 33
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

    .line 34
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    .line 36
    iput-object p6, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mAppInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    .line 37
    iput-object p7, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mScopeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 42
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start polling for the token"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->hasCodePairExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 46
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Code Pair has already expired"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :cond_2c
    const/4 v0, 0x0

    .line 54
    :try_start_2d
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getUserCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getDeviceCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mAppInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getTokensFromCodePair(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v0
    :try_end_43
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_2d .. :try_end_43} :catch_12b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    move-exception v1

    .line 59
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to communicate with server"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v4, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v3, v4}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 61
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :goto_5d
    const/4 v1, 0x0

    .line 63
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 64
    aget-object v0, v0, v2

    .line 65
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Get the tokens from Code Pair successfully, update the database now"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insert(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_8a

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v3, "Failed to insert Access Token"

    invoke-direct {v1, v3, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    .line 73
    :cond_8a
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Insert new access token successfully"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insert(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d4

    .line 75
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to insert Refresh token"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 77
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Deleted the access token!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 79
    :cond_b2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v3, "Failed to delete access token in db"

    invoke-direct {v1, v3, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 81
    :goto_c0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v3, "Failed to insert Refresh Token"

    invoke-direct {v1, v3, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    .line 85
    :cond_d4
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Insert new refresh token successfully"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mScopeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mAppInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v12

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->insert(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_110

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v3, "Failed to insert Requested Scope"

    invoke-direct {v1, v3, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    .line 92
    :cond_110
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Insert new requestedScope successfully"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mListener:Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    new-instance v2, Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onSuccess(Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    .line 56
    :catch_12b
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code Pair has not been authorized, wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/PollingTask;->mCodePair:Lcom/amazon/identity/auth/device/dataobject/CodePair;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds to call the getToken API again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
