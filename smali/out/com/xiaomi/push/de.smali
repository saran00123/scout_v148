.class public Lcom/xiaomi/push/de;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/de$a;,
        Lcom/xiaomi/push/de$b;,
        Lcom/xiaomi/push/de$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/push/de;


# instance fields
.field private a:Landroid/content/Context;

.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/xiaomi/push/de$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/xiaomi/push/de;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/push/de$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/de$a;-><init>(Lcom/xiaomi/push/de;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/de;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/de;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/de;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/de;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/de;->a:Lcom/xiaomi/push/de;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/de;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/de;->a:Lcom/xiaomi/push/de;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/de;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/de;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/de;->a:Lcom/xiaomi/push/de;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/push/de;->a:Lcom/xiaomi/push/de;

    iput-object p0, v0, Lcom/xiaomi/push/de;->a:Landroid/content/Context;

    sget-object p0, Lcom/xiaomi/push/de;->a:Lcom/xiaomi/push/de;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/de;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private a(J)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/de$b;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/xiaomi/push/de$b;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/de;->b(J)V

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/de;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/de;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/de;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/de;->a(J)V

    return-void
.end method

.method private b()V
    .registers 5

    invoke-static {}, Lcom/xiaomi/push/ac;->b()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {}, Lcom/xiaomi/push/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_46

    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/de;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.logcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_46

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_43} :catch_46

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :catch_46
    :cond_46
    :goto_46
    return-void
.end method

.method private b(J)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/xiaomi/push/dg;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/dg;-><init>(Lcom/xiaomi/push/de;)V

    invoke-static {v0, p1, p2}, Lcom/xiaomi/push/hm;->a(Lcom/xiaomi/push/an$b;J)V

    :cond_10
    return-void
.end method

.method private c()V
    .registers 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/de$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/de$b;->b()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_2c

    :cond_21
    const-string v1, "remove Expired task"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/de;->c()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/de;->a(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
    .registers 18

    move-object v8, p0

    iget-object v9, v8, Lcom/xiaomi/push/de;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v10, Lcom/xiaomi/push/df;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/df;-><init>(Lcom/xiaomi/push/de;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/de;->b(J)V

    return-void
.end method
