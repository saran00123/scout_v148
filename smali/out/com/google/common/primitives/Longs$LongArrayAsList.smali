.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .registers 4

    .line 664
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    return-void
.end method

.method constructor <init>([JII)V
    .registers 4

    .line 667
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 668
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 669
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 670
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6

    .line 692
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 743
    :cond_4
    instance-of v1, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v1, :cond_30

    .line 744
    check-cast p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 745
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 746
    invoke-virtual {p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_16

    return v3

    :cond_16
    move v2, v3

    :goto_17
    if-ge v2, v1, :cond_2f

    .line 750
    iget-object v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-wide v5, v4, v5

    iget-object v4, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v7, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v7, v2

    aget-wide v7, v4, v7

    cmp-long v4, v5, v7

    if-eqz v4, :cond_2c

    return v3

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2f
    return v0

    .line 756
    :cond_30
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Long;
    .registers 5

    .line 685
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 686
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 656
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 6

    .line 762
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 763
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 698
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 699
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 701
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 710
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 711
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 713
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 7

    .line 721
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 722
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v2, v1, p1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    .line 724
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aput-wide p1, v0, v1

    .line 725
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 656
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 675
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 731
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_e

    .line 733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 735
    :cond_e
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    return-object v0
.end method

.method toLongArray()[J
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_2e

    const-string v2, ", "

    .line 773
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2e
    const/16 v1, 0x5d

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
