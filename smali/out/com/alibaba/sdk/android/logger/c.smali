.class Lcom/alibaba/sdk/android/logger/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/logger/ILog;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alibaba/sdk/android/logger/ILogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    return-void
.end method


# virtual methods
.method public arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 6

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    return-object v0
.end method

.method public done()V
    .registers 1

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/logger/c;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    return-object v0
.end method

.method public prefix(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public tr(Ljava/lang/Throwable;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/logger/c;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/logger/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/c;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    return-object v0
.end method
