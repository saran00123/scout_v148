.class Lcom/danikula/videocache/IgnoreHostProxySelector;
.super Ljava/net/ProxySelector;
.source "IgnoreHostProxySelector.java"


# static fields
.field private static final NO_PROXY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultProxySelector:Ljava/net/ProxySelector;

.field private final hostToIgnore:Ljava/lang/String;

.field private final portToIgnore:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/ProxySelector;

    iput-object p1, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    .line 30
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->portToIgnore:I

    return-void
.end method

.method static install(Ljava/lang/String;I)V
    .registers 4

    .line 35
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/danikula/videocache/IgnoreHostProxySelector;

    invoke-direct {v1, v0, p0, p1}, Lcom/danikula/videocache/IgnoreHostProxySelector;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    .line 37
    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->portToIgnore:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    .line 43
    sget-object p1, Lcom/danikula/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    :goto_22
    return-object p1
.end method
