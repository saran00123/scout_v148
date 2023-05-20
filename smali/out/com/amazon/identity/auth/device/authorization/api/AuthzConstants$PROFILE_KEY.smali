.class public final enum Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;
.super Ljava/lang/Enum;
.source "AuthzConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

.field public static final enum EMAIL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

.field public static final enum NAME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

.field public static final enum POSTAL_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

.field public static final enum USER_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;


# instance fields
.field public final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    const/4 v1, 0x0

    const-string v2, "NAME"

    const-string v3, "name"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->NAME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    const/4 v2, 0x1

    const-string v3, "EMAIL"

    const-string v4, "email"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->EMAIL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    const/4 v3, 0x2

    const-string v4, "USER_ID"

    const-string/jumbo v5, "user_id"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->USER_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    const/4 v4, 0x3

    const-string v5, "POSTAL_CODE"

    const-string v6, "postal_code"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->POSTAL_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    sget-object v5, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->NAME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->EMAIL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->USER_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->POSTAL_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;
    .registers 2

    .line 50
    const-class v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;
    .registers 1

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    return-object v0
.end method
