.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TextTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final hasCaptionRoleFlags:Z

.field private final isDefault:Z

.field private final isForced:Z

.field public final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredRoleFlagsScore:I

.field private final selectedAudioLanguageScore:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .registers 11
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2882
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    .line 2883
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v0

    .line 2885
    :goto_18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_20

    move p3, v2

    goto :goto_21

    :cond_20
    move p3, v0

    .line 2886
    :goto_21
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isForced:Z

    const p3, 0x7fffffff

    .line 2892
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, ""

    .line 2893
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_37

    .line 2894
    :cond_35
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :goto_37
    move v3, v0

    .line 2895
    :goto_38
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 2898
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 2897
    invoke-static {p1, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_4e

    move p3, v3

    goto :goto_52

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_51
    move v4, v0

    .line 2905
    :goto_52
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageIndex:I

    .line 2906
    iput v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    .line 2907
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextRoleFlags:I

    and-int/2addr p3, v1

    .line 2908
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    .line 2909
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 p3, p3, 0x440

    if-eqz p3, :cond_69

    move p3, v2

    goto :goto_6a

    :cond_69
    move p3, v0

    :goto_6a
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    .line 2912
    invoke-static {p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_74

    move p3, v2

    goto :goto_75

    :cond_74
    move p3, v0

    .line 2914
    :goto_75
    invoke-static {p1, p4, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    .line 2915
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-gtz p1, :cond_97

    iget-object p1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 2917
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8b

    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    if-gtz p1, :cond_97

    :cond_8b
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    if-nez p1, :cond_97

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isForced:Z

    if-eqz p1, :cond_98

    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    if-lez p1, :cond_98

    :cond_97
    move v0, v2

    :cond_98
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinConstraints:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I
    .registers 6

    .line 2932
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    .line 2933
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageIndex:I

    .line 2936
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageIndex:I

    .line 2937
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2938
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 2935
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    .line 2939
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    .line 2940
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    .line 2941
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isForced:Z

    .line 2943
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isForced:Z

    .line 2944
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2948
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-nez v3, :cond_51

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    goto :goto_59

    :cond_51
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 2942
    :goto_59
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    .line 2949
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 2950
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    if-nez v1, :cond_71

    .line 2951
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 2953
    :cond_71
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 2859
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result p1

    return p1
.end method
