.class final Lcom/google/common/collect/DiscreteDomain$LongDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain;-><init>(ZLcom/google/common/collect/DiscreteDomain$1;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/collect/DiscreteDomain$LongDomain;
    .registers 1

    .line 118
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 170
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .registers 3

    .line 118
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .registers 10

    .line 149
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    if-lez v2, :cond_21

    cmp-long v2, v0, v3

    if-gez v2, :cond_21

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 153
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-gez p1, :cond_34

    cmp-long p1, v0, v3

    if-lez p1, :cond_34

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_34
    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Long;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Long;
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 2

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public next(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_16

    :cond_f
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method bridge synthetic offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .registers 4

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->offset(Ljava/lang/Long;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method offset(Ljava/lang/Long;J)Ljava/lang/Long;
    .registers 8

    const-string v0, "distance"

    .line 139
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 140
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-gez v2, :cond_20

    .line 142
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-gez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    const-string p2, "overflow"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 144
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 2

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public previous(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_13

    :cond_c
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DiscreteDomain.longs()"

    return-object v0
.end method
