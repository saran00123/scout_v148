.class public Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "DefaultTrackNameProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackNameProvider;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 3

    .line 73
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_45

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    goto :goto_45

    :cond_9
    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_21

    .line 88
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :cond_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_7_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_5_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_33
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_stereo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_3c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_mono:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_45
    :goto_45
    const-string p1, ""

    return-object p1
.end method

.method private buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    .line 66
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    const-string p1, ""

    goto :goto_1f

    .line 69
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_bitrate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    return-object p1
.end method

.method private buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 3

    .line 99
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, ""

    goto :goto_d

    :cond_b
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    :goto_d
    return-object p1
.end method

.method private buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private buildLanguageString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 4

    .line 103
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "und"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_28

    .line 107
    :cond_12
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1d

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_23

    :cond_1d
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 108
    :goto_23
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_28
    :goto_28
    const-string p1, ""

    return-object p1
.end method

.method private buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    .line 58
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 59
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    if-ne p1, v1, :cond_a

    goto :goto_24

    .line 62
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_resolution:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_24
    :goto_24
    const-string p1, ""

    :goto_26
    return-object p1
.end method

.method private buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 8

    .line 113
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_alternate:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    .line 116
    :goto_11
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    .line 117
    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_supplementary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_2b
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_43

    .line 120
    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_commentary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_43
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_5b

    .line 123
    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_closed_captions:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5b
    return-object v0
.end method

.method private static inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    return v2

    .line 151
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    return v3

    .line 154
    :cond_1e
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_27

    goto :goto_32

    .line 157
    :cond_27
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_31

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq p0, v1, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    return v3

    :cond_32
    :goto_32
    return v2
.end method

.method private varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_2b

    aget-object v4, p1, v2

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_28

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v3, v4

    goto :goto_28

    .line 136
    :cond_18
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    return-object v3
.end method


# virtual methods
.method public getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    .line 40
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_23

    .line 42
    new-array v0, v2, [Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_23
    if-ne v0, v3, :cond_3e

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 52
    :cond_3e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_50

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_50
    return-object p1
.end method
