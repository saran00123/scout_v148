.class public Lcom/meizu/cloud/pushsdk/platform/b/f;
.super Lcom/meizu/cloud/pushsdk/platform/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/platform/b/c<",
        "Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/platform/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/platform/b/f;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-boolean p4, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/meizu/cloud/pushsdk/platform/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/a/a;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p4, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    const/4 v1, 0x1

    if-eqz v0, :cond_97

    if-eq v0, v1, :cond_71

    const/4 v2, 0x2

    if-eq v0, v2, :cond_45

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    goto/16 :goto_b6

    :cond_f
    const-string v0, "SWITCH_ALL"

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->p()Z

    move-result v0

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    if-ne v0, v2, :cond_2d

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->r()Z

    move-result v0

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    if-ne v0, v2, :cond_2d

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->t()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    goto :goto_88

    :cond_2d
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->f(Z)V

    iget-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->e(Z)V

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->e:Lcom/meizu/cloud/pushsdk/platform/a/a;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p1

    goto/16 :goto_d0

    :cond_45
    const-string v0, "CHECK_PUSH"

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->q()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->s()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->t()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->p()Z

    move-result v0

    goto :goto_ac

    :cond_61
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->f(Z)V

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->e:Lcom/meizu/cloud/pushsdk/platform/a/a;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p1

    goto :goto_d0

    :cond_71
    const-string v0, "SWITCH_THROUGH_MESSAGE"

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->r()Z

    move-result v0

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    if-ne v0, v2, :cond_8e

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->t()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->p()Z

    move-result v0

    :goto_88
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    goto :goto_b3

    :cond_8e
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->f(Z)V

    iget-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->d(Z)V

    goto :goto_c0

    :cond_97
    const-string v0, "SWITCH_NOTIFICATION"

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->p()Z

    move-result v0

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    if-ne v0, v2, :cond_b8

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->t()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    :goto_ac
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->r()Z

    move-result v0

    :goto_b3
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    :goto_b6
    const/4 p1, 0x0

    goto :goto_d0

    :cond_b8
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->f(Z)V

    iget-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->c(Z)V

    :goto_c0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->e:Lcom/meizu/cloud/pushsdk/platform/a/a;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    iget-boolean v5, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p1

    :goto_d0
    return-object p1
.end method

.method private c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/util/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_29

    :cond_23
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-static {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/util/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private f(Z)V
    .registers 5

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->k:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private o()V
    .registers 6

    iget v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    goto :goto_23

    :cond_b
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->a(Landroid/content/Context;IZLjava/lang/String;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    goto :goto_1c

    :cond_18
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    :goto_1c
    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->a(Landroid/content/Context;IZLjava/lang/String;)V

    :goto_23
    return-void
.end method

.method private p()Z
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/b;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private q()Z
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private r()Z
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/b;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private s()Z
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/b;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private t()Z
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->k:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncPushStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " switch type->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flag->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Strategy"

    invoke-static {v2, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    return-void
.end method

.method protected bridge synthetic a(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .registers 2

    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->a(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    return-void
.end method

.method protected a(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->d:Ljava/lang/String;

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    return-void
.end method

.method protected a()Z
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected synthetic b()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .registers 2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->h()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    return-void
.end method

.method protected c()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    const-string v2, "app_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "strategy_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    const-string v2, "push_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->g()I

    move-result v1

    const-string v2, "strategy_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    const-string v2, "strategy_child_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    if-eqz v1, :cond_3c

    const-string v1, "1"

    goto :goto_3e

    :cond_3c
    const-string v1, "0"

    :goto_3e
    const-string v2, "strategy_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected synthetic e()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .registers 2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->i()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .registers 2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->j()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected g()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected h()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .registers 3

    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    const-string v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "appId not empty"

    :goto_14
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_2e

    :cond_18
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "appKey not empty"

    goto :goto_14

    :cond_23
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "pushId not empty"

    goto :goto_14

    :cond_2e
    :goto_2e
    return-object v0
.end method

.method protected i()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .registers 7

    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setPushId(Ljava/lang/String;)V

    const-string v1, "200"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->b(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object v2

    const-string v3, "Strategy"

    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/c/a/c;->b()Z

    move-result v4

    if-eqz v4, :cond_6c

    new-instance v4, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/c/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network pushSwitchStatus "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->f(Z)V

    const-string v1, "update local switch preference"

    invoke-static {v3, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchNotificationMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchThroughMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchNotificationMessage()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->c(Z)V

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchThroughMessage()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/b/f;->d(Z)V

    goto :goto_c0

    :cond_6c
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/c/a/c;->c()Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/b/a;->a()Lcom/meizu/cloud/pushsdk/c/c/k;

    move-result-object v2

    if-eqz v2, :cond_9a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/b/a;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/b/a;->a()Lcom/meizu/cloud/pushsdk/c/c/k;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/b/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushSwitchStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    :goto_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRpc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSupportRemoteInvoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->g:Z

    if-eqz v1, :cond_eb

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->f:Z

    if-nez v1, :cond_eb

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->o()V

    :cond_eb
    return-object v0
.end method

.method protected j()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .registers 3

    iget v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->i:I

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_1f

    :cond_e
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->e(Z)V

    goto :goto_1f

    :cond_14
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->d(Z)V

    goto :goto_1f

    :cond_1a
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/f;->j:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/b/f;->c(Z)V

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method
