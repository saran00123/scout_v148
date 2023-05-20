.class public Lcom/xiaomi/push/gf;
.super Lcom/xiaomi/push/gq;


# instance fields
.field private a:Lcom/xiaomi/push/ga;

.field private a:Lcom/xiaomi/push/gb;

.field private a:Ljava/lang/Thread;

.field private a:[B


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/gk;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/gq;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/gk;)V

    return-void
.end method

.method private a(Z)Lcom/xiaomi/push/fy;
    .registers 4

    new-instance v0, Lcom/xiaomi/push/ge;

    invoke-direct {v0}, Lcom/xiaomi/push/ge;-><init>()V

    if-eqz p1, :cond_c

    const-string p1, "1"

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ge;->a(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/xiaomi/push/fw;->a()[B

    move-result-object p1

    if-eqz p1, :cond_26

    new-instance v1, Lcom/xiaomi/push/dw$j;

    invoke-direct {v1}, Lcom/xiaomi/push/dw$j;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/push/a;->a([B)Lcom/xiaomi/push/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/dw$j;->a(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/dw$j;

    invoke-virtual {v1}, Lcom/xiaomi/push/dw$j;->a()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/ge;->a([BLjava/lang/String;)V

    :cond_26
    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/gf;)Lcom/xiaomi/push/ga;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/ga;

    return-object p0
.end method

.method private i()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/ga;

    iget-object v1, p0, Lcom/xiaomi/push/gf;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/push/ga;-><init>(Ljava/io/InputStream;Lcom/xiaomi/push/gf;)V

    iput-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/ga;

    new-instance v0, Lcom/xiaomi/push/gb;

    iget-object v1, p0, Lcom/xiaomi/push/gf;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/push/gb;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/push/gf;)V

    iput-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    new-instance v0, Lcom/xiaomi/push/gg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/gf;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/gg;-><init>(Lcom/xiaomi/push/gf;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    new-instance v1, Lcom/xiaomi/push/gu;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/push/gf;->i()V

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    invoke-virtual {v0}, Lcom/xiaomi/push/gb;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(ILjava/lang/Exception;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/ga;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/ga;

    invoke-virtual {v0}, Lcom/xiaomi/push/ga;->b()V

    iput-object v1, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/ga;

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    if-eqz v0, :cond_1d

    :try_start_11
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    invoke-virtual {v0}, Lcom/xiaomi/push/gb;->b()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_24

    goto :goto_1b

    :catch_17
    move-exception v0

    :try_start_18
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :goto_1b
    iput-object v1, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    :cond_1d
    iput-object v1, p0, Lcom/xiaomi/push/gf;->a:[B

    invoke-super {p0, p1, p2}, Lcom/xiaomi/push/gq;->a(ILjava/lang/Exception;)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/xiaomi/push/fy;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_45
    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()I

    move-result v0

    if-nez v0, :cond_85

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/gf;->h()V

    goto :goto_85

    :cond_73
    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/gf;->c(ILjava/lang/Exception;)V

    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/gj$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/gj$a;->a(Lcom/xiaomi/push/fy;)V

    goto :goto_8f

    :cond_9f
    return-void
.end method

.method public a(Lcom/xiaomi/push/ha;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/push/fy;->a(Lcom/xiaomi/push/ha;Ljava/lang/String;)Lcom/xiaomi/push/fy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/gf;->b(Lcom/xiaomi/push/fy;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/bd$b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/gf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/push/fx;->a(Lcom/xiaomi/push/service/bd$b;Ljava/lang/String;Lcom/xiaomi/push/gj;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2, p0}, Lcom/xiaomi/push/fx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/gj;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    if-eqz v0, :cond_27

    invoke-direct {p0, p1}, Lcom/xiaomi/push/gf;->a(Z)Lcom/xiaomi/push/fy;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] SND ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/gf;->b(Lcom/xiaomi/push/fy;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/gf;->g()V

    return-void

    :cond_27
    new-instance p1, Lcom/xiaomi/push/gu;

    const-string v0, "The BlobWriter is null."

    invoke-direct {p1, v0}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([Lcom/xiaomi/push/fy;)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/gf;->b(Lcom/xiaomi/push/fy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized a()[B
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:[B

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {}, Lcom/xiaomi/push/service/bs;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/gf;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/bm;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/gf;->a:[B

    :cond_48
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:[B
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-object v0

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/et;->a(Landroid/content/Context;)Lcom/xiaomi/push/et;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/et;->a(J)V

    return-void
.end method

.method public b(Lcom/xiaomi/push/fy;)V
    .registers 13

    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/gb;

    if-eqz v0, :cond_63

    :try_start_4
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/gb;->a(Lcom/xiaomi/push/fy;)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/push/gf;->d:J

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v3, p0, Lcom/xiaomi/push/gf;->a:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/push/ho;->a(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    :cond_24
    iget-object v0, p0, Lcom/xiaomi/push/gf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/gj$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/gj$a;->a(Lcom/xiaomi/push/fy;)V

    goto :goto_2e

    :cond_3e
    const-string v0, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/xiaomi/push/gf;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/et;->a(Landroid/content/Context;)Lcom/xiaomi/push/et;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/et;->a(J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5b} :catch_5c

    :cond_5b
    return-void

    :catch_5c
    move-exception p1

    new-instance v0, Lcom/xiaomi/push/gu;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_63
    new-instance p1, Lcom/xiaomi/push/gu;

    const-string v0, "the writer is null."

    invoke-direct {p1, v0}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lcom/xiaomi/push/ha;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/gf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/gj$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/gj$a;->a(Lcom/xiaomi/push/ha;)V

    goto :goto_d

    :cond_1d
    return-void
.end method
