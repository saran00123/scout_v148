.class public final enum Lcom/amazon/identity/auth/device/authorization/Stage;
.super Ljava/lang/Enum;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/authorization/Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/authorization/Stage;

.field public static final enum DEVO:Lcom/amazon/identity/auth/device/authorization/Stage;

.field public static final enum PRE_PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

.field public static final enum PROD:Lcom/amazon/identity/auth/device/authorization/Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/Stage;

    const/4 v1, 0x0

    const-string v2, "DEVO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/authorization/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->DEVO:Lcom/amazon/identity/auth/device/authorization/Stage;

    .line 5
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/Stage;

    const/4 v2, 0x1

    const-string v3, "PRE_PROD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/authorization/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->PRE_PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    .line 6
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/Stage;

    const/4 v3, 0x2

    const-string v4, "PROD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/authorization/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v4, Lcom/amazon/identity/auth/device/authorization/Stage;->DEVO:Lcom/amazon/identity/auth/device/authorization/Stage;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PRE_PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/Stage;
    .registers 2

    .line 3
    const-class v0, Lcom/amazon/identity/auth/device/authorization/Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/authorization/Stage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/authorization/Stage;
    .registers 1

    .line 3
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/Stage;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/authorization/Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/authorization/Stage;

    return-object v0
.end method
