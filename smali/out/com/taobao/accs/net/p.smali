.class Lcom/taobao/accs/net/p;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    if-nez v0, :cond_7

    return-void

    .line 417
    :cond_7
    iget-object v0, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    invoke-virtual {v0}, Lcom/taobao/accs/net/j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 420
    :cond_14
    iget-object v0, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "mTryStartServiceRunable bindapp"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    iget-object v1, p0, Lcom/taobao/accs/net/p;->a:Lcom/taobao/accs/net/j;

    iget-object v1, v1, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/j;->b(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-void
.end method
