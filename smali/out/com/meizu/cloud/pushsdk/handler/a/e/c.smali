.class public Lcom/meizu/cloud/pushsdk/handler/a/e/c;
.super Lcom/meizu/cloud/pushsdk/handler/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/a/a<",
        "Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/a/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/handler/a/e/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->e()V

    return-void
.end method

.method private e()V
    .registers 4

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getMzPushServicePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/b;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/util/b;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/b;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/meizu/cloud/pushsdk/util/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x200

    return v0
.end method

.method protected a(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .registers 3

    invoke-static {}, Lcom/meizu/cloud/pushsdk/b/c/a;->a()Lcom/meizu/cloud/pushsdk/b/c/a;

    move-result-object p1

    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/a/e/c$1;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c$1;-><init>(Lcom/meizu/cloud/pushsdk/handler/a/e/c;)V

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;Lcom/meizu/cloud/pushsdk/notification/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->c()Lcom/meizu/cloud/pushsdk/handler/a;

    move-result-object p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->c()Lcom/meizu/cloud/pushsdk/handler/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/meizu/cloud/pushsdk/handler/a;->a(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    :cond_13
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/c;)V
    .registers 3

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->a(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;Lcom/meizu/cloud/pushsdk/notification/c;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "AbstractMessageHandler"

    const-string v1, "start RegisterStatusHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "register_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method

.method protected synthetic c(Landroid/content/Intent;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->l(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic c(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->a(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    return-void
.end method

.method protected l(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .registers 7

    const-string v0, "messageValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/message/a;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object p1

    goto :goto_19

    :cond_11
    const-string v0, "extra_app_push_register_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    :goto_19
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/util/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getExpireTime()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/util/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_53
    return-object p1
.end method
