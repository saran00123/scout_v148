.class public abstract Lcom/xiaomi/push/gj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/gj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static a:Z


# instance fields
.field protected a:I

.field protected a:J

.field protected a:Lcom/xiaomi/push/gk;

.field protected a:Lcom/xiaomi/push/gv;

.field protected a:Lcom/xiaomi/push/service/XMPushService;

.field protected a:Ljava/lang/String;

.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/xiaomi/push/gm;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/push/go;",
            "Lcom/xiaomi/push/gj$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:I

.field protected volatile b:J

.field protected b:Ljava/lang/String;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/push/go;",
            "Lcom/xiaomi/push/gj$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field protected volatile c:J

.field protected d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/push/gj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lcom/xiaomi/push/gj;->a:Z

    :try_start_a
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/gj;->a:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    invoke-static {}, Lcom/xiaomi/push/gp;->a()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/gk;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/gj;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->b:J

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->c:J

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/push/gj;->b:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gv;

    const-string v2, ""

    iput-object v2, p0, Lcom/xiaomi/push/gj;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/push/gj;->b:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, p0, Lcom/xiaomi/push/gj;->c:I

    sget-object v2, Lcom/xiaomi/push/gj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/push/gj;->b:I

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->e:J

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->d:J

    iput-object p2, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gk;

    iput-object p1, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p0}, Lcom/xiaomi/push/gj;->c()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "connected"

    return-object p1

    :cond_6
    if-nez p1, :cond_b

    const-string p1, "connecting"

    return-object p1

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    const-string p1, "disconnected"

    return-object p1

    :cond_11
    const-string p1, "unknown"

    return-object p1
.end method

.method private a(I)V
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    :try_start_6
    iget-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    goto :goto_31

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x6

    if-le p1, v1, :cond_31

    iget-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/gj;->a:I

    return v0
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/gj;->c:J

    return-wide v0
.end method

.method public a()Lcom/xiaomi/push/gk;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gk;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gk;

    invoke-virtual {v0}, Lcom/xiaomi/push/gk;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/xiaomi/push/go;",
            "Lcom/xiaomi/push/gj$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(IILjava/lang/Exception;)V
    .registers 9

    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_25

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/gj;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {p0, p1}, Lcom/xiaomi/push/gj;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Lcom/xiaomi/push/service/bh;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "update the connection status. %1$s -> %2$s : %3$s "

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_25
    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/xiaomi/push/gj;->a(I)V

    :cond_30
    const/16 v0, 0xa

    if-ne p1, v2, :cond_5a

    iget-object p2, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget p2, p0, Lcom/xiaomi/push/gj;->c:I

    if-eqz p2, :cond_42

    const-string p2, "try set connected while not connecting."

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_42
    iput p1, p0, Lcom/xiaomi/push/gj;->c:I

    iget-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/push/gm;

    invoke-interface {p2, p0}, Lcom/xiaomi/push/gm;->b(Lcom/xiaomi/push/gj;)V

    goto :goto_4a

    :cond_5a
    if-nez p1, :cond_7d

    iget p2, p0, Lcom/xiaomi/push/gj;->c:I

    if-eq p2, v1, :cond_65

    const-string p2, "try set connecting while not disconnected."

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_65
    iput p1, p0, Lcom/xiaomi/push/gj;->c:I

    iget-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/push/gm;

    invoke-interface {p2, p0}, Lcom/xiaomi/push/gm;->a(Lcom/xiaomi/push/gj;)V

    goto :goto_6d

    :cond_7d
    if-ne p1, v1, :cond_c3

    iget-object v1, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    if-nez v0, :cond_a9

    iget-object p2, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/gm;

    if-nez p3, :cond_a4

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "disconnect while connecting"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_a5

    :cond_a4
    move-object v1, p3

    :goto_a5
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/push/gm;->a(Lcom/xiaomi/push/gj;Ljava/lang/Exception;)V

    goto :goto_8e

    :cond_a9
    if-ne v0, v2, :cond_c1

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/gm;

    invoke-interface {v1, p0, p2, p3}, Lcom/xiaomi/push/gm;->a(Lcom/xiaomi/push/gj;ILjava/lang/Exception;)V

    goto :goto_b1

    :cond_c1
    iput p1, p0, Lcom/xiaomi/push/gj;->c:I

    :cond_c3
    return-void
.end method

.method public a(Lcom/xiaomi/push/gm;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public a(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Lcom/xiaomi/push/gj$a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/gj$a;-><init>(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V

    iget-object p2, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Packet listener is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Lcom/xiaomi/push/ha;)V
.end method

.method public abstract a(Lcom/xiaomi/push/service/bd$b;)V
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaomi/push/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/push/gj;->a:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaomi/push/gj;->a(IILjava/lang/Exception;)V

    goto :goto_31

    :cond_2c
    const-string p1, "ignore setChallenge because connection was disconnected"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    :goto_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a([Lcom/xiaomi/push/fy;)V
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a(J)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/xiaomi/push/gj;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long p1, v0, p1

    if-ltz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gk;

    invoke-virtual {v0}, Lcom/xiaomi/push/gk;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(ILjava/lang/Exception;)V
.end method

.method public abstract b(Lcom/xiaomi/push/fy;)V
.end method

.method public b(Lcom/xiaomi/push/gm;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Lcom/xiaomi/push/gj$a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/gj$a;-><init>(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V

    iget-object p2, p0, Lcom/xiaomi/push/gj;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Packet listener is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Z)V
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected c()V
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gk;

    invoke-virtual {v0}, Lcom/xiaomi/push/gk;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gv;

    if-nez v0, :cond_56

    const/4 v0, 0x0

    :try_start_d
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_20

    :try_start_17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    if-nez v0, :cond_2a

    new-instance v0, Lcom/xiaomi/push/gh;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/gh;-><init>(Lcom/xiaomi/push/gj;)V

    iput-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gv;

    goto :goto_56

    :cond_2a
    const/4 v1, 0x3

    :try_start_2b
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/xiaomi/push/gj;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/io/Writer;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v5, Ljava/io/Reader;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/gv;

    iput-object v0, p0, Lcom/xiaomi/push/gj;->a:Lcom/xiaomi/push/gv;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_56
    :goto_56
    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lcom/xiaomi/push/gj;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/gj;->e:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/gj;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
