.class Lcom/taobao/accs/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/ChannelService$KernelService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/ChannelService$KernelService;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/taobao/accs/c;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 139
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/ChannelService;->getInstance()Lcom/taobao/accs/ChannelService;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/taobao/accs/c;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v2}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/c;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 141
    invoke-virtual {v3}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_57

    .line 143
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/taobao/accs/c;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 144
    invoke-static {v4}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 146
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x249b

    invoke-virtual {v1, v4, v3}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V

    .line 148
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/taobao/accs/c;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 149
    invoke-static {v3}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 151
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/taobao/accs/ChannelService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 152
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V

    .line 154
    :cond_57
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ChannelService$KernelService;->stopSelf()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5e} :catch_5f

    goto :goto_69

    :catch_5f
    move-exception v1

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ChannelService"

    const-string v3, " onStartCommand run"

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_69
    return-void
.end method
