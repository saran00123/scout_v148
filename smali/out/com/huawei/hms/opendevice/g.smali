.class public Lcom/huawei/hms/opendevice/g;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/opendevice/h;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/huawei/hms/opendevice/h;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/opendevice/h;Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/opendevice/g;->c:Lcom/huawei/hms/opendevice/h;

    iput-object p2, p0, Lcom/huawei/hms/opendevice/g;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/huawei/hms/opendevice/g;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "RemoteService"

    const-string v0, "remote service onConnected"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/opendevice/g;->c:Lcom/huawei/hms/opendevice/h;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/opendevice/h;->a(Lcom/huawei/hms/opendevice/h;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/opendevice/g;->a:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    :try_start_1a
    iget-object v0, p0, Lcom/huawei/hms/opendevice/g;->c:Lcom/huawei/hms/opendevice/h;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/h;->a(Lcom/huawei/hms/opendevice/h;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_29

    :catch_24
    const-string p2, "remote service message send failed"

    .line 6
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    const-string p2, "remote service unbindservice"

    .line 7
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/opendevice/g;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/huawei/hms/opendevice/g;->c:Lcom/huawei/hms/opendevice/h;

    invoke-static {p2}, Lcom/huawei/hms/opendevice/h;->b(Lcom/huawei/hms/opendevice/h;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "RemoteService"

    const-string v0, "remote service onDisconnected"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/opendevice/g;->c:Lcom/huawei/hms/opendevice/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/opendevice/h;->a(Lcom/huawei/hms/opendevice/h;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
