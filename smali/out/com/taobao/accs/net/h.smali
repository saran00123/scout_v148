.class Lcom/taobao/accs/net/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/g;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/g;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/taobao/accs/net/h;->a:Lcom/taobao/accs/net/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .registers 5

    .line 34
    new-instance p1, Lcom/taobao/accs/net/i;

    invoke-direct {p1, p0}, Lcom/taobao/accs/net/i;-><init>(Lcom/taobao/accs/net/h;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v1, v2, v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
