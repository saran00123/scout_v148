.class Lcom/taobao/accs/net/n;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:Lanet/channel/session/TnetSpdySession;

.field final synthetic e:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;II[BLanet/channel/session/TnetSpdySession;)V
    .registers 6

    .line 343
    iput-object p1, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    iput p2, p0, Lcom/taobao/accs/net/n;->a:I

    iput p3, p0, Lcom/taobao/accs/net/n;->b:I

    iput-object p4, p0, Lcom/taobao/accs/net/n;->c:[B

    iput-object p5, p0, Lcom/taobao/accs/net/n;->d:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 346
    iget-object v0, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "onDataReceive"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iget v2, p0, Lcom/taobao/accs/net/n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iget v2, p0, Lcom/taobao/accs/net/n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dataId"

    invoke-interface {v0, v3, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 347
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    iget-object v2, v2, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/accs/net/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lmrt"

    invoke-virtual {v0, v2, v4, v3}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    iget v0, p0, Lcom/taobao/accs/net/n;->a:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8f

    .line 350
    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 351
    iget-object v0, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v4, p0, Lcom/taobao/accs/net/n;->c:[B

    iget-object v5, p0, Lcom/taobao/accs/net/n;->d:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v5}, Lanet/channel/session/TnetSpdySession;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/taobao/accs/data/d;->a([BLjava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0}, Lcom/taobao/accs/data/d;->g()Lcom/taobao/accs/ut/a/d;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 354
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/ut/a/d;->c:Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    iget v2, v2, Lcom/taobao/accs/net/j;->c:I

    if-nez v2, :cond_6c

    const-string v2, "service"

    goto :goto_6e

    :cond_6c
    const-string v2, "inapp"

    :goto_6e
    iput-object v2, v0, Lcom/taobao/accs/ut/a/d;->g:Ljava/lang/String;

    .line 356
    invoke-virtual {v0}, Lcom/taobao/accs/ut/a/d;->a()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_73} :catch_74

    goto :goto_b6

    :catch_74
    move-exception v0

    .line 359
    iget-object v2, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    invoke-static {v2}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DATA_RECEIVE"

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_b6

    .line 363
    :cond_8f
    iget-object v0, p0, Lcom/taobao/accs/net/n;->e:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/net/n;->c:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frameType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/accs/net/n;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    return-void
.end method
