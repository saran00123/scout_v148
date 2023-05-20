.class public final Lcom/vivo/push/c/k;
.super Lcom/vivo/push/c/o;
.source "OnMessageReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/k;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 8

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/vivo/push/b/o;

    .line 35
    new-instance v1, Lcom/vivo/push/b/h;

    .line 1022
    iget-wide v2, v0, Lcom/vivo/push/b/v;->e:J

    .line 35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/push/b/h;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 37
    iget-object v1, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->isEnablePush()Z

    move-result v1

    const-string v2, "remoteAppId"

    const-string v3, "messageID"

    const-string v4, "OnMessageTask"

    if-nez v1, :cond_71

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "command  "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is ignore by disable push "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Lcom/vivo/push/b/x;

    const-wide/16 v4, 0x3fc

    invoke-direct {p1, v4, v5}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2022
    iget-wide v4, v0, Lcom/vivo/push/b/v;->e:J

    .line 42
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 45
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    :cond_67
    iput-object v1, p1, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    return-void

    .line 51
    :cond_71
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 2286
    iget-boolean p1, p1, Lcom/vivo/push/d;->f:Z

    if-eqz p1, :cond_bf

    .line 51
    iget-object p1, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/util/y;->d(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vivo/push/b/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 3030
    iget-object v5, v0, Lcom/vivo/push/b/v;->d:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1, v1, v5}, Lcom/vivo/push/c/k;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_bf

    .line 52
    new-instance p1, Lcom/vivo/push/b/x;

    const-wide/16 v4, 0x3fd

    invoke-direct {p1, v4, v5}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4022
    iget-wide v4, v0, Lcom/vivo/push/b/v;->e:J

    .line 54
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/push/c/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 57
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    :cond_b5
    iput-object v1, p1, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    return-void

    .line 63
    :cond_bf
    invoke-virtual {v0}, Lcom/vivo/push/b/o;->c()Lcom/vivo/push/model/UnvarnishedMessage;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 65
    invoke-virtual {p1}, Lcom/vivo/push/model/UnvarnishedMessage;->getTargetType()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lcom/vivo/push/model/UnvarnishedMessage;->getTragetContent()Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tragetType is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ; target is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/vivo/push/c/k$1;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/c/k$1;-><init>(Lcom/vivo/push/c/k;Lcom/vivo/push/model/UnvarnishedMessage;)V

    invoke-static {v0}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_ef
    const-string p1, " message is null"

    .line 76
    invoke-static {v4, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
