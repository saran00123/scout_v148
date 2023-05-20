.class Lanetwork/channel/stat/NetworkStatCache;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/stat/INetworkStat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/stat/NetworkStatCache$holder;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x64

.field private static final RESET_STAT:Ljava/lang/String; = "{\"oneWayTime\" : 0, \"totalSize\" : 0}"


# instance fields
.field private lruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lanetwork/channel/stat/NetworkStatCache$1;

    invoke-direct {v0, p0}, Lanetwork/channel/stat/NetworkStatCache$1;-><init>(Lanetwork/channel/stat/NetworkStatCache;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->lruCache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/stat/NetworkStatCache$1;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lanetwork/channel/stat/NetworkStatCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lanetwork/channel/stat/NetworkStatCache;
    .registers 1

    .line 23
    sget-object v0, Lanetwork/channel/stat/NetworkStatCache$holder;->instance:Lanetwork/channel/stat/NetworkStatCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 57
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public put(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    .registers 6

    .line 38
    invoke-static {p1}, Lanet/channel/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 41
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{\"oneWayTime\" : "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \"totalSize\" : "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object p2, p0, Lanetwork/channel/stat/NetworkStatCache;->lruCache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .registers 4

    .line 51
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->lruCache:Ljava/util/Map;

    const-string/jumbo v1, "{\"oneWayTime\" : 0, \"totalSize\" : 0}"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method
