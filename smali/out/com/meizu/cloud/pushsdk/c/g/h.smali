.class final Lcom/meizu/cloud/pushsdk/c/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meizu/cloud/pushsdk/c/g/c;


# instance fields
.field private final a:Lcom/meizu/cloud/pushsdk/c/g/b;

.field private final b:Lcom/meizu/cloud/pushsdk/c/g/l;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/c/g/l;)V
    .registers 3

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/c/g/h;-><init>(Lcom/meizu/cloud/pushsdk/c/g/l;Lcom/meizu/cloud/pushsdk/c/g/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/c/g/l;Lcom/meizu/cloud/pushsdk/c/g/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/meizu/cloud/pushsdk/c/g/m;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_18

    const-wide/16 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    const-wide/16 v3, 0x800

    invoke-interface {p1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/c/g/m;->b(Lcom/meizu/cloud/pushsdk/c/g/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    goto :goto_4

    :cond_17
    return-wide v0

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-interface {v2, v3, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/l;->a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V

    :cond_17
    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    return-object v0
.end method

.method public b(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([B)Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BII)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([BII)Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 6

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-wide v1, v1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-wide v3, v3, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/c/g/l;->a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    invoke-interface {v1}, Lcom/meizu/cloud/pushsdk/c/g/l;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    if-nez v0, :cond_27

    move-object v0, v1

    :cond_27
    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method

.method public e(J)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(J)Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/h;->a()Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->c:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->a:Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-wide v2, v1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/c/g/l;->a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V

    :cond_17
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/c/g/l;->flush()V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/h;->b:Lcom/meizu/cloud/pushsdk/c/g/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method