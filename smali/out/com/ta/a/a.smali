.class public Lcom/ta/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ta/a/a;


# instance fields
.field private a:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/ta/a/a;

    invoke-direct {v0}, Lcom/ta/a/a;-><init>()V

    sput-object v0, Lcom/ta/a/a;->a:Lcom/ta/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ta/a/a;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/ta/a/a;->a:J

    return-void
.end method

.method public static a()Lcom/ta/a/a;
    .registers 1

    .line 21
    sget-object v0, Lcom/ta/a/a;->a:Lcom/ta/a/a;

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ta/a/a;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ta/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 5

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ta/a/a;->a:J

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/ta/a/a;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_18

    if-nez p1, :cond_9

    .line 27
    monitor-exit p0

    return-void

    .line 30
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/a/a;->mContext:Landroid/content/Context;

    goto :goto_18

    .line 33
    :cond_16
    iput-object p1, p0, Lcom/ta/a/a;->mContext:Landroid/content/Context;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    .line 36
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/ta/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method
