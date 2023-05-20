.class Lcom/alibaba/sdk/android/logger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/logger/ILog;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alibaba/sdk/android/logger/ILogger;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/sdk/android/logger/LogLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/a;->e:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/logger/a;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    return-void
.end method

.method private a()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_40
    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/a;->g:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v3, p0, Lcom/alibaba/sdk/android/logger/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/a;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/a;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/a;->g:Lcom/alibaba/sdk/android/logger/LogLevel;

    iget-object v3, p0, Lcom/alibaba/sdk/android/logger/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/logger/LogLevel;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->g:Lcom/alibaba/sdk/android/logger/LogLevel;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_19

    iget-object p2, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_19
    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/a;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public done()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public prefix(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public tr(Ljava/lang/Throwable;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/logger/a;->a()V

    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 3

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/logger/a;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/logger/a;->b(Ljava/lang/String;)V

    return-object p0
.end method
