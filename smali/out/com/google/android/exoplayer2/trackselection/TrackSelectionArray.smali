.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 36
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 73
    :cond_11
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 57
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_f

    const/16 v0, 0x20f

    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    .line 62
    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    return v0
.end method
