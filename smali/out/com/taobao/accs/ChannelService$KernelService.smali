.class public Lcom/taobao/accs/ChannelService$KernelService;
.super Landroid/app/Service;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelService"
.end annotation


# static fields
.field private static a:Lcom/taobao/accs/ChannelService$KernelService;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/taobao/accs/ChannelService$KernelService;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Lcom/taobao/accs/ChannelService$KernelService;
    .registers 1

    .line 114
    sget-object v0, Lcom/taobao/accs/ChannelService$KernelService;->a:Lcom/taobao/accs/ChannelService$KernelService;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    sput-object p0, Lcom/taobao/accs/ChannelService$KernelService;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 126
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService$KernelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ChannelService$KernelService;->b:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .registers 5

    const/4 v0, 0x1

    .line 171
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChannelService"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_10
    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/taobao/accs/ChannelService$KernelService;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 177
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 134
    :try_start_0
    new-instance v0, Lcom/taobao/accs/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/c;-><init>(Lcom/taobao/accs/ChannelService$KernelService;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChannelService"

    const-string v3, " onStartCommand"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 165
    :goto_14
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
