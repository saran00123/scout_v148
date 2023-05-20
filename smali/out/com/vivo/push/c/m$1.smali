.class final Lcom/vivo/push/c/m$1;
.super Ljava/lang/Object;
.source "OnNotificationClickTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/m;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/model/UPSNotificationMessage;

.field final synthetic b:Lcom/vivo/push/c/m;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/m;Lcom/vivo/push/model/UPSNotificationMessage;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/vivo/push/c/m$1;->b:Lcom/vivo/push/c/m;

    iput-object p2, p0, Lcom/vivo/push/c/m$1;->a:Lcom/vivo/push/model/UPSNotificationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/vivo/push/c/m$1;->b:Lcom/vivo/push/c/m;

    iget-object v0, v0, Lcom/vivo/push/c/m;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    if-eqz v0, :cond_15

    .line 88
    iget-object v0, p0, Lcom/vivo/push/c/m$1;->b:Lcom/vivo/push/c/m;

    iget-object v0, v0, Lcom/vivo/push/c/m;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/m$1;->b:Lcom/vivo/push/c/m;

    invoke-static {v1}, Lcom/vivo/push/c/m;->a(Lcom/vivo/push/c/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/m$1;->a:Lcom/vivo/push/model/UPSNotificationMessage;

    invoke-interface {v0, v1, v2}, Lcom/vivo/push/sdk/PushMessageCallback;->onNotificationMessageClicked(Landroid/content/Context;Lcom/vivo/push/model/UPSNotificationMessage;)V

    :cond_15
    return-void
.end method
