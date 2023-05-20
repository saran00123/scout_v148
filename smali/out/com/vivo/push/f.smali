.class public final Lcom/vivo/push/f;
.super Ljava/lang/Object;
.source "PushClientThread.java"


# static fields
.field private static final a:Landroid/os/Handler;

.field private static final b:Landroid/os/HandlerThread;

.field private static final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/push/f;->a:Landroid/os/Handler;

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "push_client_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    sput-object v0, Lcom/vivo/push/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v0, Lcom/vivo/push/f$1;

    sget-object v1, Lcom/vivo/push/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/push/f$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/push/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/vivo/push/e;)V
    .registers 5

    if-nez p0, :cond_a

    const-string p0, "PushClientThread"

    const-string v0, "client thread error, task is null!"

    .line 36
    invoke-static {p0, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1026
    :cond_a
    iget v0, p0, Lcom/vivo/push/e;->b:I

    .line 46
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 47
    iput v0, v1, Landroid/os/Message;->what:I

    .line 48
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    sget-object p0, Lcom/vivo/push/f;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 4

    .line 62
    sget-object v0, Lcom/vivo/push/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    sget-object v0, Lcom/vivo/push/f;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .line 73
    sget-object v0, Lcom/vivo/push/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
