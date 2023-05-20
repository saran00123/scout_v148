.class public final enum Lcom/amazon/identity/auth/device/authorization/Service;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/authorization/Service;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/authorization/Service;

.field public static final enum AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

.field public static final enum PANDA:Lcom/amazon/identity/auth/device/authorization/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/Service;

    const/4 v1, 0x0

    const-string v2, "AUTHORIZATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/authorization/Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

    .line 5
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/Service;

    const/4 v2, 0x1

    const-string v3, "PANDA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/authorization/Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v3, Lcom/amazon/identity/auth/device/authorization/Service;->AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

    aput-object v3, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/Service;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/Service;
    .registers 2

    .line 3
    const-class v0, Lcom/amazon/identity/auth/device/authorization/Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/authorization/Service;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/authorization/Service;
    .registers 1

    .line 3
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/Service;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/authorization/Service;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/authorization/Service;

    return-object v0
.end method
