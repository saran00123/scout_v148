.class public Lanetwork/channel/stat/NetworkStat;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkStat()Lanetwork/channel/stat/INetworkStat;
    .registers 1

    .line 9
    invoke-static {}, Lanetwork/channel/stat/NetworkStatCache;->getInstance()Lanetwork/channel/stat/NetworkStatCache;

    move-result-object v0

    return-object v0
.end method
