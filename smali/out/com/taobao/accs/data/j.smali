.class Lcom/taobao/accs/data/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/taobao/accs/data/MsgDistributeService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/MsgDistributeService;Landroid/content/Intent;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/taobao/accs/data/j;->b:Lcom/taobao/accs/data/MsgDistributeService;

    iput-object p2, p0, Lcom/taobao/accs/data/j;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MsgDistributeService"

    const-string v2, "onStartCommand send message"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/taobao/accs/data/j;->a:Landroid/content/Intent;

    const-string v1, "reqdata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    .line 70
    iget-object v1, p0, Lcom/taobao/accs/data/j;->a:Landroid/content/Intent;

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/taobao/accs/data/j;->a:Landroid/content/Intent;

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/taobao/accs/data/j;->a:Landroid/content/Intent;

    const-string v4, "configTag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    move-object v3, v2

    .line 75
    :cond_33
    iget-object v4, p0, Lcom/taobao/accs/data/j;->b:Lcom/taobao/accs/data/MsgDistributeService;

    invoke-virtual {v4}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/taobao/accs/data/j;->b:Lcom/taobao/accs/data/MsgDistributeService;

    invoke-virtual {v3}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method
