.class public Lcom/google/android/exoplayer2/util/MutableFlags;
.super Ljava/lang/Object;
.source "MutableFlags.java"


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public contains(I)Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .registers 6

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 68
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/MutableFlags;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_4
    instance-of v0, p1, Lcom/google/android/exoplayer2/util/MutableFlags;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/util/MutableFlags;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 3

    if-ltz p1, :cond_a

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/MutableFlags;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/MutableFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
