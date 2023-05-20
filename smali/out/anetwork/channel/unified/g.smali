.class Lanetwork/channel/unified/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/SessionCenter;

.field final synthetic b:Lanet/channel/util/HttpUrl;

.field final synthetic c:Lanet/channel/statist/RequestStatistic;

.field final synthetic d:Lanet/channel/util/HttpUrl;

.field final synthetic e:Z

.field final synthetic f:Lanetwork/channel/unified/e;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/e;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Lanet/channel/statist/RequestStatistic;Lanet/channel/util/HttpUrl;Z)V
    .registers 7

    .line 242
    iput-object p1, p0, Lanetwork/channel/unified/g;->f:Lanetwork/channel/unified/e;

    iput-object p2, p0, Lanetwork/channel/unified/g;->a:Lanet/channel/SessionCenter;

    iput-object p3, p0, Lanetwork/channel/unified/g;->b:Lanet/channel/util/HttpUrl;

    iput-object p4, p0, Lanetwork/channel/unified/g;->c:Lanet/channel/statist/RequestStatistic;

    iput-object p5, p0, Lanetwork/channel/unified/g;->d:Lanet/channel/util/HttpUrl;

    iput-boolean p6, p0, Lanetwork/channel/unified/g;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    iget-object v2, p0, Lanetwork/channel/unified/g;->a:Lanet/channel/SessionCenter;

    iget-object v3, p0, Lanetwork/channel/unified/g;->b:Lanet/channel/util/HttpUrl;

    sget v4, Lanet/channel/entity/c;->a:I

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v3, v4, v5, v6}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lanetwork/channel/unified/g;->c:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lanet/channel/statist/RequestStatistic;->connWaitTime:J

    .line 249
    iget-object v0, p0, Lanetwork/channel/unified/g;->c:Lanet/channel/statist/RequestStatistic;

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, v0, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    .line 250
    iget-object v0, p0, Lanetwork/channel/unified/g;->f:Lanetwork/channel/unified/e;

    iget-object v1, p0, Lanetwork/channel/unified/g;->a:Lanet/channel/SessionCenter;

    iget-object v3, p0, Lanetwork/channel/unified/g;->d:Lanet/channel/util/HttpUrl;

    iget-boolean v4, p0, Lanetwork/channel/unified/g;->e:Z

    invoke-static {v0, v2, v1, v3, v4}, Lanetwork/channel/unified/e;->a(Lanetwork/channel/unified/e;Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lanetwork/channel/unified/g;->f:Lanetwork/channel/unified/e;

    iget-object v2, v1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v2}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lanetwork/channel/unified/e;->a(Lanetwork/channel/unified/e;Lanet/channel/Session;Lanet/channel/request/Request;)V

    return-void
.end method
