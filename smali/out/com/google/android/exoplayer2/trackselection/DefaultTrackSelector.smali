.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_ORDER:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_TRACKS:[I


# instance fields
.field private final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1615
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 1617
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$gh9ENrJWQNcjWuI1Z_gGyXt-1Q0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$gh9ENrJWQNcjWuI1Z_gGyXt-1Q0;

    .line 1618
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 1624
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1643
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 3

    .line 1651
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 3

    .line 1659
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 1660
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 1661
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 164
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 164
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)V
    .registers 29
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p12

    .line 2092
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_3c

    .line 2093
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p0

    .line 2095
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aget v6, p1, v2

    move-object/from16 v5, p3

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    .line 2094
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v2

    if-nez v2, :cond_39

    .line 2107
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method private static getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IIIZZZ)[I
    .registers 20

    move-object v0, p0

    move v1, p2

    .line 2280
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 2281
    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v10, v2, [I

    const/4 v2, 0x0

    move v11, v2

    move v12, v11

    .line 2283
    :goto_d
    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v2, :cond_30

    if-eq v11, v1, :cond_28

    .line 2286
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v11

    move-object v4, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 2285
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/Format;IZZZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_28
    add-int/lit8 v2, v12, 0x1

    .line 2293
    aput v11, v10, v12

    move v12, v2

    :cond_2d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 2296
    :cond_30
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)I
    .registers 30
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2057
    :goto_2
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    move-object/from16 v2, p12

    .line 2058
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p0

    .line 2060
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    .line 2059
    invoke-static/range {v5 .. v16}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v3

    if-eqz v3, :cond_38

    add-int/lit8 v1, v1, 0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3b
    return v1
.end method

.method private static getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIIIIIIZ)[I
    .registers 35

    move-object/from16 v13, p0

    .line 1980
    iget v0, v13, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v14, 0x2

    if-ge v0, v14, :cond_a

    .line 1981
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    :cond_a
    move/from16 v0, p12

    move/from16 v1, p13

    move/from16 v2, p14

    .line 1985
    invoke-static {v13, v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v15

    .line 1987
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v14, :cond_1d

    .line 1988
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    if-nez p2, :cond_7e

    .line 1994
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v16, v0

    move v10, v1

    move v11, v10

    .line 1996
    :goto_2a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_7b

    .line 1997
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1998
    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1999
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v17, v9

    move/from16 v9, p9

    move v14, v10

    move/from16 v10, p10

    move/from16 v18, v11

    move/from16 v11, p11

    move-object/from16 v19, v12

    move-object v12, v15

    .line 2001
    invoke-static/range {v0 .. v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)I

    move-result v0

    if-le v0, v14, :cond_74

    move v10, v0

    move-object/from16 v16, v17

    goto :goto_75

    :cond_6f
    move v14, v10

    move/from16 v18, v11

    move-object/from16 v19, v12

    :cond_74
    move v10, v14

    :goto_75
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    const/4 v14, 0x2

    goto :goto_2a

    :cond_7b
    move-object/from16 v3, v16

    goto :goto_7f

    :cond_7e
    move-object v3, v0

    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v15

    .line 2024
    invoke-static/range {v0 .. v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)V

    .line 2039
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a3

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_a7

    :cond_a3
    invoke-static {v15}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    :goto_a7
    return-object v0
.end method

.method protected static getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    .line 2551
    :cond_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2552
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-nez p1, :cond_20

    goto :goto_46

    .line 2557
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_44

    :cond_2d
    const-string p2, "-"

    .line 2561
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2562
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2563
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    return p0

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x3

    return p0

    :cond_46
    :goto_46
    if-eqz p2, :cond_4b

    if-nez p0, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    return v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 8

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_8

    move v1, p0

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    if-le p1, p2, :cond_c

    goto :goto_d

    :cond_c
    move p0, v0

    :goto_d
    if-eq v1, p0, :cond_10

    goto :goto_13

    :cond_10
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_13
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_23

    .line 2637
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2640
    :cond_23
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2573
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2574
    :goto_9
    iget v3, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v3, :cond_17

    .line 2575
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_7f

    if-ne p2, v2, :cond_1f

    goto :goto_7f

    :cond_1f
    move v3, v2

    .line 2584
    :goto_20
    iget v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_58

    .line 2585
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 2589
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v5, :cond_55

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v5, :cond_55

    .line 2590
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->height:I

    .line 2591
    invoke-static {p3, p1, p2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2593
    iget v6, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int/2addr v6, v7

    .line 2594
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_55

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_55

    if-ge v6, v3, :cond_55

    move v3, v6

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_58
    if-eq v3, v2, :cond_7f

    .line 2606
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_60
    if-ltz p1, :cond_7f

    .line 2607
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 2608
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_79

    if-le p2, v3, :cond_7c

    .line 2610
    :cond_79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7c
    add-int/lit8 p1, p1, -0x1

    goto :goto_60

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method protected static isSupported(IZ)Z
    .registers 3

    .line 2515
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    if-eqz p1, :cond_d

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/Format;IZZZ)Z
    .registers 9

    const/4 v0, 0x0

    .line 2307
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_39

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_39

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt p1, p3, :cond_39

    if-nez p6, :cond_1c

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq p1, v1, :cond_39

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p3, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne p1, p3, :cond_39

    :cond_1c
    if-nez p4, :cond_2c

    iget-object p1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2315
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_2c
    if-nez p5, :cond_38

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq p1, v1, :cond_39

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget p1, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne p0, p1, :cond_39

    :cond_38
    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2125
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2129
    :cond_8
    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_57

    and-int/2addr p2, p3

    if-eqz p2, :cond_57

    if-eqz p1, :cond_1b

    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2131
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    :cond_1b
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_28

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt p8, p1, :cond_57

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt p1, p4, :cond_57

    :cond_28
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq p1, p2, :cond_34

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt p9, p1, :cond_57

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt p1, p5, :cond_57

    :cond_34
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_4a

    int-to-float p1, p10

    iget p3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_57

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_57

    :cond_4a
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq p1, p2, :cond_56

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt p11, p1, :cond_57

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt p0, p7, :cond_57

    :cond_56
    const/4 v1, 0x1

    :cond_57
    return v1
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 1620
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1621
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_21

    .line 1622
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_21

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_21
    :goto_21
    return v1
.end method

.method static synthetic lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private static maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 2439
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_34

    .line 2440
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2441
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_17

    const/4 v8, 0x2

    if-ne v5, v8, :cond_31

    :cond_17
    if-eqz v7, :cond_31

    .line 2444
    aget-object v8, p1, v2

    .line 2445
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 2444
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_31

    if-ne v5, v6, :cond_2c

    if-eq v4, v1, :cond_2a

    goto :goto_2e

    :cond_2a
    move v4, v2

    goto :goto_31

    :cond_2c
    if-eq v3, v1, :cond_30

    :goto_2e
    move p0, v0

    goto :goto_35

    :cond_30
    move v3, v2

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_34
    move p0, v6

    :goto_35
    if-eq v4, v1, :cond_3a

    if-eq v3, v1, :cond_3a

    move v0, v6

    :cond_3a
    and-int/2addr p0, v0

    if-eqz p0, :cond_46

    .line 2466
    new-instance p0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 2468
    aput-object p0, p2, v4

    .line 2469
    aput-object p0, p2, v3

    :cond_46
    return-void
.end method

.method protected static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 p0, 0x0

    :cond_10
    return-object p0
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 2489
    :cond_4
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    move v1, v0

    .line 2490
    :goto_d
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 2492
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    .line 2493
    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getTunnelingSupport(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 24
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1932
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x18

    goto :goto_d

    :cond_b
    const/16 v2, 0x10

    .line 1935
    :goto_d
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    and-int v3, p2, v2

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    move/from16 v18, v3

    goto :goto_1c

    :cond_1a
    move/from16 v18, v4

    :goto_1c
    move v15, v4

    .line 1938
    :goto_1d
    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v15, v3, :cond_64

    .line 1939
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v14

    .line 1940
    aget-object v4, p1, v15

    iget v7, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v8, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v9, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoWidth:I

    iget v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoHeight:I

    iget v13, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoFrameRate:I

    iget v6, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoBitrate:I

    iget v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move/from16 v16, v3

    move-object v3, v14

    move/from16 v17, v5

    move/from16 v5, v18

    move/from16 v19, v6

    move v6, v2

    move-object v1, v14

    move/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v17

    move/from16 v17, v0

    .line 1941
    invoke-static/range {v3 .. v17}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIIIIIIZ)[I

    move-result-object v0

    .line 1957
    array-length v3, v0

    if-lez v3, :cond_5d

    .line 1958
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    return-object v2

    :cond_5d
    add-int/lit8 v15, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_1d

    :cond_64
    const/4 v0, 0x0

    return-object v0
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v5, v3

    move-object v7, v5

    move v6, v4

    move v4, v2

    .line 2148
    :goto_b
    iget v8, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v8, :cond_66

    .line 2149
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 2150
    iget v9, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 2151
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v9

    .line 2156
    aget-object v10, p1, v4

    move-object v11, v7

    move-object v7, v5

    move v5, v2

    .line 2157
    :goto_22
    iget v12, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v12, :cond_61

    .line 2158
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 2159
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v13, v13, 0x4000

    if-eqz v13, :cond_31

    goto :goto_5e

    .line 2163
    :cond_31
    aget v13, v10, v5

    iget-boolean v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 2165
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;

    aget v14, v10, v5

    .line 2170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v13, v12, v1, v14, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IZ)V

    .line 2171
    iget-boolean v12, v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;->isWithinMaxConstraints:Z

    if-nez v12, :cond_53

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v12, :cond_53

    goto :goto_5e

    :cond_53
    if-eqz v11, :cond_5b

    .line 2175
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;)I

    move-result v12

    if-lez v12, :cond_5e

    :cond_5b
    move v6, v5

    move-object v7, v8

    move-object v11, v13

    :cond_5e
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_61
    add-int/lit8 v4, v4, 0x1

    move-object v5, v7

    move-object v7, v11

    goto :goto_b

    :cond_66
    if-nez v5, :cond_69

    goto :goto_73

    .line 2186
    :cond_69
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v6, v0, v2

    invoke-direct {v3, v5, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_73
    return-object v3
.end method


# virtual methods
.method public buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 2

    .line 1696
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 2

    .line 1691
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v9

    .line 1792
    new-array v10, v9, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v11, 0x0

    move v0, v11

    move v12, v0

    move v13, v12

    :goto_10
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v12, v9, :cond_46

    .line 1798
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    if-ne v14, v1, :cond_43

    if-nez v0, :cond_36

    .line 1802
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    .line 1801
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object v0

    aput-object v0, v10, v12

    .line 1807
    aget-object v0, v10, v12

    if-eqz v0, :cond_35

    move v0, v15

    goto :goto_36

    :cond_35
    move v0, v11

    .line 1809
    :cond_36
    :goto_36
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v15, v11

    :goto_40
    or-int v1, v13, v15

    move v13, v1

    :cond_43
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_46
    const/4 v12, -0x1

    const/16 v16, 0x0

    move v5, v11

    move v2, v12

    move-object/from16 v3, v16

    move-object v4, v3

    :goto_4e
    if-ge v5, v9, :cond_ba

    .line 1817
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v0

    if-ne v15, v0, :cond_ab

    .line 1818
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez v0, :cond_60

    if-nez v13, :cond_5d

    goto :goto_60

    :cond_5d
    move/from16 v17, v11

    goto :goto_62

    :cond_60
    :goto_60
    move/from16 v17, v15

    .line 1823
    :goto_62
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v18, p2, v5

    aget v19, p3, v5

    move-object/from16 v0, p0

    move v14, v2

    move-object/from16 v2, v18

    move-object v15, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, v17

    .line 1822
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_b1

    if-eqz v15, :cond_8c

    .line 1828
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1830
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v1

    if-lez v1, :cond_b1

    :cond_8c
    if-eq v14, v12, :cond_90

    .line 1834
    aput-object v16, v10, v14

    .line 1836
    :cond_90
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 1837
    aput-object v1, v10, v19

    .line 1839
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v1, v1, v11

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1840
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    move-object v3, v0

    move-object v4, v1

    move/from16 v2, v19

    goto :goto_b5

    :cond_ab
    move v14, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    :cond_b1
    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v20

    :goto_b5
    add-int/lit8 v5, v19, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_4e

    :cond_ba
    move-object/from16 v20, v4

    move v1, v12

    move-object/from16 v0, v16

    :goto_bf
    if-ge v11, v9, :cond_110

    .line 1849
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_108

    const/4 v4, 0x2

    if-eq v2, v4, :cond_105

    const/4 v5, 0x3

    if-eq v2, v5, :cond_db

    .line 1879
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    aget-object v13, p2, v11

    .line 1878
    invoke-virtual {v6, v2, v5, v13, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object v2

    aput-object v2, v10, v11

    goto :goto_105

    .line 1859
    :cond_db
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    aget-object v5, p2, v11

    move-object/from16 v13, v20

    .line 1858
    invoke-virtual {v6, v2, v5, v8, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_10b

    if-eqz v0, :cond_f5

    .line 1863
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    .line 1865
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result v5

    if-lez v5, :cond_10b

    :cond_f5
    if-eq v1, v12, :cond_f9

    .line 1869
    aput-object v16, v10, v1

    .line 1871
    :cond_f9
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v0, v10, v11

    .line 1872
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    move v1, v11

    goto :goto_10b

    :cond_105
    :goto_105
    move-object/from16 v13, v20

    goto :goto_10b

    :cond_108
    move-object/from16 v13, v20

    const/4 v4, 0x2

    :cond_10b
    :goto_10b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v13

    goto :goto_bf

    :cond_110
    return-object v10
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[II",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v2

    move-object v15, v3

    move v6, v4

    move v14, v6

    .line 2218
    :goto_b
    iget v7, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v7, :cond_4b

    .line 2219
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 2220
    aget-object v8, p2, v5

    move v9, v6

    move v6, v2

    .line 2221
    :goto_17
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v10, :cond_47

    .line 2222
    aget v10, v8, v6

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 2224
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 2225
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v12, v8, v6

    invoke-direct {v11, v10, v1, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 2227
    iget-boolean v10, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-nez v10, :cond_39

    iget-boolean v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v10, :cond_39

    goto :goto_44

    :cond_39
    if-eqz v15, :cond_41

    .line 2231
    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v10

    if-lez v10, :cond_44

    :cond_41
    move v9, v5

    move v14, v6

    move-object v15, v11

    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_47
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_b

    :cond_4b
    if-ne v6, v4, :cond_4e

    return-object v3

    .line 2244
    :cond_4e
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    .line 2247
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    const/4 v5, 0x1

    if-nez v4, :cond_75

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v4, :cond_75

    if-eqz p5, :cond_75

    .line 2251
    aget-object v8, p2, v6

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v13, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    move-object v7, v0

    move v9, v14

    .line 2252
    invoke-static/range {v7 .. v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IIIZZZ)[I

    move-result-object v1

    .line 2260
    array-length v4, v1

    if-le v4, v5, :cond_75

    .line 2261
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :cond_75
    if-nez v3, :cond_80

    .line 2266
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    new-array v1, v5, [I

    aput v14, v1, v2

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2269
    :cond_80
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    move v1, v0

    move v3, v1

    .line 2394
    :goto_6
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v5, :cond_3f

    .line 2395
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 2396
    aget-object v6, p3, v1

    move-object v7, v4

    move-object v4, v2

    move v2, v0

    .line 2397
    :goto_13
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v8, :cond_3a

    .line 2398
    aget v8, v6, v2

    iget-boolean v9, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 2400
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 2401
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v10, v6, v2

    invoke-direct {v9, v8, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    if-eqz v7, :cond_34

    .line 2402
    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v8

    if-lez v8, :cond_37

    :cond_34
    move v3, v2

    move-object v4, v5

    move-object v7, v9

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    move-object v4, v7

    goto :goto_6

    :cond_3f
    if-nez v2, :cond_42

    goto :goto_4c

    .line 2412
    :cond_42
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_4c
    return-object p1
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 20
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v5, v3

    move-object v7, v5

    move v6, v4

    move v4, v2

    .line 2347
    :goto_b
    iget v8, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v8, :cond_4f

    .line 2348
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 2349
    aget-object v9, p2, v4

    move-object v10, v7

    move-object v7, v5

    move v5, v2

    .line 2350
    :goto_18
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v11, :cond_48

    .line 2351
    aget v11, v9, v5

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_43

    .line 2353
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 2354
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    aget v13, v9, v5

    move-object/from16 v14, p4

    invoke-direct {v12, v11, v1, v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 2357
    iget-boolean v11, v12, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinConstraints:Z

    if-eqz v11, :cond_45

    if-eqz v10, :cond_3f

    .line 2358
    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result v11

    if-lez v11, :cond_45

    :cond_3f
    move v6, v5

    move-object v7, v8

    move-object v10, v12

    goto :goto_45

    :cond_43
    move-object/from16 v14, p4

    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_48
    move-object/from16 v14, p4

    add-int/lit8 v4, v4, 0x1

    move-object v5, v7

    move-object v7, v10

    goto :goto_b

    :cond_4f
    if-nez v5, :cond_52

    goto :goto_66

    .line 2368
    :cond_52
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v6, v1, v2

    invoke-direct {v0, v5, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2370
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    .line 2368
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_66
    return-object v3
.end method

.method protected final selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1711
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    .line 1713
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    const/4 v4, 0x0

    if-ge v3, v1, :cond_49

    .line 1721
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1722
    aput-object v4, p3, v3

    goto :goto_46

    .line 1725
    :cond_1e
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    .line 1726
    invoke-virtual {v0, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1727
    invoke-virtual {v0, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v6

    if-nez v6, :cond_2f

    goto :goto_44

    .line 1731
    :cond_2f
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget v7, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1732
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    iget-object v7, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v8, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v6, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1735
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v7, v8, v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/Object;)V

    :goto_44
    aput-object v4, p3, v3

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1740
    :cond_49
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v5

    .line 1741
    invoke-interface {v3, p3, v5, p4, p5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object p3

    .line 1747
    new-array p4, v1, [Lcom/google/android/exoplayer2/RendererConfiguration;

    move p5, v2

    :goto_56
    if-ge p5, v1, :cond_77

    .line 1749
    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1752
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_69

    aget-object v3, p3, p5

    if-eqz v3, :cond_6b

    :cond_69
    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    move v3, v2

    :goto_6c
    if-eqz v3, :cond_71

    .line 1754
    sget-object v3, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_72

    :cond_71
    move-object v3, v4

    :goto_72
    aput-object v3, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_56

    .line 1758
    :cond_77
    iget-boolean p5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz p5, :cond_7e

    .line 1759
    invoke-static {p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 1763
    :cond_7e
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1913
    iget-boolean v0, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v0, :cond_f

    iget-boolean v0, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v0, :cond_f

    if-eqz p5, :cond_f

    .line 1917
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    if-nez p3, :cond_16

    .line 1920
    invoke-static {p1, p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    :cond_16
    return-object p3
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3

    .line 1670
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_14
    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .registers 2

    .line 1682
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
