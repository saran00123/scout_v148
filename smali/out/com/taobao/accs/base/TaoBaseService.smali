.class public abstract Lcom/taobao/accs/base/TaoBaseService;
.super Landroid/app/Service;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/AccsDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;,
        Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;,
        Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaoBaseService"


# instance fields
.field private mDefaultDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/base/TaoBaseService$1;-><init>(Lcom/taobao/accs/base/TaoBaseService;)V

    iput-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->mDefaultDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    .line 143
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/taobao/accs/base/TaoBaseService$2;

    invoke-direct {v1, p0}, Lcom/taobao/accs/base/TaoBaseService$2;-><init>(Lcom/taobao/accs/base/TaoBaseService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->messenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->mDefaultDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 162
    iget-object p1, p0, Lcom/taobao/accs/base/TaoBaseService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->mDefaultDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 183
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 188
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->mDefaultDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 193
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_22

    const/4 p2, 0x2

    .line 194
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "className"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string p3, "TaoBaseService"

    const-string v0, "onStartCommand"

    invoke-static {p3, v0, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_22
    invoke-static {p0, p1, p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I

    move-result p1

    return p1
.end method
