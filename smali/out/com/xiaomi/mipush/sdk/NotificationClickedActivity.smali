.class public final Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_2d

    :try_start_2
    const-string v0, "mipush_serviceIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_2d

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "is_clicked_activity_call"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "clicked activity start service."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/os/Handler;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ac;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/ac;-><init>(Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action_clicked_activity_finish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/mipush/sdk/ad;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/ad;-><init>(Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/content/BroadcastReceiver;

    :try_start_3c
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_46

    :catch_46
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
