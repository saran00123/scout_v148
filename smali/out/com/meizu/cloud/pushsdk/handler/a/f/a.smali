.class public Lcom/meizu/cloud/pushsdk/handler/a/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/handler/a/f/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_34

    :cond_b
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    add-int/lit8 v4, v0, -0x1

    if-eq v1, v4, :cond_2b

    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b(Landroid/content/Intent;)V

    :cond_2b
    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->a(Landroid/content/Intent;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_34
    :goto_34
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lcom/meizu/cloud/pushsdk/b/c/c;->a()Lcom/meizu/cloud/pushsdk/b/c/c;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/a/f/a$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/f/a$1;-><init>(Lcom/meizu/cloud/pushsdk/handler/a/f/a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/b/c/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->c:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_15

    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/a/f/a$2;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/handler/a/f/a$2;-><init>(Lcom/meizu/cloud/pushsdk/handler/a/f/a;)V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->c:Landroid/content/BroadcastReceiver;

    :cond_15
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "extra_app_push_bright_notification_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getAdvanceSettingEx()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;

    move-result-object p1

    if-eqz v0, :cond_32

    if-nez p1, :cond_18

    goto :goto_32

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSettingEx;->setSoundTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setSound(Z)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setLights(Z)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setVibrate(Z)V

    :cond_32
    :goto_32
    return-void
.end method

.method static synthetic b(Lcom/meizu/cloud/pushsdk/handler/a/f/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_62

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_62

    :cond_9
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    if-nez v0, :cond_15

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    goto :goto_45

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "extra_app_push_bright_notification_message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_19

    :cond_36
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add bright notification intent, intent list: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightNotification"

    invoke-static {p2, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method
