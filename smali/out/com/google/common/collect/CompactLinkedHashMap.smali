.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 87
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IFZ)V

    return-void
.end method

.method constructor <init>(IFZ)V
    .registers 4

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 96
    iput-boolean p3, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    return p1
.end method

.method private setPredecessor(II)V
    .registers 8

    .line 124
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 129
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_9

    .line 131
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    .line 134
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_11

    .line 136
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    :goto_11
    return-void
.end method

.method private setSuccessor(II)V
    .registers 10

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .registers 4

    .line 149
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_1e

    .line 151
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 153
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 v0, -0x2

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 155
    iget p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    :cond_1e
    return-void
.end method

.method adjustAfterRemove(II)I
    .registers 4

    .line 183
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_7

    move p1, p2

    :cond_7
    return p1
.end method

.method public clear()V
    .registers 2

    .line 188
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    const/4 v0, -0x2

    .line 189
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 190
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    return-void
.end method

.method firstEntryIndex()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method init(IF)V
    .registers 5

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    const/4 p2, -0x2

    .line 102
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 103
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 104
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 105
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 143
    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    return-void
.end method

.method moveLastEntry(I)V
    .registers 5

    .line 161
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    if-ge p1, v0, :cond_21

    .line 164
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 167
    :cond_21
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    return-void
.end method

.method resizeEntries(I)V
    .registers 3

    .line 172
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 173
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    return-void
.end method
