.class public Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;
    .registers 1

    invoke-static {}, Lcom/alibaba/sdk/android/push/b/b;->a()Lcom/alibaba/sdk/android/push/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/app/Application;)V

    :cond_e
    invoke-static {p0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/b/b;->a()Lcom/alibaba/sdk/android/push/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/b/b;->setPushIntentService(Ljava/lang/Class;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->a()Lcom/alibaba/sdk/android/push/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/a;->b()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/app/Application;)V

    :cond_e
    invoke-static {p0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/b/b;->a()Lcom/alibaba/sdk/android/push/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/b;->setAppkey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alibaba/sdk/android/push/b/b;->setAppSecret(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/b/b;->setPushIntentService(Ljava/lang/Class;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->a()Lcom/alibaba/sdk/android/push/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/a;->b()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p3}, Lcom/taobao/accs/ACCSClient;->enableChannelProcess(Landroid/content/Context;Z)V

    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/taobao/accs/ACCSClient;->enableChannelProcess(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;)V
    .registers 5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->isDisableForegroundCheck()Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/a/b;->a(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/b/b;->a()Lcom/alibaba/sdk/android/push/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/b;->setPushIntentService(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/b;->setAppkey(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/b;->setAppSecret(Ljava/lang/String;)V

    :cond_46
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->isDisableChannelProcess()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/accs/ACCSClient;->enableChannelProcess(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->a()Lcom/alibaba/sdk/android/push/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->isLoopStartChannel()Z

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->getLoopInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/g/a;->a(ZJ)V

    return-void
.end method
