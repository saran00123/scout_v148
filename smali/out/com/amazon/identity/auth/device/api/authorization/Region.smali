.class public final enum Lcom/amazon/identity/auth/device/api/authorization/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/authorization/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/authorization/Region;

.field public static final enum AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

.field public static final enum EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

.field public static final enum FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

.field public static final enum NA:Lcom/amazon/identity/auth/device/api/authorization/Region;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/api/authorization/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 14
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v2, 0x1

    const-string v3, "NA"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/device/api/authorization/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v3, 0x2

    const-string v4, "EU"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/identity/auth/device/api/authorization/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 18
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v4, 0x3

    const-string v5, "FE"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/identity/auth/device/api/authorization/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/Region;

    sget-object v5, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/Region;->EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/Region;->FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/Region;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/authorization/Region;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 2

    .line 10
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/authorization/Region;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 1

    .line 10
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/Region;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/authorization/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/Region;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/Region;->stringValue:Ljava/lang/String;

    return-object v0
.end method
