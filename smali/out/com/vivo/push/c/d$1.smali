.class final Lcom/vivo/push/c/d$1;
.super Ljava/lang/Object;
.source "OnBindAppReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/d;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vivo/push/b/i;

.field final synthetic c:Lcom/vivo/push/c/d;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/d;Ljava/lang/String;Lcom/vivo/push/b/i;)V
    .registers 4

    .line 29
    iput-object p1, p0, Lcom/vivo/push/c/d$1;->c:Lcom/vivo/push/c/d;

    iput-object p2, p0, Lcom/vivo/push/c/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/push/c/d$1;->b:Lcom/vivo/push/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/vivo/push/c/d$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 33
    iget-object v0, p0, Lcom/vivo/push/c/d$1;->c:Lcom/vivo/push/c/d;

    iget-object v0, v0, Lcom/vivo/push/c/d;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/d$1;->c:Lcom/vivo/push/c/d;

    invoke-static {v1}, Lcom/vivo/push/c/d;->a(Lcom/vivo/push/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/d$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vivo/push/sdk/PushMessageCallback;->onReceiveRegId(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    :cond_17
    iget-object v0, p0, Lcom/vivo/push/c/d$1;->c:Lcom/vivo/push/c/d;

    iget-object v0, v0, Lcom/vivo/push/c/d;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/d$1;->c:Lcom/vivo/push/c/d;

    invoke-static {v1}, Lcom/vivo/push/c/d;->b(Lcom/vivo/push/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/d$1;->b:Lcom/vivo/push/b/i;

    .line 1029
    iget v2, v2, Lcom/vivo/push/b/s;->g:I

    .line 35
    iget-object v3, p0, Lcom/vivo/push/c/d$1;->b:Lcom/vivo/push/b/i;

    .line 2026
    iget-object v3, v3, Lcom/vivo/push/b/i;->c:Ljava/lang/String;

    .line 35
    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/push/sdk/PushMessageCallback;->onBind(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
