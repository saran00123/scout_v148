.class final Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
.super Ljava/lang/Object;
.source "DefaultSampleValues.java"


# instance fields
.field public final duration:I

.field public final flags:I

.field public final sampleDescriptionIndex:I

.field public final size:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 27
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    .line 28
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    .line 29
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    return-void
.end method
