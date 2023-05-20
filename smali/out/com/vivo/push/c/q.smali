.class public final Lcom/vivo/push/c/q;
.super Lcom/vivo/push/c/o;
.source "OnUnBindAppReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/q;)Landroid/content/Context;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/vivo/push/c/q;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 6

    .line 20
    check-cast p1, Lcom/vivo/push/b/i;

    .line 21
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 1019
    iget-object v1, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 1029
    iget v2, p1, Lcom/vivo/push/b/s;->g:I

    const/4 v3, 0x0

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/push/d;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lcom/vivo/push/c/q$1;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/c/q$1;-><init>(Lcom/vivo/push/c/q;Lcom/vivo/push/b/i;)V

    invoke-static {v0}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
