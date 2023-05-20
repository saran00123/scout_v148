.class public Lorg/android/spdy/SpdyBytePool;
.super Ljava/lang/Object;
.source "SpdyBytePool.java"


# static fields
.field private static volatile gInstance:Lorg/android/spdy/SpdyBytePool;

.field private static lock:Ljava/lang/Object;

.field private static rand:Ljava/util/Random;


# instance fields
.field private pool:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/android/spdy/SpdyByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private reused:J

.field private std:Lorg/android/spdy/SpdyByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyBytePool;->rand:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    .line 9
    new-instance v0, Lorg/android/spdy/SpdyByteArray;

    invoke-direct {v0}, Lorg/android/spdy/SpdyByteArray;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyBytePool;->std:Lorg/android/spdy/SpdyByteArray;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lorg/android/spdy/SpdyBytePool;->reused:J

    .line 15
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    return-void
.end method

.method public static getInstance()Lorg/android/spdy/SpdyBytePool;
    .registers 2

    .line 19
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    if-nez v0, :cond_17

    .line 20
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    if-nez v1, :cond_12

    .line 22
    new-instance v1, Lorg/android/spdy/SpdyBytePool;

    invoke-direct {v1}, Lorg/android/spdy/SpdyBytePool;-><init>()V

    sput-object v1, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    .line 24
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 26
    :cond_17
    :goto_17
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    return-object v0
.end method


# virtual methods
.method getSpdyByteArray(I)Lorg/android/spdy/SpdyByteArray;
    .registers 8

    .line 40
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iget-object v1, p0, Lorg/android/spdy/SpdyBytePool;->std:Lorg/android/spdy/SpdyByteArray;

    iput p1, v1, Lorg/android/spdy/SpdyByteArray;->length:I

    .line 42
    iget-object v1, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/android/spdy/SpdyBytePool;->std:Lorg/android/spdy/SpdyByteArray;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/SpdyByteArray;

    if-nez v1, :cond_19

    .line 44
    new-instance v1, Lorg/android/spdy/SpdyByteArray;

    invoke-direct {v1, p1}, Lorg/android/spdy/SpdyByteArray;-><init>(I)V

    goto :goto_24

    .line 46
    :cond_19
    iget-object v2, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-wide v2, p0, Lorg/android/spdy/SpdyBytePool;->reused:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/android/spdy/SpdyBytePool;->reused:J

    .line 49
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_54

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSpdyByteArray: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "libeasy"

    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/android/spdy/SpdyBytePool;->reused:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "libeasy"

    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_54
    move-exception p1

    .line 49
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method recycle(Lorg/android/spdy/SpdyByteArray;)V
    .registers 4

    .line 56
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object v1, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_8
    iget-object p1, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_26

    .line 64
    sget-object p1, Lorg/android/spdy/SpdyBytePool;->rand:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 65
    iget-object p1, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_8

    .line 67
    :cond_20
    iget-object p1, p0, Lorg/android/spdy/SpdyBytePool;->pool:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    goto :goto_8

    .line 70
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method
