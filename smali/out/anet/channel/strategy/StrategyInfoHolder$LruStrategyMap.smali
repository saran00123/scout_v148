.class Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
.super Lanet/channel/strategy/utils/SerialLruCache;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LruStrategyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanet/channel/strategy/utils/SerialLruCache<",
        "Ljava/lang/String;",
        "Lanet/channel/strategy/StrategyTable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 263
    invoke-direct {p0, v0}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;)Z"
        }
    .end annotation

    .line 268
    new-instance v0, Lanet/channel/strategy/f;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/f;-><init>(Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;Ljava/util/Map$Entry;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
