.class synthetic Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory$1;
.super Ljava/lang/Object;
.source "AuthorizationTokenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$identity$auth$device$dataobject$AuthorizationToken$AUTHZ_TOKEN_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 15
    invoke-static {}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->values()[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory$1;->$SwitchMap$com$amazon$identity$auth$device$dataobject$AuthorizationToken$AUTHZ_TOKEN_TYPE:[I

    :try_start_9
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory$1;->$SwitchMap$com$amazon$identity$auth$device$dataobject$AuthorizationToken$AUTHZ_TOKEN_TYPE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->ACCESS:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory$1;->$SwitchMap$com$amazon$identity$auth$device$dataobject$AuthorizationToken$AUTHZ_TOKEN_TYPE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->REFRESH:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
