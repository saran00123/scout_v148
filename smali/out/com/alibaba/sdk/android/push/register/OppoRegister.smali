.class public Lcom/alibaba/sdk/android/push/register/OppoRegister;
.super Ljava/lang/Object;
.source "OppoRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:OPush"

.field private static final TOKEN:Ljava/lang/String; = "OPPO_TOKEN"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "MPS:OPush"

    const/4 v1, 0x0

    .line 47
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_a

    return v1

    .line 51
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string p0, "not in main process, return"

    .line 53
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 57
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    invoke-static {p0, v2}, Lcom/heytap/msp/push/HeytapPushManager;->init(Landroid/content/Context;Z)V

    .line 58
    invoke-static {}, Lcom/heytap/msp/push/HeytapPushManager;->isSupportPush()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 60
    new-instance v2, Lcom/alibaba/sdk/android/push/impl/OppoMsgParseImpl;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/push/impl/OppoMsgParseImpl;-><init>()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    const-string v2, "register oppo begin "

    .line 61
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v2, Lcom/alibaba/sdk/android/push/register/OppoRegister$2;

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/push/register/OppoRegister$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v2}, Lcom/heytap/msp/push/HeytapPushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return v3

    :cond_4b
    const-string p0, "not support oppo push"

    .line 95
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p0

    .line 98
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "register error"

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5b
    return v1
.end method

.method public static registerAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 37
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
