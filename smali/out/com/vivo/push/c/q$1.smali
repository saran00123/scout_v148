.class final Lcom/vivo/push/c/q$1;
.super Ljava/lang/Object;
.source "OnUnBindAppReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/q;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b/i;

.field final synthetic b:Lcom/vivo/push/c/q;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/q;Lcom/vivo/push/b/i;)V
    .registers 3

    .line 22
    iput-object p1, p0, Lcom/vivo/push/c/q$1;->b:Lcom/vivo/push/c/q;

    iput-object p2, p0, Lcom/vivo/push/c/q$1;->a:Lcom/vivo/push/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/vivo/push/c/q$1;->b:Lcom/vivo/push/c/q;

    iget-object v0, v0, Lcom/vivo/push/c/q;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/q$1;->b:Lcom/vivo/push/c/q;

    invoke-static {v1}, Lcom/vivo/push/c/q;->a(Lcom/vivo/push/c/q;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/q$1;->a:Lcom/vivo/push/b/i;

    .line 1029
    iget v2, v2, Lcom/vivo/push/b/s;->g:I

    .line 26
    iget-object v3, p0, Lcom/vivo/push/c/q$1;->a:Lcom/vivo/push/b/i;

    .line 2026
    iget-object v3, v3, Lcom/vivo/push/b/i;->c:Ljava/lang/String;

    .line 26
    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/push/sdk/PushMessageCallback;->onUnBind(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
