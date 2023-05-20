.class final Lcom/vivo/push/c/n$1;
.super Ljava/lang/Object;
.source "OnPublishReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/n;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b/r;

.field final synthetic b:Lcom/vivo/push/c/n;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/n;Lcom/vivo/push/b/r;)V
    .registers 3

    .line 20
    iput-object p1, p0, Lcom/vivo/push/c/n$1;->b:Lcom/vivo/push/c/n;

    iput-object p2, p0, Lcom/vivo/push/c/n$1;->a:Lcom/vivo/push/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 24
    iget-object v0, p0, Lcom/vivo/push/c/n$1;->b:Lcom/vivo/push/c/n;

    iget-object v0, v0, Lcom/vivo/push/c/n;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/n$1;->b:Lcom/vivo/push/c/n;

    invoke-static {v1}, Lcom/vivo/push/c/n;->a(Lcom/vivo/push/c/n;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/n$1;->a:Lcom/vivo/push/b/r;

    .line 1029
    iget v2, v2, Lcom/vivo/push/b/s;->g:I

    .line 24
    iget-object v3, p0, Lcom/vivo/push/c/n$1;->a:Lcom/vivo/push/b/r;

    .line 2019
    iget-object v3, v3, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/push/sdk/PushMessageCallback;->onPublish(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
