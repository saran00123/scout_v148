.class Lanet/channel/strategy/dispatch/a$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/dispatch/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/strategy/dispatch/a;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lanet/channel/strategy/dispatch/a;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a$a;->a:Lanet/channel/strategy/dispatch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lanet/channel/strategy/dispatch/a;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a$a;->a:Lanet/channel/strategy/dispatch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lanet/channel/strategy/dispatch/a$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    :try_start_2
    iget-object v2, p0, Lanet/channel/strategy/dispatch/a$a;->b:Ljava/util/Map;

    if-nez v2, :cond_1a

    .line 62
    const-class v2, Lanet/channel/strategy/dispatch/a;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_40

    .line 63
    :try_start_9
    iget-object v3, p0, Lanet/channel/strategy/dispatch/a$a;->a:Lanet/channel/strategy/dispatch/a;

    invoke-static {v3}, Lanet/channel/strategy/dispatch/a;->a(Lanet/channel/strategy/dispatch/a;)Ljava/util/Map;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lanet/channel/strategy/dispatch/a$a;->a:Lanet/channel/strategy/dispatch/a;

    invoke-static {v4, v1}, Lanet/channel/strategy/dispatch/a;->a(Lanet/channel/strategy/dispatch/a;Ljava/util/Map;)Ljava/util/Map;

    .line 65
    monitor-exit v2

    move-object v2, v3

    goto :goto_1a

    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    :try_start_19
    throw v3

    .line 68
    :cond_1a
    :goto_1a
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    .line 72
    :cond_21
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    const-string v4, "Env"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_38

    const-string v2, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v3, "task\'s env changed"

    .line 73
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_38
    invoke-static {v2}, Lanet/channel/strategy/dispatch/d;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lanet/channel/strategy/dispatch/b;->a(Ljava/util/Map;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_40

    goto :goto_4a

    :catch_40
    move-exception v2

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "awcn.AmdcThreadPoolExecutor"

    const-string v4, "exec amdc task failed."

    invoke-static {v3, v4, v1, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4a
    return-void
.end method
