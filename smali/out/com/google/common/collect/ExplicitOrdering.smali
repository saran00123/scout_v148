.class final Lcom/google/common/collect/ExplicitOrdering;
.super Lcom/google/common/collect/Ordering;
.source "ExplicitOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method private rank(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 45
    :cond_f
    new-instance v0, Lcom/google/common/collect/Ordering$IncomparableValueException;

    invoke-direct {v0, p1}, Lcom/google/common/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 52
    instance-of v0, p1, Lcom/google/common/collect/ExplicitOrdering;

    if-eqz v0, :cond_f

    .line 53
    check-cast p1, Lcom/google/common/collect/ExplicitOrdering;

    .line 54
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.explicit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
