.class public Lcom/huawei/hms/availableupdate/o;
.super Landroid/content/BroadcastReceiver;
.source "SilentInstallReceive.java"


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p1, Lcom/huawei/hms/ui/SafeIntent;

    invoke-direct {p1, p2}, Lcom/huawei/hms/ui/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.huawei.appmarket.service.downloadservice.Receiver"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1b

    return-void

    .line 11
    :cond_1b
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x65

    .line 12
    iput v0, p2, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    :cond_2c
    const-string v0, "com.huawei.appmarket.service.downloadservice.progress.Receiver"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3b

    return-void

    .line 22
    :cond_3b
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x66

    .line 23
    iput v0, p2, Landroid/os/Message;->what:I

    .line 24
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    :cond_4c
    const-string v0, "com.huawei.appmarket.service.installerservice.Receiver"

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5b

    return-void

    .line 31
    :cond_5b
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x67

    .line 32
    iput v0, p2, Landroid/os/Message;->what:I

    .line 33
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6b
    :goto_6b
    return-void
.end method
