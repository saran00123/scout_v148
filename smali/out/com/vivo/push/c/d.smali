.class public final Lcom/vivo/push/c/d;
.super Lcom/vivo/push/c/o;
.source "OnBindAppReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/d;)Landroid/content/Context;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/vivo/push/c/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/push/c/d;)Landroid/content/Context;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/vivo/push/c/d;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 8

    .line 22
    check-cast p1, Lcom/vivo/push/b/i;

    .line 1042
    iget-object v0, p1, Lcom/vivo/push/b/i;->d:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v1

    .line 2019
    iget-object v2, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 2029
    iget v3, p1, Lcom/vivo/push/b/s;->g:I

    const/4 v4, 0x1

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/push/d;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 3019
    iget-object v1, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 27
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/push/d;->a(Ljava/lang/String;)V

    .line 29
    :cond_2a
    new-instance v1, Lcom/vivo/push/c/d$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/vivo/push/c/d$1;-><init>(Lcom/vivo/push/c/d;Ljava/lang/String;Lcom/vivo/push/b/i;)V

    invoke-static {v1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
