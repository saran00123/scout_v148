.class final Lcom/vivo/push/c/i$1;
.super Ljava/lang/Object;
.source "OnListTagReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/i;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b/m;

.field final synthetic b:Lcom/vivo/push/c/i;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/i;Lcom/vivo/push/b/m;)V
    .registers 3

    .line 20
    iput-object p1, p0, Lcom/vivo/push/c/i$1;->b:Lcom/vivo/push/c/i;

    iput-object p2, p0, Lcom/vivo/push/c/i$1;->a:Lcom/vivo/push/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 24
    iget-object v0, p0, Lcom/vivo/push/c/i$1;->b:Lcom/vivo/push/c/i;

    iget-object v0, v0, Lcom/vivo/push/c/i;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/i$1;->b:Lcom/vivo/push/c/i;

    invoke-static {v1}, Lcom/vivo/push/c/i;->a(Lcom/vivo/push/c/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/i$1;->a:Lcom/vivo/push/b/m;

    .line 1029
    iget v2, v2, Lcom/vivo/push/b/s;->g:I

    .line 24
    iget-object v3, p0, Lcom/vivo/push/c/i$1;->a:Lcom/vivo/push/b/m;

    .line 2018
    iget-object v3, v3, Lcom/vivo/push/b/m;->c:Ljava/util/ArrayList;

    .line 24
    iget-object v4, p0, Lcom/vivo/push/c/i$1;->a:Lcom/vivo/push/b/m;

    .line 2019
    iget-object v4, v4, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 24
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/push/sdk/PushMessageCallback;->onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
