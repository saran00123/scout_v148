.class public Lcom/meizu/cloud/pushsdk/handler/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/meizu/cloud/pushsdk/b/a/a;

.field private c:I

.field private d:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/app/Notification;)V
    .registers 3

    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->d:Landroid/app/Notification;

    return-void
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->d:Landroid/app/Notification;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    if-eqz v1, :cond_1a

    :try_start_a
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/b/a/a;->b()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_12
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    :goto_d
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    goto :goto_1a

    :catchall_10
    move-exception v1

    goto :goto_17

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    goto :goto_d

    :goto_17
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method private b(I)V
    .registers 7

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/b/a/a;->b()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    :goto_b
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    goto :goto_18

    :catchall_e
    move-exception p1

    goto :goto_15

    :catch_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    goto :goto_b

    :goto_15
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    throw p1

    :cond_18
    :goto_18
    new-instance v0, Lcom/meizu/cloud/pushsdk/b/a/a;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/meizu/cloud/pushsdk/handler/a/a/a$1;

    invoke-direct {v2, p0}, Lcom/meizu/cloud/pushsdk/handler/a/a/a$1;-><init>(Lcom/meizu/cloud/pushsdk/handler/a/a/a;)V

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b:Lcom/meizu/cloud/pushsdk/b/a/a;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/b/a/a;->a()Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const-string v0, "AdNotification"

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->d:Landroid/app/Notification;

    if-nez v1, :cond_b

    goto :goto_52

    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->d:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "again show old ad notification, notifyId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_32} :catch_33

    goto :goto_4f

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "again show old ad notification error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b()V

    :cond_52
    :goto_52
    return-void
.end method

.method public a(I)V
    .registers 4

    if-lez p1, :cond_22

    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->c:I

    if-lez v0, :cond_22

    if-eq p1, v0, :cond_9

    goto :goto_22

    :cond_9
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean ad notification, notifyId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdNotification"

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public a(ILandroid/app/Notification;I)V
    .registers 4

    if-lez p1, :cond_21

    if-nez p2, :cond_5

    goto :goto_21

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->a(ILandroid/app/Notification;)V

    invoke-direct {p0, p3}, Lcom/meizu/cloud/pushsdk/handler/a/a/a;->b(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save ad notification, notifyId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdNotification"

    invoke-static {p2, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public a(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .registers 6

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setSound(Z)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setLights(Z)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setVibrate(Z)V

    :cond_1c
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getAdvanceSettingEx()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;

    move-result-object p1

    if-eqz p1, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;->setSoundTitle(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_39

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->isHeadUpNotification()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;->setPriorityDisplay(I)V

    goto :goto_3c

    :cond_39
    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;->setPriorityDisplay(I)V

    :cond_3c
    :goto_3c
    return-void
.end method
