.class public final Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
.super Ljava/lang/Object;
.source "RangeTmpFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/core/RangeTmpFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/core/RangeTmpFile$Segment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
        "",
        "index",
        "",
        "start",
        "current",
        "end",
        "(JJJJ)V",
        "getCurrent",
        "()J",
        "setCurrent",
        "(J)V",
        "getEnd",
        "getIndex",
        "getStart",
        "isComplete",
        "",
        "size",
        "write",
        "sink",
        "Lokio/BufferedSink;",
        "Companion",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment$Companion;

.field public static final SEGMENT_SIZE:J = 0x20L


# instance fields
.field private current:J

.field private final end:J

.field private final index:J

.field private final start:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->Companion:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment$Companion;

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .registers 9

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->index:J

    iput-wide p3, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->start:J

    iput-wide p5, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    iput-wide p7, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->end:J

    return-void
.end method


# virtual methods
.method public final getCurrent()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    return-wide v0
.end method

.method public final getEnd()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->end:J

    return-wide v0
.end method

.method public final getIndex()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->index:J

    return-wide v0
.end method

.method public final getStart()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->start:J

    return-wide v0
.end method

.method public final isComplete()Z
    .registers 5

    .line 196
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    iget-wide v2, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->end:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final setCurrent(J)V
    .registers 3

    .line 189
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    return-void
.end method

.method public final size()J
    .registers 5

    .line 208
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->end:J

    iget-wide v2, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final write(Lokio/BufferedSink;)Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
    .registers 4
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->index:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 201
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->start:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 202
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->current:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 203
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->end:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    return-object p0
.end method
