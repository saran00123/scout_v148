.class final Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    return-void
.end method


# virtual methods
.method classify(I)Lcom/google/common/collect/ComparisonChain;
    .registers 2

    if-gez p1, :cond_7

    .line 113
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$100()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    goto :goto_12

    :cond_7
    if-lez p1, :cond_e

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$200()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$300()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public compare(DD)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    .line 99
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(FF)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(II)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 84
    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    .line 89
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 73
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    .line 79
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 109
    invoke-static {p1, p2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 104
    invoke-static {p2, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public result()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
