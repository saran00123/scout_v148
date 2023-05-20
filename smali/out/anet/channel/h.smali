.class Lanet/channel/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lanet/channel/SessionRequest;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    .line 748
    iput-object p1, p0, Lanet/channel/h;->c:Lanet/channel/SessionRequest;

    iput-object p2, p0, Lanet/channel/h;->a:Landroid/content/Intent;

    iput-object p3, p0, Lanet/channel/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const/4 p1, 0x0

    .line 751
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "awcn.SessionRequest"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :try_start_b
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 754
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 755
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent"

    iget-object v5, p0, Lanet/channel/h;->a:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 756
    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_26
    .catchall {:try_start_b .. :try_end_23} :catchall_24

    goto :goto_2e

    :catchall_24
    move-exception p1

    goto :goto_34

    :catch_26
    move-exception p2

    :try_start_27
    const-string v0, "onServiceConnected sendMessage error."

    .line 758
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1, p2, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 760
    :goto_2e
    iget-object p1, p0, Lanet/channel/h;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :goto_34
    iget-object p2, p0, Lanet/channel/h;->b:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 761
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 p1, 0x0

    .line 766
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "awcn.SessionRequest"

    const-string v1, "onServiceDisconnected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget-object p1, p0, Lanet/channel/h;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
