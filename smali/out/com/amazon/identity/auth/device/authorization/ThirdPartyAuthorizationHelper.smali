.class public Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;
.super Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;
.source "ThirdPartyAuthorizationHelper.java"


# static fields
.field private static final CLIENT_ID_PARAM_NAME:Ljava/lang/String; = "client_id"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.ThirdPartyAuthorizationHelper"

.field private static final SCOPE_DATA_KEY:Ljava/lang/String; = "scope_data"

.field private static final X_AMAZON_OPTIONS_KEY:Ljava/lang/String; = "com.amazon.oauth2.options"


# instance fields
.field private codeChallengeWorkflow:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

.field private mThirdPartyServiceHelper:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;-><init>()V

    .line 43
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->getInstance()Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->codeChallengeWorkflow:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    .line 53
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->mThirdPartyServiceHelper:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->authorizeWithBrowser(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->authorizeWithService(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private authorizeWithBrowser(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->EXTRA_URL_PARAMS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    move-object v5, p7

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p8

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;-><init>(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    .line 225
    invoke-static {}, Lcom/amazon/identity/auth/device/RequestManager;->getInstance()Lcom/amazon/identity/auth/device/RequestManager;

    move-result-object v1

    move-object v2, p2

    invoke-virtual {v1, v0, p2}, Lcom/amazon/identity/auth/device/RequestManager;->executeRequest(Lcom/amazon/identity/auth/device/AbstractRequest;Landroid/content/Context;)V

    return-void
.end method

.method private static authorizeWithService(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0, p1}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;->authorize(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_11
    return-object p1
.end method

.method private getExtraUrlParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 231
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE_METHOD:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 236
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "code_challenge"

    .line 237
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_challenge_method"

    .line 238
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 234
    :cond_31
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_MISSING_CODE_CHALLENGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Must provide code challenge parameter."

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 240
    :cond_3b
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->codeChallengeWorkflow:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->getProofKeyParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 243
    :goto_41
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 244
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope_data"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_58
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 248
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.oauth2.options"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6f
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "client_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private handleCodeForTokenExchange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .registers 19

    .line 167
    new-instance v7, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;

    invoke-direct {v7}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;-><init>()V

    new-instance v8, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v8}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    new-instance v10, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$2;

    move-object v11, p0

    move-object/from16 v0, p6

    invoke-direct {v10, p0, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$2;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->doCodeForTokenExchange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/appid/AppIdentifier;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    return-void
.end method

.method private startAuthorizationWithService(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;[Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->mThirdPartyServiceHelper:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    .line 205
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->execute(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_10

    goto :goto_15

    .line 206
    :cond_10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_15
    return-object p1
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 57
    sget-object v10, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 61
    invoke-virtual/range {v0 .. v10}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p9

    move-object/from16 v1, p10

    .line 69
    invoke-static {}, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->isRunningOnMainThread()Z

    move-result v2

    if-nez v2, :cond_144

    .line 75
    new-instance v2, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    move-object/from16 v3, p3

    .line 76
    invoke-interface {v2, v3, v0}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v11

    move-object/from16 v2, p8

    .line 78
    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCachedScopes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v4, p6

    .line 80
    invoke-static {v0, v4, v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->getCommonScopesForAuthorization(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v8

    .line 81
    sget-object v4, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 84
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v1, v6, :cond_38

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_38
    move-object v10, v1

    .line 89
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CHECK_API_KEY:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v10, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->RETURN_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v10, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    sget-object v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->REGION:Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->getRegion(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/authorization/Region;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/api/authorization/Region;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v10, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SDK_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const-string v6, "LWAAndroidSDK3.0.6"

    invoke-virtual {v10, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_67
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->EXTRA_URL_PARAMS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->getExtraUrlParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_72
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_67 .. :try_end_72} :catch_13f

    .line 102
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-nez v4, :cond_88

    .line 110
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/StoredPreferences;->isTokenObtainedFromSSO(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_84

    if-eqz v2, :cond_84

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_88

    .line 111
    :cond_84
    invoke-direct {p0, v0, v8, v10}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->startAuthorizationWithService(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_88
    move-object v6, v1

    const-string v1, "code"

    .line 115
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 117
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v10, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 118
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-static {v0, v7, v1, v9}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;->sendAuthorizationCodeAsResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    return-void

    .line 121
    :cond_af
    iget-object v1, v12, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->codeChallengeWorkflow:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->getCodeVerifier()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v10

    move-object/from16 v7, p9

    .line 122
    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->handleCodeForTokenExchange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    .line 123
    invoke-static {v0, v13}, Lcom/amazon/identity/auth/device/StoredPreferences;->setTokenObtainedFromSSO(Landroid/content/Context;Z)V

    goto/16 :goto_13e

    :cond_c6
    const-string v1, "AUTH_ERROR_EXECEPTION"

    .line 124
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_107

    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    .line 125
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_107

    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    .line 126
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 128
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 129
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    new-instance v14, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$1;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v11}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$1;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;ZZLcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13e

    .line 148
    :cond_107
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 150
    invoke-interface {v9, v6}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onCancel(Landroid/os/Bundle;)V

    goto :goto_13e

    .line 151
    :cond_11c
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 152
    invoke-static {v6}, Lcom/amazon/identity/auth/device/AuthError;->extractError(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_13e

    .line 156
    :cond_12a
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearAuthorizationState(Landroid/content/Context;)V

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const-string v2, "authorized via service"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {v9, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onSuccess(Landroid/os/Bundle;)V

    :goto_13e
    return-void

    :catch_13f
    move-exception v0

    .line 98
    invoke-interface {v9, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void

    .line 71
    :cond_144
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "authorize started on main thread"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
