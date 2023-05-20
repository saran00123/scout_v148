.class final Lcom/vivo/push/c/j$1;
.super Ljava/lang/Object;
.source "OnLogReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/j;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b/n;

.field final synthetic b:Lcom/vivo/push/c/j;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/j;Lcom/vivo/push/b/n;)V
    .registers 3

    .line 17
    iput-object p1, p0, Lcom/vivo/push/c/j$1;->b:Lcom/vivo/push/c/j;

    iput-object p2, p0, Lcom/vivo/push/c/j$1;->a:Lcom/vivo/push/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 21
    iget-object v0, p0, Lcom/vivo/push/c/j$1;->b:Lcom/vivo/push/c/j;

    iget-object v0, v0, Lcom/vivo/push/c/j;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/j$1;->b:Lcom/vivo/push/c/j;

    invoke-static {v1}, Lcom/vivo/push/c/j;->a(Lcom/vivo/push/c/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/j$1;->a:Lcom/vivo/push/b/n;

    .line 1023
    iget-object v2, v2, Lcom/vivo/push/b/n;->c:Ljava/lang/String;

    .line 21
    iget-object v3, p0, Lcom/vivo/push/c/j$1;->a:Lcom/vivo/push/b/n;

    .line 1033
    iget v3, v3, Lcom/vivo/push/b/n;->d:I

    .line 21
    iget-object v4, p0, Lcom/vivo/push/c/j$1;->a:Lcom/vivo/push/b/n;

    .line 1043
    iget-boolean v4, v4, Lcom/vivo/push/b/n;->e:Z

    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/push/sdk/PushMessageCallback;->onLog(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method
