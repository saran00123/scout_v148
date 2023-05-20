.class public Lanet/channel/d/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/util/ALog$ILog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(C)I
    .registers 3

    const/16 v0, 0x44

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x49

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x56

    if-eq p1, v0, :cond_18

    const/16 v0, 0x57

    if-eq p1, v0, :cond_16

    const/4 p1, 0x5

    return p1

    :cond_16
    const/4 p1, 0x3

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1

    :cond_1a
    const/4 p1, 0x2

    return p1

    :cond_1c
    const/4 p1, 0x4

    return p1

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-static {p1, p2}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-static {p1, p2}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 39
    invoke-static {p1, p2, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-static {p1, p2}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isPrintLog(I)Z
    .registers 4

    .line 44
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lanet/channel/d/a;->a(C)I

    move-result v0

    if-lt p1, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isValid()Z
    .registers 2

    .line 54
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid()Z

    move-result v0

    return v0
.end method

.method public setLogLevel(I)V
    .registers 2

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-static {p1, p2}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 29
    invoke-static {p1, p2, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
