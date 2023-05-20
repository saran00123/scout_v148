.class public Lcom/amazon/identity/auth/device/authorization/ProfileHelper;
.super Ljava/lang/Object;
.source "ProfileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.ProfileHelper"

.field private static mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->shouldFailOnInsufficientScope(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->createResponseBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->getProfileLocal(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->getProfileRemote(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->createProfileBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 32
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->updateProfileLocal(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static createProfileBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 151
    :cond_1d
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Profile Information"

    invoke-static {p0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static createResponseBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->PROFILE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static getAuthorizedScopes(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)[Ljava/lang/String;
    .registers 5

    .line 175
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object p0

    .line 176
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findByAppFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 179
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    add-int/lit8 v2, v0, 0x1

    .line 180
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getScopeValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    move v0, v2

    goto :goto_17

    :cond_2d
    return-object p1
.end method

.method public static getProfile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/shared/APIListener;)V
    .registers 11

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 40
    invoke-interface {v0, p1, p0}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    if-nez v0, :cond_18

    .line 43
    new-instance p0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string p2, "App info is null"

    invoke-direct {p0, p2, p1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {p3, p0}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void

    .line 48
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->getAuthorizedScopes(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;

    invoke-direct {v4, p0, p2, p3, v0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/shared/APIListener;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    new-instance v5, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v5}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/authorization/TokenHelper;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;Lcom/amazon/identity/auth/device/appid/AppIdentifier;Landroid/os/Bundle;)V
    :try_end_30
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_18 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 109
    invoke-interface {p3, p0}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    :goto_35
    return-void
.end method

.method private static getProfileLocal(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 115
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    const-string v1, "Accessing local profile information"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getProfile(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/Profile;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    .line 118
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_26

    .line 123
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getDataAsBundle()Landroid/os/Bundle;

    move-result-object p0
    :try_end_1d
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    .line 125
    :catch_1e
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    const-string v0, "Local profile information invalid"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 119
    :cond_26
    :goto_26
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    const-string v0, "Local profile information does not exist, or has expired"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static getProfileRemote(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    const-string v1, "Fetching remote profile information"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getProfile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static setServerCommunication(Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;)V
    .registers 1

    .line 185
    sput-object p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method private static shouldFailOnInsufficientScope(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_e

    .line 167
    sget-object v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;->FAIL_ON_INSUFFICIENT_SCOPE:Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static updateProfileLocal(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 137
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->TAG:Ljava/lang/String;

    const-string v1, "Updating local profile information"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 140
    new-instance v1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->insertRow(Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;Landroid/content/Context;)J

    return-void
.end method
