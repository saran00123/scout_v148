.class Lcom/taobao/accs/net/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/taobao/accs/net/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/b;Ljava/lang/String;JZ)V
    .registers 6

    .line 260
    iput-object p1, p0, Lcom/taobao/accs/net/c;->d:Lcom/taobao/accs/net/b;

    iput-object p2, p0, Lcom/taobao/accs/net/c;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/taobao/accs/net/c;->b:J

    iput-boolean p5, p0, Lcom/taobao/accs/net/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/taobao/accs/net/c;->d:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    iget-object v1, p0, Lcom/taobao/accs/net/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 265
    iget-object v1, p0, Lcom/taobao/accs/net/c;->d:Lcom/taobao/accs/net/b;

    iget-object v1, v1, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v2, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u8d85\u8fc7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/taobao/accs/net/c;->b:J

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

    .line 266
    iget-object v0, p0, Lcom/taobao/accs/net/c;->d:Lcom/taobao/accs/net/b;

    iget-object v1, p0, Lcom/taobao/accs/net/c;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/taobao/accs/net/c;->c:Z

    const-string v3, "receive data time out"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/net/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/taobao/accs/net/c;->d:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-> receive data time out!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    return-void
.end method
