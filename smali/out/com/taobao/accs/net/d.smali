.class Lcom/taobao/accs/net/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/b;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0}, Lcom/taobao/accs/data/d;->c()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 332
    iget-object v0, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "receive ping time out! "

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/f;->c()V

    .line 334
    iget-object v0, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    const-string v2, ""

    const-string v3, "receive ping timeout"

    invoke-virtual {v0, v2, v1, v3}, Lcom/taobao/accs/net/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/taobao/accs/net/d;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v1, Lcom/taobao/accs/a;->PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/d;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_35
    return-void
.end method
