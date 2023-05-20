.class public Lcom/xiaomi/push/dm;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/dm;


# instance fields
.field private a:Lcom/xiaomi/push/dl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/push/dm;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dm;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/dm;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dm;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/dm;

    invoke-direct {v1}, Lcom/xiaomi/push/dm;-><init>()V

    sput-object v1, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dm;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dm;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/xiaomi/push/dl;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dl;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/dm;->a:Lcom/xiaomi/push/dl;

    return-void
.end method
