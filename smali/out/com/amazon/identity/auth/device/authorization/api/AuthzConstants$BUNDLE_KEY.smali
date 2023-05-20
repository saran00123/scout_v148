.class public final enum Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;
.super Ljava/lang/Enum;
.source "AuthzConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BUNDLE_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum APP_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum BROWSER_AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum CHECK_API_KEY:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum CODE_CHALLENGE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum CODE_CHALLENGE_METHOD:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum DEVICE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum DIRECTED_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum EXTRA_URL_PARAMS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum MINIMUM_TOKEN_LIFETIME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum NO_SERVICE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum ON_CANCEL_DESCRIPTION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum ON_CANCEL_TYPE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum PROFILE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum REDIRECT_URI:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum REJECTED_SCOPE_LIST:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum RETURN_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum SDK_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum SSO_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

.field public static final enum X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;


# instance fields
.field public final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 13
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v1, 0x0

    const-string v2, "TOKEN"

    const-string v3, "com.amazon.identity.auth.device.authorization.token"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 14
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v2, 0x1

    const-string v3, "AUTHORIZATION_CODE"

    const-string v4, "com.amazon.identity.auth.device.authorization.authorizationCode"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v3, 0x2

    const-string v4, "DIRECTED_ID"

    const-string v5, "com.amazon.identity.auth.device.authorization.directedId"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->DIRECTED_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v4, 0x3

    const-string v5, "DEVICE_ID"

    const-string v6, "com.amazon.identity.auth.device.authorization.deviceId"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->DEVICE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v5, 0x4

    const-string v6, "APP_ID"

    const-string v7, "com.amazon.identity.auth.device.authorization.appId"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->APP_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 18
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v6, 0x5

    const-string v7, "CAUSE_ID"

    const-string v8, "com.amazon.identity.auth.device.authorization.causeId"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v7, 0x6

    const-string v8, "REJECTED_SCOPE_LIST"

    const-string v9, "com.amazon.identity.auth.device.authorization.ungrantedScopes"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->REJECTED_SCOPE_LIST:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 20
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/4 v8, 0x7

    const-string v9, "AUTHORIZE"

    const-string v10, "com.amazon.identity.auth.device.authorization.authorize"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 21
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v9, 0x8

    const-string v10, "CLIENT_ID"

    const-string v11, "com.amazon.identity.auth.device.authorization.clietId"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v10, 0x9

    const-string v11, "REDIRECT_URI"

    const-string v12, "com.amazon.identity.auth.device.authorization.redirectURI"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->REDIRECT_URI:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v11, 0xa

    const-string v12, "ON_CANCEL_TYPE"

    const-string v13, "com.amazon.identity.auth.device.authorization.onCancelType"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->ON_CANCEL_TYPE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v12, 0xb

    const-string v13, "ON_CANCEL_DESCRIPTION"

    const-string v14, "com.amazon.identity.auth.device.authorization.onCancelDescription"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->ON_CANCEL_DESCRIPTION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v13, 0xc

    const-string v14, "BROWSER_AUTHORIZATION"

    const-string v15, "com.amazon.identity.auth.device.authorization.useBrowserForAuthorization"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->BROWSER_AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v14, 0xd

    const-string v15, "PROFILE"

    const-string v13, "com.amazon.identity.auth.device.authorization.profile"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->PROFILE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v13, 0xe

    const-string v15, "FUTURE"

    const-string v14, "com.amazon.identity.auth.device.authorization.future.type"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v14, "NO_SERVICE"

    const/16 v15, 0xf

    const-string v13, "com.amazon.identity.auth.device.authorization.noService"

    invoke-direct {v0, v14, v15, v13}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->NO_SERVICE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "SCOPE_DATA"

    const/16 v14, 0x10

    const-string v15, "com.amazon.identity.auth.device.authorization.scope_data"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "X_AMAZON_OPTIONS"

    const/16 v14, 0x11

    const-string v15, "com.amazon.identity.auth.device.authorization.com.amazon.oauth2.options"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "CODE_CHALLENGE"

    const/16 v14, 0x12

    const-string v15, "com.amazon.identity.auth.device.authorization.code_challenge"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "CODE_CHALLENGE_METHOD"

    const/16 v14, 0x13

    const-string v15, "com.amazon.identity.auth.device.authorization.code_challenge_method"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE_METHOD:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "GET_AUTH_CODE"

    const/16 v14, 0x14

    const-string v15, "com.amazon.identity.auth.device.authorization.return_auth_code"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 37
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "SANDBOX"

    const/16 v14, 0x15

    const-string v15, "com.amazon.identity.auth.device.authorization.sandbox"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 38
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "CHECK_API_KEY"

    const/16 v14, 0x16

    const-string v15, "com.amazon.identity.auth.device.authorization.checkAPIKey"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CHECK_API_KEY:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "EXTRA_URL_PARAMS"

    const/16 v14, 0x17

    const-string v15, "com.amazon.identity.auth.device.authorization.extraUrlParameters"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->EXTRA_URL_PARAMS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "RETURN_CODE"

    const/16 v14, 0x18

    const-string v15, "com.amazon.identity.auth.device.authorization.returnCode"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->RETURN_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 41
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "MINIMUM_TOKEN_LIFETIME"

    const/16 v14, 0x19

    const-string v15, "com.amazon.identity.auth.device.authorization.minTokenLifetime"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->MINIMUM_TOKEN_LIFETIME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 42
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "SDK_VERSION"

    const/16 v14, 0x1a

    const-string v15, "com.amazon.identity.auth.device.authorization.sdkVersion"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SDK_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const-string v13, "SSO_VERSION"

    const/16 v14, 0x1b

    const-string v15, "com.amazon.identity.auth.device.authorization.ssoVersion"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SSO_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v0, 0x1c

    .line 12
    new-array v0, v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    sget-object v13, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v13, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->DIRECTED_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->DEVICE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->APP_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->REJECTED_SCOPE_LIST:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->REDIRECT_URI:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->ON_CANCEL_TYPE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->ON_CANCEL_DESCRIPTION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->BROWSER_AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->PROFILE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->NO_SERVICE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE_METHOD:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CHECK_API_KEY:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->EXTRA_URL_PARAMS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->RETURN_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->MINIMUM_TOKEN_LIFETIME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SDK_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SSO_VERSION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;
    .registers 2

    .line 12
    const-class v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;
    .registers 1

    .line 12
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    return-object v0
.end method
