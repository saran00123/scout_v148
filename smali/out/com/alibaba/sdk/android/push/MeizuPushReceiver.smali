.class public Lcom/alibaba/sdk/android/push/MeizuPushReceiver;
.super Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;
.source "MeizuPushReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:MeizuPushReceiver"

.field private static final TOKEN:Ljava/lang/String; = "MZ_TOKEN"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "onPushMsg"

    const/4 v1, 0x2

    .line 74
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "intent"

    aput-object v4, v2, v3

    if-nez p2, :cond_f

    const-string v4, ""

    goto :goto_13

    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13
    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "MeizuPushReceiver"

    const-string v6, "onMessage"

    invoke-static {v4, v6, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3e

    :try_start_1f
    const-string v2, "content"

    .line 77
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "flyme3.0 content"

    aput-object v2, v1, v3

    aput-object p2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdMsgKeyword:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->onPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p1

    .line 81
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "onPushMsg"

    const/4 v1, 0x4

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "msg"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    const-string v5, "platformExtra"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    aput-object p3, v1, v5

    const-string p3, "MeizuPushReceiver"

    const-string v5, "onMessage"

    invoke-static {p3, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :try_start_1c
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "content"

    aput-object v4, v1, v2

    aput-object p2, v1, v3

    invoke-static {p3, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdMsgKeyword:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->onPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p1

    .line 67
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p3, v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_35
    return-void
.end method

.method public onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .registers 5

    const/4 p1, 0x2

    .line 33
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "status"

    aput-object v1, p1, v0

    if-nez p2, :cond_e

    const-string p2, ""

    goto :goto_12

    :cond_e
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_12
    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "MeizuPushReceiver"

    const-string v0, "onPushStatus"

    invoke-static {p2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 p1, 0x2

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "pushId"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "MeizuPushReceiver"

    const-string v0, "onRegister"

    invoke-static {p2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .registers 10

    const-string v0, "4.1.4"

    const/4 v1, 0x1

    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "MeizuPushReceiver"

    if-eqz p2, :cond_31

    .line 38
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "onRegister"

    invoke-static {v5, v1, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2, v0}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 44
    :cond_31
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, ""

    if-nez p2, :cond_3b

    move-object p2, v2

    goto :goto_3f

    :cond_3b
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3f
    aput-object p2, v4, v1

    const-string p2, "onRegisterStatus"

    invoke-static {v5, p2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object p2, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object p2, p2, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-static {p1, p2, v2, v0}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void
.end method

.method public onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .registers 3

    return-void
.end method

.method public onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .registers 3

    return-void
.end method

.method public onUnRegister(Landroid/content/Context;Z)V
    .registers 5

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "result"

    aput-object v1, p1, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "MeizuPushReceiver"

    const-string v0, "onUnRegister"

    invoke-static {p2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .registers 5

    const/4 p1, 0x2

    .line 50
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "status"

    aput-object v1, p1, v0

    if-nez p2, :cond_e

    const-string p2, ""

    goto :goto_12

    :cond_e
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_12
    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "MeizuPushReceiver"

    const-string v0, "onUnRegisterStatus"

    invoke-static {p2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
