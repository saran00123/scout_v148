.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebvttCueInfoBuilder"
.end annotation


# instance fields
.field public endTimeUs:J

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public position:F

.field public positionAnchor:I

.field public size:F

.field public startTimeUs:J

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:I

.field public verticalType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 781
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 782
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    const/4 v0, 0x2

    .line 784
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    const v0, -0x800001

    .line 785
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 v1, 0x1

    .line 787
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    const/4 v1, 0x0

    .line 789
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 790
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const/high16 v0, -0x80000000

    .line 791
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 793
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 794
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    return-void
.end method

.method private static computeLine(FI)F
    .registers 6

    const v0, -0x800001

    cmpl-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-ltz v3, :cond_14

    cmpl-float v3, p0, v2

    if-lez v3, :cond_15

    :cond_14
    return v2

    :cond_15
    if-eqz v1, :cond_18

    return p0

    :cond_18
    if-nez p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method private static convertTextAlignment(I)Landroid/text/Layout$Alignment;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_29

    const/16 v0, 0x22

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown textAlignment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 885
    :cond_29
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 882
    :cond_2c
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 880
    :cond_2f
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method private static deriveMaxSize(IF)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_22

    const/4 v1, 0x1

    if-eq p0, v1, :cond_15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    return p1

    .line 907
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz p0, :cond_1f

    mul-float/2addr p1, v1

    return p1

    :cond_1f
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    return v0

    :cond_22
    sub-float/2addr v0, p1

    return v0
.end method

.method private static derivePosition(I)F
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static derivePositionAnchor(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_f

    const/4 v1, 0x5

    if-eq p0, v1, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x2

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 8

    .line 798
    new-instance v6, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;-><init>(Lcom/google/android/exoplayer2/text/Cue;JJ)V

    return-object v6
.end method

.method public toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 6

    .line 803
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    goto :goto_10

    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePosition(I)F

    move-result v0

    .line 806
    :goto_10
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_17

    goto :goto_1d

    .line 808
    :cond_17
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePositionAnchor(I)I

    move-result v1

    .line 809
    :goto_1d
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 811
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->convertTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 812
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->computeLine(FI)F

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 813
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 814
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 815
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 816
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->deriveMaxSize(IF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 817
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_63

    .line 820
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    :cond_63
    return-object v0
.end method
