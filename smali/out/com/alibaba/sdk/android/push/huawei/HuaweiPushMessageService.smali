.class public Lcom/alibaba/sdk/android/push/huawei/HuaweiPushMessageService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "HuaweiPushMessageService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPS:HuaWeiPushMessageService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDeletedMessages()V
    .registers 1

    .line 40
    invoke-super {p0}, Lcom/huawei/hms/push/HmsMessageService;->onDeletedMessages()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/huawei/hms/push/HmsMessageService;->onDestroy()V

    return-void
.end method

.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .registers 8

    const-string v0, "onPushMsg"

    const-string v1, "MPS:HuaWeiPushMessageService"

    .line 21
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V

    const/4 v2, 0x0

    .line 23
    :try_start_8
    sget-boolean v3, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->isChannelRegister:Z

    if-eqz v3, :cond_28

    .line 24
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "org.agoo.android.intent.action.PING_V4"

    .line 25
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.taobao.taobao"

    const-string v5, "com.taobao.accs.ChannelService"

    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "source"

    const-string v5, "huawei-bundle"

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v3}, Lcom/alibaba/sdk/android/push/huawei/HuaweiPushMessageService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    :cond_28
    invoke-virtual {p1}, Lcom/huawei/hms/push/RemoteMessage;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "content"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v3, v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdMsgKeyword:Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->onPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception p1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_47
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onMessageSent(Ljava/lang/String;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 7

    const-string v0, "onToken"

    const-string v1, "MPS:HuaWeiPushMessageService"

    .line 55
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x2

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "token"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v3, v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    const-string v4, "5.3.0.304"

    invoke-static {p0, v3, p1, v4}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception p1

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 50
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/push/HmsMessageService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hms/push/HmsMessageService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
