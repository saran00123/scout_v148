.class public final Lio/reactivex/schedulers/Timed;
.super Ljava/lang/Object;
.source "Timed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    .line 40
    iput-wide p2, p0, Lio/reactivex/schedulers/Timed;->time:J

    const-string p1, "unit is null"

    .line 41
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 81
    instance-of v0, p1, Lio/reactivex/schedulers/Timed;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 82
    check-cast p1, Lio/reactivex/schedulers/Timed;

    .line 83
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    iget-object v2, p1, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->time:J

    iget-wide v4, p1, Lio/reactivex/schedulers/Timed;->time:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 85
    invoke-static {v0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 92
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 93
    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->time:J

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public time()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lio/reactivex/schedulers/Timed;->time:J

    return-wide v0
.end method

.method public time(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 76
    iget-wide v0, p0, Lio/reactivex/schedulers/Timed;->time:J

    iget-object v2, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed[time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/reactivex/schedulers/Timed;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unit()Ljava/util/concurrent/TimeUnit;
    .registers 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    return-object v0
.end method
