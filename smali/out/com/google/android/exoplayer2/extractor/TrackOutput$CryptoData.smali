.class public final Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 74
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 85
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 86
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 87
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v0, v1

    return v0
.end method
