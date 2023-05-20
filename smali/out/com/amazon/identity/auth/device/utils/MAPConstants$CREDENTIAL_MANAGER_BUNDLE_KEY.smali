.class public final enum Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;
.super Ljava/lang/Enum;
.source "MAPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/utils/MAPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CREDENTIAL_MANAGER_BUNDLE_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum APPS_WITH_PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum APPS_WITH_SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum APP_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum APP_VARIANT_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum HAS_PERMISSION:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum HAS_SCOPE:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum PACKAGE_NAME:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum PACKAGE_NAMES:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

.field public static final enum USER_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;


# instance fields
.field public final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v1, 0x0

    const-string v2, "PACKAGE_NAME"

    const-string v3, "com.amazon.identity.auth.device.authorization.packageName"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v2, 0x1

    const-string v3, "APP_ID"

    const-string v4, "com.amazon.identity.auth.device.authorization.appId"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APP_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v3, 0x2

    const-string v4, "USER_ID"

    const-string v5, "com.amazon.identity.auth.device.authorization.userId"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->USER_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v4, 0x3

    const-string v5, "APPS_WITH_SCOPE_LIST"

    const-string v6, "com.amazon.identity.auth.device.authorization.appsWithScopeList"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APPS_WITH_SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v5, 0x4

    const-string v6, "SCOPE_LIST"

    const-string v7, "com.amazon.identity.auth.device.authorization.scopeList"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v6, 0x5

    const-string v7, "HAS_SCOPE"

    const-string v8, "com.amazon.identity.auth.device.authorization.hasScope"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->HAS_SCOPE:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v7, 0x6

    const-string v8, "PERMISSION_LIST"

    const-string v9, "com.amazon.identity.auth.device.authorization.permissionList"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/4 v8, 0x7

    const-string v9, "HAS_PERMISSION"

    const-string v10, "com.amazon.identity.auth.device.authorization.hasPermission"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->HAS_PERMISSION:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/16 v9, 0x8

    const-string v10, "APPS_WITH_PERMISSION_LIST"

    const-string v11, "com.amazon.identity.auth.device.authorization.appsWithPermissionList"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APPS_WITH_PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/16 v10, 0x9

    const-string v11, "APP_VARIANT_ID"

    const-string v12, "com.amazon.identity.auth.device.authorization.appVariantid"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APP_VARIANT_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    .line 34
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/16 v11, 0xa

    const-string v12, "PACKAGE_NAMES"

    const-string v13, "com.amazon.identity.auth.device.authorization.packageNames"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PACKAGE_NAMES:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    const/16 v0, 0xb

    .line 23
    new-array v0, v0, [Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    sget-object v12, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v12, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APP_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->USER_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APPS_WITH_SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->SCOPE_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->HAS_SCOPE:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->HAS_PERMISSION:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APPS_WITH_PERMISSION_LIST:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->APP_VARIANT_ID:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->PACKAGE_NAMES:Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;
    .registers 2

    .line 23
    const-class v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;
    .registers 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/utils/MAPConstants$CREDENTIAL_MANAGER_BUNDLE_KEY;

    return-object v0
.end method
