.class Lcom/alibaba/sdk/android/emas/h$b;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/emas/d;

.field final synthetic a:Lcom/alibaba/sdk/android/emas/h;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/h;Lcom/alibaba/sdk/android/emas/d;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/emas/e;

    .line 208
    iget-object v2, v1, Lcom/alibaba/sdk/android/emas/e;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    if-nez v2, :cond_2c

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alibaba/sdk/android/emas/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v1, v1, Lcom/alibaba/sdk/android/emas/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2c
    const/4 v3, 0x1

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/sdk/android/emas/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 217
    :cond_36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_61
    return-object p1
.end method

.method private a()Z
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public b()Lcom/alibaba/sdk/android/emas/d;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    return-object v0
.end method

.method public e()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 179
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/h$b;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "SendManager send queue fill, write into disk cache."

    .line 181
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/alibaba/sdk/android/emas/h$b$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/emas/h$b$1;-><init>(Lcom/alibaba/sdk/android/emas/h$b;)V

    .line 190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    .line 191
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3a

    .line 193
    :cond_2b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3a

    :cond_2f
    const-string v0, "SendManager send queue fill, already in disk cache. do nothing."

    .line 197
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string v0, "SendManager send queue fill, disk cache not open, discard."

    .line 200
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public run()V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    if-ne v0, v1, :cond_24

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendManager send disk log, location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/d;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 117
    :cond_24
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 118
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/d;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/emas/PreSendHandler;->onHandlePreSend(Ljava/util/List;Lcom/alibaba/sdk/android/emas/b;)Ljava/util/List;

    move-result-object v0

    goto :goto_49

    .line 120
    :cond_43
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/d;->a()Ljava/util/List;

    move-result-object v0

    :goto_49
    if-eqz v0, :cond_12f

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12f

    .line 125
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/h$b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    :try_start_56
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v2}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v3}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B

    move-result-object v1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_68} :catch_69

    goto :goto_6f

    :catch_69
    move-exception v0

    const-string v2, "SendManager pack request failed"

    .line 131
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    if-eqz v1, :cond_12a

    .line 135
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v2}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 137
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 138
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/d;)Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/EmasSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->isBackground()Z

    move-result v0

    if-nez v0, :cond_d8

    invoke-static {}, Lcom/alibaba/sdk/android/emas/h;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d8

    const-string v0, "SendManager trying send disk cache."

    .line 142
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/c;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    if-eqz v0, :cond_d2

    const-string v1, "SendManager sending disk cache."

    .line 146
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;Lcom/alibaba/sdk/android/emas/d;)V

    goto :goto_12f

    :cond_d2
    const-string v0, "SendManager disk cache is empty."

    .line 149
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_12f

    .line 152
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendManager finish send. background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v1}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/EmasSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/EmasSender;->isBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/emas/h;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_12f

    .line 156
    :cond_10b
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    if-eqz v0, :cond_124

    const-string v0, "SendManager request failed. put into cache."

    .line 157
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/d;)V

    goto :goto_12f

    :cond_124
    const-string v0, "SendManager request failed. do nothing."

    .line 160
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_12f

    :cond_12a
    const-string v0, "SendManager pack requst is null."

    .line 164
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :cond_12f
    :goto_12f
    return-void
.end method
