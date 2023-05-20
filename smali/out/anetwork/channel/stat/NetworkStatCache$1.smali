.class Lanetwork/channel/stat/NetworkStatCache$1;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/stat/NetworkStatCache;


# direct methods
.method constructor <init>(Lanetwork/channel/stat/NetworkStatCache;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lanetwork/channel/stat/NetworkStatCache$1;->this$0:Lanetwork/channel/stat/NetworkStatCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lanetwork/channel/stat/NetworkStatCache$1;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
