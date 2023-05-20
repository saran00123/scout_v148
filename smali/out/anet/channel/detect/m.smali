.class Lanet/channel/detect/m;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field final synthetic b:Lanet/channel/detect/l;


# direct methods
.method constructor <init>(Lanet/channel/detect/l;Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lanet/channel/detect/m;->b:Lanet/channel/detect/l;

    iput-object p2, p0, Lanet/channel/detect/m;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 53
    :try_start_0
    iget-object v0, p0, Lanet/channel/detect/m;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lanet/channel/detect/m;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_d

    goto :goto_1b

    .line 56
    :cond_d
    iget-object v0, p0, Lanet/channel/detect/m;->b:Lanet/channel/detect/l;

    iget-object v0, v0, Lanet/channel/detect/l;->a:Lanet/channel/detect/k;

    iget-object v1, p0, Lanet/channel/detect/m;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v1}, Lanet/channel/status/NetworkStatusHelper;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/detect/k;->a(Lanet/channel/detect/k;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    goto :goto_28

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.MTUDetector"

    const-string v4, "MTU detecet fail."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_28
    return-void
.end method
