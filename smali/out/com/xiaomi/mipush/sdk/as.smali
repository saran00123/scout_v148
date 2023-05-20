.class Lcom/xiaomi/mipush/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/ao;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ao;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Z)Z

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_43

    :try_start_29
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33
    .catchall {:try_start_29 .. :try_end_32} :catchall_43

    goto :goto_1d

    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_38
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_43
    move-exception p2

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_43

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/ao;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Z)Z

    return-void
.end method
