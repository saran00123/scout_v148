.class final Lcom/vivo/push/f$1;
.super Landroid/os/Handler;
.source "PushClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    instance-of v0, p1, Lcom/vivo/push/e;

    if-eqz v0, :cond_1e

    .line 25
    check-cast p1, Lcom/vivo/push/e;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushClientThread-handleMessage, task = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushClientThread"

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Lcom/vivo/push/e;->run()V

    :cond_1e
    return-void
.end method
