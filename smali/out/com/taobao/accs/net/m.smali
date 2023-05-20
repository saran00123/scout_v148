.class Lcom/taobao/accs/net/m;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;Ljava/lang/String;JZ)V
    .registers 6

    .line 271
    iput-object p1, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/j;

    iput-object p2, p0, Lcom/taobao/accs/net/m;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/taobao/accs/net/m;->b:J

    iput-boolean p5, p0, Lcom/taobao/accs/net/m;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 273
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v1, p0, Lcom/taobao/accs/net/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 275
    iget-object v1, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    sget-object v2, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u8d85\u8fc7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/taobao/accs/net/m;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\u672a\u6536\u5230\u56de\u6267"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 276
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/j;

    iget-object v1, p0, Lcom/taobao/accs/net/m;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/taobao/accs/net/m;->c:Z

    const-string v3, "receive data time out"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/net/j;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-> receive data time out!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    :cond_60
    return-void
.end method
