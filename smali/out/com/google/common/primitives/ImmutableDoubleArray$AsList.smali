.class Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V
    .registers 2

    .line 425
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .registers 3

    .line 422
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->indexOf(Ljava/lang/Object;)I

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
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 463
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    if-eqz v0, :cond_f

    .line 464
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    .line 465
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object p1, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 468
    :cond_f
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 471
    :cond_15
    check-cast p1, Ljava/util/List;

    .line 472
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_22

    return v1

    .line 475
    :cond_22
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v0

    .line 477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 478
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$500(DD)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_53

    :cond_51
    move v0, v4

    goto :goto_2c

    :cond_53
    :goto_53
    return v1

    :cond_54
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Double;
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 422
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .line 448
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .line 453
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    return p1
.end method

.method public size()I
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
