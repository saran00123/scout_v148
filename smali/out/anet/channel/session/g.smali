.class Lanet/channel/session/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/session/f;


# direct methods
.method constructor <init>(Lanet/channel/session/f;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .registers 4

    .line 186
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->b:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 9

    if-gtz p1, :cond_16

    const/16 v0, -0xcc

    if-eq p1, v0, :cond_16

    .line 192
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->d:Lanet/channel/session/d;

    new-instance v1, Lanet/channel/entity/b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Http connect fail"

    invoke-direct {v1, v3, v2, v4}, Lanet/channel/entity/b;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v3, v1}, Lanet/channel/session/d;->c(Lanet/channel/session/d;ILanet/channel/entity/b;)V

    .line 195
    :cond_16
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->b:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2, p3}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "httpStatusCode"

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, ""

    const-string v6, "awcn.HttpSession"

    invoke-static {v6, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "response headers"

    aput-object v2, v1, v3

    aput-object p2, v1, v5

    invoke-static {v6, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->b:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 179
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->c:Lanet/channel/statist/RequestStatistic;

    invoke-static {p2}, Lanet/channel/util/HttpHelper;->parseServerRT(Ljava/util/Map;)J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 180
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->d:Lanet/channel/session/d;

    iget-object v1, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v1, v1, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    invoke-static {v0, v1, p1}, Lanet/channel/session/d;->a(Lanet/channel/session/d;Lanet/channel/request/Request;I)V

    .line 181
    iget-object p1, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object p1, p1, Lanet/channel/session/f;->d:Lanet/channel/session/d;

    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    invoke-static {p1, v0, p2}, Lanet/channel/session/d;->a(Lanet/channel/session/d;Lanet/channel/request/Request;Ljava/util/Map;)V

    return-void
.end method
