.class public Lcom/meizu/cloud/pushsdk/notification/a/c;
.super Lcom/meizu/cloud/pushsdk/notification/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/notification/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .registers 7

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizuAndFlyme()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getAppIconSetting()Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->isDefaultLargeIcon()Z

    move-result v1

    const-string v2, "AbstractPushNotification"

    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getLargeIcon()I

    move-result v0

    if-eqz v0, :cond_3a

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getLargeIcon()I

    move-result v0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "set largeIcon by resource id"

    goto :goto_5b

    :cond_3a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getAppLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->b:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getAppLargeIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "set largeIcon by bitmap provided by user setting"

    goto :goto_5b

    :cond_4f
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/meizu/cloud/pushsdk/notification/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "set largeIcon by package default large icon"

    :goto_5b
    invoke-static {v2, v0}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_8f

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->getLargeIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/notification/a/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_82

    const-string p2, "On other Thread down load largeIcon image success"

    invoke-static {v2, p2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_8f

    :cond_82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/a/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/meizu/cloud/pushsdk/notification/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_8c
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_8f
    :goto_8f
    return-void
.end method
