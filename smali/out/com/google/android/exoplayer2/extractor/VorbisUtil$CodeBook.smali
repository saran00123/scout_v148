.class final Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodeBook"
.end annotation


# instance fields
.field public final dimensions:I

.field public final entries:I

.field public final isOrdered:Z

.field public final lengthMap:[J

.field public final lookupType:I


# direct methods
.method public constructor <init>(II[JIZ)V
    .registers 6

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;->dimensions:I

    .line 556
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;->entries:I

    .line 557
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;->lengthMap:[J

    .line 558
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;->lookupType:I

    .line 559
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;->isOrdered:Z

    return-void
.end method
