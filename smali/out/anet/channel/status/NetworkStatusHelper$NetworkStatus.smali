.class public final enum Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/status/NetworkStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanet/channel/status/NetworkStatusHelper$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 23
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 24
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v2, 0x1

    const-string v3, "NO"

    invoke-direct {v0, v3, v2}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 25
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v3, 0x2

    const-string v4, "G2"

    invoke-direct {v0, v4, v3}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 26
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v4, 0x3

    const-string v5, "G3"

    invoke-direct {v0, v5, v4}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 27
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v5, 0x4

    const-string v6, "G4"

    invoke-direct {v0, v6, v5}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 28
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v6, 0x5

    const-string v7, "WIFI"

    invoke-direct {v0, v7, v6}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 29
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v7, 0x6

    const-string v8, "G5"

    invoke-direct {v0, v8, v7}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const/4 v0, 0x7

    .line 22
    new-array v0, v0, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v8, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v8, v0, v1

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v7

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .registers 2

    .line 22
    const-class v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .registers 1

    .line 22
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v0}, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 40
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_7

    const-string v0, "2G"

    return-object v0

    .line 42
    :cond_7
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_e

    const-string v0, "3G"

    return-object v0

    .line 44
    :cond_e
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_15

    const-string v0, "4G"

    return-object v0

    .line 46
    :cond_15
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_1c

    const-string v0, "5G"

    return-object v0

    .line 49
    :cond_1c
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobile()Z
    .registers 2

    .line 32
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq p0, v0, :cond_13

    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq p0, v0, :cond_13

    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq p0, v0, :cond_13

    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isWifi()Z
    .registers 2

    .line 36
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
