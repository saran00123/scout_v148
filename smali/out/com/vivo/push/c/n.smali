.class public final Lcom/vivo/push/c/n;
.super Lcom/vivo/push/c/o;
.source "OnPublishReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/n;)Landroid/content/Context;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/vivo/push/c/n;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 3

    .line 19
    check-cast p1, Lcom/vivo/push/b/r;

    .line 20
    new-instance v0, Lcom/vivo/push/c/n$1;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/c/n$1;-><init>(Lcom/vivo/push/c/n;Lcom/vivo/push/b/r;)V

    invoke-static {v0}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
