.class public Lcom/taobao/accs/utl/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/util/ALog$ILog;


# instance fields
.field private a:Lcom/alibaba/sdk/android/logger/ILog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetworkSdk"

    .line 13
    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public isPrintLog(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setLogLevel(I)V
    .registers 2

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/taobao/accs/utl/i;->a:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/utl/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
