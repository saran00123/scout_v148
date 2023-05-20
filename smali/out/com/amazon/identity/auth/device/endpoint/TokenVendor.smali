.class public Lcom/amazon/identity/auth/device/endpoint/TokenVendor;
.super Ljava/lang/Object;
.source "TokenVendor.java"


# static fields
.field private static final DEFAULT_MINIMUM_TOKEN_LIFETIME:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.TokenVendor"


# instance fields
.field protected mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method private static getCommonAccessToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .registers 9

    .line 305
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Try finding a common access token for requested scopes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_63

    .line 307
    array-length v1, p0

    if-nez v1, :cond_e

    goto :goto_63

    .line 311
    :cond_e
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object p1

    const/4 v1, 0x0

    .line 314
    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    if-nez v1, :cond_22

    return-object v0

    :cond_22
    const/4 v2, 0x1

    .line 319
    :goto_23
    array-length v3, p0

    if-ge v2, v3, :cond_4a

    .line 320
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 321
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 322
    :cond_42
    :goto_42
    sget-object p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Common access token not found!"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 327
    :cond_4a
    sget-object p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accessAtzToken="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common access token found."

    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_63
    :goto_63
    return-object v0
.end method

.method private static getCommonRefreshToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .registers 9

    .line 337
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Try finding a common refresh token for requested scopes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_63

    .line 339
    array-length v1, p0

    if-nez v1, :cond_e

    goto :goto_63

    .line 343
    :cond_e
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object p1

    const/4 v1, 0x0

    .line 346
    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    if-nez v1, :cond_22

    return-object v0

    :cond_22
    const/4 v2, 0x1

    .line 351
    :goto_23
    array-length v3, p0

    if-ge v2, v3, :cond_4a

    .line 352
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 353
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 354
    :cond_42
    :goto_42
    sget-object p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Common refresh token not found!"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 359
    :cond_4a
    sget-object p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshAtzToken="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common refresh token found."

    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_63
    :goto_63
    return-object v0
.end method

.method private isTokenAcceptable(Lcom/amazon/identity/auth/device/token/AccessAtzToken;Landroid/os/Bundle;)Z
    .registers 5

    const/16 v0, 0x12c

    if-eqz p2, :cond_c

    .line 227
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->MINIMUM_TOKEN_LIFETIME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_c
    if-eqz p1, :cond_16

    .line 229
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->isRemainingLifeAcceptable(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private updateExistingRefreshToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    .line 414
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->update(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 415
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Updating token failed unexpectedly!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateExistingToken(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 242
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "token="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Updating existing token"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    if-eqz v0, :cond_c1

    if-eqz v9, :cond_bd

    .line 248
    :try_start_27
    array-length v1, v9

    if-nez v1, :cond_2c

    goto/16 :goto_bd

    .line 252
    :cond_2c
    iget-object v1, v8, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getAuthorizationTokens(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v1

    const/4 v2, 0x0

    .line 253
    aget-object v14, v1, v2

    const/4 v3, 0x1

    .line 254
    aget-object v4, v1, v3

    if-eqz v4, :cond_64

    .line 256
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Refresh token"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0, v11}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateExistingRefreshToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Landroid/content/Context;)V

    .line 258
    aget-object v0, v1, v3

    check-cast v0, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    :cond_64
    move-object v6, v0

    if-eqz v14, :cond_c2

    .line 263
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Refreshed token"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_87

    .line 267
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    goto :goto_88

    :cond_87
    move v2, v3

    .line 273
    :goto_88
    invoke-static/range {p5 .. p5}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 274
    invoke-virtual {v14, v11}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insertOrUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b0

    if-eqz v2, :cond_a8

    .line 277
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    move-object v5, v14

    check-cast v5, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;)V

    .line 279
    :cond_a8
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Update success!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 282
    :cond_b0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Updating token failed unexpectedly!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catchall {:try_start_27 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v0

    .line 289
    invoke-static/range {p5 .. p5}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    .line 290
    throw v0

    .line 289
    :cond_bd
    :goto_bd
    invoke-static/range {p5 .. p5}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    return-object v13

    :cond_c1
    move-object v14, v13

    :cond_c2
    :goto_c2
    invoke-static/range {p5 .. p5}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    if-eqz v14, :cond_cc

    .line 293
    invoke-virtual {v14}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_cc
    return-object v13
.end method


# virtual methods
.method public clearAuthStateServerSide(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCachedScopes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    .line 393
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 397
    :cond_b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonAccessToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-result-object p3

    if-eqz p3, :cond_31

    .line 400
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    new-instance v1, Lcom/amazon/identity/auth/device/endpoint/LogoutRequest;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getTokenValue()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/endpoint/LogoutRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->executeRequest(Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;Landroid/content/Context;)Lcom/amazon/identity/auth/device/endpoint/Response;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/endpoint/LogoutResponse;

    .line 401
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/LogoutResponse;->getLogoutResponse()Lorg/json/JSONObject;

    :cond_31
    return-void
.end method

.method public getCachedScopes(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRows()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .registers 11

    .line 95
    array-length v0, p3

    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    const/4 v1, 0x0

    .line 96
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_3d

    .line 97
    invoke-static {p4}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object v2

    aget-object v3, p3, v1

    invoke-virtual {v2, v3, p2, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findByPrimaryKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 99
    aput-object v2, v0, v1

    goto :goto_3a

    .line 102
    :cond_16
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequestedScope shouldn\'t be null!!!! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but continuing anyway..."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    aget-object v3, p3, v1

    invoke-direct {v2, v3, p2, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3d
    return-object v0
.end method

.method protected insertToken(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 181
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_b

    return-void

    .line 182
    :cond_b
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " token into db"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, p2, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method public insertTokens(Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 365
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2d

    .line 371
    invoke-virtual {p2, v0, v1}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->setId(J)V

    .line 373
    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 379
    invoke-virtual {p3, v0, v1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->setId(J)V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 381
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_23
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string p3, "Unable to insert refresh token into db"

    invoke-direct {p1, p3, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 367
    :cond_2d
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string p3, "Unable to insert access atz token into db"

    invoke-direct {p1, p3, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method public setServerCommunication(Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method protected updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;)V
    .registers 13

    .line 200
    invoke-virtual {p0, p6, p1, p2, p3}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object p1

    .line 202
    array-length p2, p1

    const/4 p6, 0x0

    :goto_6
    if-ge p6, p2, :cond_de

    aget-object v0, p1, p6

    .line 203
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_46

    .line 204
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 205
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    .line 206
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->insert(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 209
    :cond_46
    invoke-virtual {p4, p3}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    const-string v2, " : "

    if-eqz v1, :cond_7a

    .line 211
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessAtzToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Deleting old access token."

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_7a
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 214
    invoke-virtual {p5, p3}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    if-eqz v1, :cond_b3

    .line 216
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshAtzToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Deleting old refresh token "

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_b3
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    .line 219
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->update(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_da
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_6

    :cond_de
    return-void
.end method

.method public vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Landroid/os/Bundle;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 135
    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v6, p8

    if-eqz v2, :cond_97

    .line 143
    array-length v0, v2

    if-eqz v0, :cond_97

    .line 147
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Vending new tokens from Code"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v8, v7, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v0

    if-eqz v0, :cond_8d

    const/4 v1, 0x0

    .line 155
    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    if-eqz v8, :cond_83

    .line 161
    invoke-virtual {v7, v3, v8}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->insertToken(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;)V

    const/4 v1, 0x1

    .line 163
    aget-object v0, v0, v1

    move-object v5, v0

    check-cast v5, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    if-eqz v5, :cond_79

    .line 168
    invoke-virtual {v7, v3, v5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->insertToken(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;)V

    .line 170
    invoke-virtual/range {p7 .. p7}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object v4, v8

    move-object v9, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const-string v2, "authorized"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_78

    if-eqz v9, :cond_78

    .line 174
    sget-object v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->RETURN_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 175
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    return-object v0

    .line 166
    :cond_79
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "Refresh Atz token was null from server communication"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 159
    :cond_83
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "Access Atz token was null from server communication"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 153
    :cond_8d
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "No tokens returned"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 144
    :cond_97
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "No scopes provided in parameters"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move-object v7, p5

    .line 123
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public vendToken(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vending out token: appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", scopes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3c

    .line 73
    array-length v0, p2

    if-nez v0, :cond_43

    .line 74
    :cond_3c
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Vend token - No scopes passed in"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_43
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v0

    .line 80
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonAccessToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-result-object v5

    .line 81
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonRefreshToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object v2

    .line 83
    invoke-direct {p0, v5, p4}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->isTokenAcceptable(Lcom/amazon/identity/auth/device/token/AccessAtzToken;Landroid/os/Bundle;)Z

    move-result p4

    if-eqz p4, :cond_65

    .line 84
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Common token still has acceptable life, returning it back to caller"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getTokenValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p5

    .line 88
    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateExistingToken(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
