.class public Lanet/channel/strategy/utils/SerialLruCache;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 31
    iput p1, p0, Lanet/channel/strategy/utils/SerialLruCache;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x100

    .line 26
    invoke-direct {p0, p1, v0}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 21
    iput p2, p0, Lanet/channel/strategy/utils/SerialLruCache;->a:I

    return-void
.end method


# virtual methods
.method public entryRemoved(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lanet/channel/strategy/utils/SerialLruCache;->size()I

    move-result v0

    iget v1, p0, Lanet/channel/strategy/utils/SerialLruCache;->a:I

    if-le v0, v1, :cond_d

    .line 37
    invoke-virtual {p0, p1}, Lanet/channel/strategy/utils/SerialLruCache;->entryRemoved(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
