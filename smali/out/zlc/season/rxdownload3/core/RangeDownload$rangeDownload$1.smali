.class final Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;
.super Ljava/lang/Object;
.source "RangeDownload.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RangeDownload;->rangeDownload(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;->INSTANCE:Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    check-cast p1, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;->apply(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Ljava/lang/String;
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getCurrent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
