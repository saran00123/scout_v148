.class public Lcom/meizu/cloud/pushsdk/c/g/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/meizu/cloud/pushsdk/c/g/n;


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/n$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/g/n$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/g/n;->a:Lcom/meizu/cloud/pushsdk/c/g/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/n;->b:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/n;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    goto :goto_20

    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
