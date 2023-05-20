.class final Lcom/vivo/push/c/k$1;
.super Ljava/lang/Object;
.source "OnMessageReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/k;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/model/UnvarnishedMessage;

.field final synthetic b:Lcom/vivo/push/c/k;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/k;Lcom/vivo/push/model/UnvarnishedMessage;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/vivo/push/c/k$1;->b:Lcom/vivo/push/c/k;

    iput-object p2, p0, Lcom/vivo/push/c/k$1;->a:Lcom/vivo/push/model/UnvarnishedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/vivo/push/c/k$1;->b:Lcom/vivo/push/c/k;

    iget-object v0, v0, Lcom/vivo/push/c/k;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/k$1;->b:Lcom/vivo/push/c/k;

    invoke-static {v1}, Lcom/vivo/push/c/k;->a(Lcom/vivo/push/c/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/k$1;->a:Lcom/vivo/push/model/UnvarnishedMessage;

    invoke-interface {v0, v1, v2}, Lcom/vivo/push/sdk/PushMessageCallback;->onTransmissionMessage(Landroid/content/Context;Lcom/vivo/push/model/UnvarnishedMessage;)V

    return-void
.end method
