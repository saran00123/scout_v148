.class Lcom/taobao/accs/data/i;
.super Landroid/os/Handler;
.source "Taobao"


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/MsgDistributeService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/MsgDistributeService;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/taobao/accs/data/i;->a:Lcom/taobao/accs/data/MsgDistributeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    if-eqz p1, :cond_3a

    const/4 v0, 0x2

    .line 31
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "msg"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "MsgDistributeService"

    const-string v5, "handleMessage on receive msg"

    invoke-static {v3, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_3a

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "handleMessage get intent success"

    invoke-static {v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/taobao/accs/data/i;->a:Lcom/taobao/accs/data/MsgDistributeService;

    invoke-virtual {v0, p1, v2, v2}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    :cond_3a
    return-void
.end method
