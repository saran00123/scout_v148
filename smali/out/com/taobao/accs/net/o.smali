.class Lcom/taobao/accs/net/o;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;ILjava/lang/String;IZ)V
    .registers 6

    .line 372
    iput-object p1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iput p2, p0, Lcom/taobao/accs/net/o;->a:I

    iput-object p3, p0, Lcom/taobao/accs/net/o;->b:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/accs/net/o;->c:I

    iput-boolean p5, p0, Lcom/taobao/accs/net/o;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 375
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/taobao/accs/net/o;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/net/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "re"

    invoke-virtual {v0, v1, v4, v2}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    iget v0, p0, Lcom/taobao/accs/net/o;->c:I

    if-lez v0, :cond_e3

    .line 377
    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 379
    iget-object v2, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iget-object v2, v2, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v2}, Lcom/taobao/accs/data/d;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/accs/data/Message$a;

    .line 380
    invoke-virtual {v4, v1}, Lcom/taobao/accs/data/Message$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    move-object v0, v4

    :cond_55
    if-eqz v0, :cond_e3

    .line 386
    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/data/d;->b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 388
    iget-boolean v1, p0, Lcom/taobao/accs/net/o;->d:Z

    const-string v2, "errorId "

    if-eqz v1, :cond_b5

    .line 389
    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    const/16 v4, 0x7d0

    invoke-virtual {v1, v0, v4}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 390
    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    sget-object v4, Lcom/taobao/accs/a;->NETWORKSDK_INAPP_EXCEPTION_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/accs/net/o;->a:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/net/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 392
    :cond_a3
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_e3

    const-wide/16 v0, 0x0

    const-string v2, "accs"

    const-string v3, "resend"

    const-string v4, "total_tnet"

    .line 393
    invoke-static {v2, v3, v4, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_e3

    .line 397
    :cond_b5
    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    sget-object v4, Lcom/taobao/accs/a;->NETWORKSDK_INAPP_EXCEPTION_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/accs/net/o;->a:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/net/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 402
    :cond_e3
    :goto_e3
    iget v0, p0, Lcom/taobao/accs/net/o;->c:I

    if-gez v0, :cond_f0

    iget-boolean v1, p0, Lcom/taobao/accs/net/o;->d:Z

    if-eqz v1, :cond_f0

    .line 403
    iget-object v1, p0, Lcom/taobao/accs/net/o;->e:Lcom/taobao/accs/net/j;

    invoke-virtual {v1, v0}, Lcom/taobao/accs/net/j;->b(I)V

    :cond_f0
    return-void
.end method
