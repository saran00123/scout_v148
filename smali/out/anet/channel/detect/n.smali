.class public Lanet/channel/detect/n;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Lanet/channel/detect/d;

.field private static b:Lanet/channel/detect/ExceptionDetector;

.field private static c:Lanet/channel/detect/k;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lanet/channel/detect/d;

    invoke-direct {v0}, Lanet/channel/detect/d;-><init>()V

    sput-object v0, Lanet/channel/detect/n;->a:Lanet/channel/detect/d;

    .line 15
    new-instance v0, Lanet/channel/detect/ExceptionDetector;

    invoke-direct {v0}, Lanet/channel/detect/ExceptionDetector;-><init>()V

    sput-object v0, Lanet/channel/detect/n;->b:Lanet/channel/detect/ExceptionDetector;

    .line 16
    new-instance v0, Lanet/channel/detect/k;

    invoke-direct {v0}, Lanet/channel/detect/k;-><init>()V

    sput-object v0, Lanet/channel/detect/n;->c:Lanet/channel/detect/k;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanet/channel/detect/n;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 5

    const-string v0, "awcn.NetworkDetector"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    :try_start_4
    sget-object v3, Lanet/channel/detect/n;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "registerListener"

    .line 25
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object v3, Lanet/channel/detect/n;->a:Lanet/channel/detect/d;

    invoke-virtual {v3}, Lanet/channel/detect/d;->b()V

    .line 27
    sget-object v3, Lanet/channel/detect/n;->b:Lanet/channel/detect/ExceptionDetector;

    invoke-virtual {v3}, Lanet/channel/detect/ExceptionDetector;->a()V

    .line 28
    sget-object v3, Lanet/channel/detect/n;->c:Lanet/channel/detect/k;

    invoke-virtual {v3}, Lanet/channel/detect/k;->a()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception v3

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "[registerListener]error"

    invoke-static {v0, v4, v1, v3, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static a(Lanet/channel/statist/RequestStatistic;)V
    .registers 2

    .line 40
    sget-object v0, Lanet/channel/detect/n;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 44
    :cond_9
    sget-object v0, Lanet/channel/detect/n;->b:Lanet/channel/detect/ExceptionDetector;

    invoke-virtual {v0, p0}, Lanet/channel/detect/ExceptionDetector;->a(Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method
