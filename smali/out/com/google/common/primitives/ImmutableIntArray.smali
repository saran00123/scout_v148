.class public final Lcom/google/common/primitives/ImmutableIntArray;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableIntArray$AsList;,
        Lcom/google/common/primitives/ImmutableIntArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableIntArray;


# instance fields
.field private final array:[I

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    sput-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method

.method private constructor <init>([I)V
    .registers 4

    .line 318
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    return-void
.end method

.method private constructor <init>([III)V
    .registers 4

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    .line 323
    iput p2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .line 324
    iput p3, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    return-void
.end method

.method synthetic constructor <init>([IIILcom/google/common/primitives/ImmutableIntArray$1;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableIntArray;)[I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableIntArray;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    return p0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableIntArray;
    .registers 1

    .line 83
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .registers 2

    .line 187
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .registers 3

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Invalid initialCapacity: %s"

    .line 174
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 175
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 157
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 158
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p0

    return-object p0

    .line 160
    :cond_b
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->build()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_13

    :cond_9
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    move-object p0, v0

    :goto_13
    return-object p0
.end method

.method public static copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 3

    .line 141
    array-length v0, p0

    if-nez v0, :cond_6

    sget-object p0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_11

    :cond_6
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method

.method private isPartialView()Z
    .registers 3

    .line 557
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public static of()Lcom/google/common/primitives/ImmutableIntArray;
    .registers 1

    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static of(I)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 4

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(II)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 5

    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 6

    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIII)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 7

    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 8

    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 9

    .line 118
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    const/4 p0, 0x5

    aput p5, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(I[I)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 6

    .line 131
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 133
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 134
    aput p0, v0, v2

    .line 135
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    new-instance p0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableIntArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableIntArray;Lcom/google/common/primitives/ImmutableIntArray$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .registers 2

    .line 379
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 501
    :cond_4
    instance-of v1, p1, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 504
    :cond_a
    check-cast p1, Lcom/google/common/primitives/ImmutableIntArray;

    .line 505
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    move v1, v2

    .line 508
    :goto_18
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 509
    invoke-virtual {p0, v1}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v0
.end method

.method public get(I)I
    .registers 4

    .line 344
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 345
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 520
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 522
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public indexOf(I)I
    .registers 4

    .line 353
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    :goto_2
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_13

    .line 354
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_10

    .line 355
    iget p1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int/2addr v0, p1

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 3

    .line 334
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public lastIndexOf(I)I
    .registers 5

    .line 366
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-lt v0, v1, :cond_13

    .line 367
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_10

    sub-int/2addr v0, v1

    return v0

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public length()I
    .registers 3

    .line 329
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2

    .line 565
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_a

    :cond_9
    move-object v0, p0

    :goto_a
    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableIntArray;
    .registers 6

    .line 395
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_c

    .line 396
    sget-object p1, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_18

    :cond_c
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method public toArray()[I
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 533
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "[]"

    return-object v0

    .line 536
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    :goto_24
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_37

    const-string v2, ", "

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_37
    const/16 v1, 0x5d

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableIntArray;
    .registers 3

    .line 553
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_11

    :cond_10
    move-object v0, p0

    :goto_11
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 561
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->trimmed()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method
