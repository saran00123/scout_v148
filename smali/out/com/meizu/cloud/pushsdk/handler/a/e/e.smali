.class public Lcom/meizu/cloud/pushsdk/handler/a/e/e;
.super Lcom/meizu/cloud/pushsdk/handler/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/a/a<",
        "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/a/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x800

    return v0
.end method

.method protected a(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;Lcom/meizu/cloud/pushsdk/notification/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->c()Lcom/meizu/cloud/pushsdk/handler/a;

    move-result-object p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->c()Lcom/meizu/cloud/pushsdk/handler/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/meizu/cloud/pushsdk/handler/a;->a(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    :cond_13
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/c;)V
    .registers 3

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->a(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;Lcom/meizu/cloud/pushsdk/notification/c;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "AbstractMessageHandler"

    const-string v1, "start SubScribeTagsStatusHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sub_tags_status"

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

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;->l(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object p1

    return-object p1
.end method

.method protected l(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .registers 4

    const-string v0, "messageValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/message/a;->e(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "extra_app_push_sub_tags_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    return-object p1
.end method
