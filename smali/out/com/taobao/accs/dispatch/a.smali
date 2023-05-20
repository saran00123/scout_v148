.class final Lcom/taobao/accs/dispatch/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;ZLandroid/content/Context;)V
    .registers 4

    .line 40
    iput-object p1, p0, Lcom/taobao/accs/dispatch/a;->a:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/taobao/accs/dispatch/a;->b:Z

    iput-object p3, p0, Lcom/taobao/accs/dispatch/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .line 43
    sget-object v0, Lcom/taobao/accs/dispatch/IntentDispatch;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "bindService connected"

    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 45
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 47
    :try_start_20
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    iget-object v4, p0, Lcom/taobao/accs/dispatch/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_3a
    .catchall {:try_start_20 .. :try_end_2e} :catchall_38

    .line 53
    iget-boolean p1, p0, Lcom/taobao/accs/dispatch/a;->b:Z

    if-eqz p1, :cond_4f

    .line 54
    :goto_32
    iget-object p1, p0, Lcom/taobao/accs/dispatch/a;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4f

    :catchall_38
    move-exception p1

    goto :goto_50

    :catch_3a
    move-exception p1

    .line 51
    :try_start_3b
    sget-object p2, Lcom/taobao/accs/dispatch/IntentDispatch;->TAG:Ljava/lang/String;

    const-string v0, "dispatch intent with exception"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_38

    .line 53
    iget-boolean p1, p0, Lcom/taobao/accs/dispatch/a;->b:Z

    if-eqz p1, :cond_4f

    goto :goto_32

    :cond_4f
    :goto_4f
    return-void

    :goto_50
    iget-boolean p2, p0, Lcom/taobao/accs/dispatch/a;->b:Z

    if-eqz p2, :cond_59

    .line 54
    iget-object p2, p0, Lcom/taobao/accs/dispatch/a;->c:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    :cond_59
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 61
    sget-object v0, Lcom/taobao/accs/dispatch/IntentDispatch;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "bindService on disconnect"

    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/taobao/accs/dispatch/a;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
