.class Lcom/xiaomi/push/service/cn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/service/cn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_3f

    :try_start_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_31

    const/16 v1, 0x12

    if-eq v0, v1, :cond_10

    goto :goto_3f

    :cond_10
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "xmsf_region"

    iget-object v3, p0, Lcom/xiaomi/push/service/cn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_3f

    :cond_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/push/service/cn;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    :goto_3f
    return-void
.end method
