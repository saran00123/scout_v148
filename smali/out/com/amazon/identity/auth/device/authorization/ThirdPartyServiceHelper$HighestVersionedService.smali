.class Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;
.super Ljava/lang/Object;
.source "ThirdPartyServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HighestVersionedService"
.end annotation


# static fields
.field static mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

.field static serviceDiscoveryTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;
    .registers 1

    .line 68
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    return-object v0
.end method

.method static isServiceCacheStale()Z
    .registers 8

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 85
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 86
    sget-wide v4, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->serviceDiscoveryTimestamp:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method static setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V
    .registers 3

    .line 72
    sput-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    if-nez p0, :cond_9

    const-wide/16 v0, 0x0

    .line 74
    sput-wide v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->serviceDiscoveryTimestamp:J

    goto :goto_14

    .line 77
    :cond_9
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->serviceDiscoveryTimestamp:J

    :goto_14
    return-void
.end method
