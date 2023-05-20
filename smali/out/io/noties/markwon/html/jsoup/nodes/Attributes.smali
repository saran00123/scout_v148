.class public Lio/noties/markwon/html/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/noties/markwon/html/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final Empty:[Ljava/lang/String;

.field private static final EmptyString:Ljava/lang/String; = ""

.field private static final GrowthFactor:I = 0x2

.field private static final InitialCapacity:I = 0x4

.field static final NotFound:I = -0x1


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    .line 34
    sget-object v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/html/jsoup/nodes/Attributes;)I
    .registers 1

    .line 23
    iget p0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    return p0
.end method

.method static synthetic access$100(Lio/noties/markwon/html/jsoup/nodes/Attributes;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->remove(I)V

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 106
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 107
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    aput-object p1, v0, v1

    .line 108
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 109
    iput v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    return-void
.end method

.method private checkCapacity(I)V
    .registers 4

    .line 39
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/noties/markwon/html/jsoup/helper/Validate;->isTrue(Z)V

    .line 40
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, p1, :cond_10

    return-void

    :cond_10
    const/4 v1, 0x4

    if-lt v0, v1, :cond_18

    .line 44
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-le p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move p1, v0

    .line 48
    :goto_1d
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static checkNotNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 54
    new-array v0, p1, [Ljava/lang/String;

    .line 55
    array-length v1, p0

    .line 56
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .registers 4

    .line 70
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 71
    :goto_4
    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    .line 72
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method private remove(I)V
    .registers 6

    .line 166
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lio/noties/markwon/html/jsoup/helper/Validate;->isFalse(Z)V

    .line 167
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1d

    .line 169
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_1d
    iget p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    .line 173
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 174
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object v1, p1, v0

    return-void
.end method


# virtual methods
.method public addAll(Lio/noties/markwon/html/jsoup/nodes/Attributes;)V
    .registers 4

    .line 228
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 230
    :cond_7
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    iget v1, p1, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 232
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/jsoup/nodes/Attribute;

    .line 234
    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->put(Lio/noties/markwon/html/jsoup/nodes/Attribute;)Lio/noties/markwon/html/jsoup/nodes/Attributes;

    goto :goto_13

    :cond_23
    return-void
.end method

.method public clone()Lio/noties/markwon/html/jsoup/nodes/Attributes;
    .registers 4

    .line 358
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1f

    .line 362
    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    iput v1, v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    .line 363
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-object v0

    :catch_1f
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->clone()Lio/noties/markwon/html/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_2f

    .line 335
    :cond_12
    check-cast p1, Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 337
    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    iget v2, p1, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    if-eq v1, v2, :cond_1b

    return v0

    .line 338
    :cond_1b
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v2, p1, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v0

    .line 339
    :cond_26
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget-object p1, p1, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2f
    :goto_2f
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 90
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    .line 91
    :cond_a
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    .line 101
    :cond_a
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .registers 3

    .line 203
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .registers 3

    .line 212
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 348
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 350
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method indexOfKey(Ljava/lang/String;)I
    .registers 4

    .line 61
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 62
    :goto_4
    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    .line 63
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/noties/markwon/html/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;-><init>(Lio/noties/markwon/html/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .registers 4

    const/4 v0, 0x0

    .line 372
    :goto_1
    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_12

    .line 373
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lio/noties/markwon/html/jsoup/helper/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public put(Lio/noties/markwon/html/jsoup/nodes/Attribute;)Lio/noties/markwon/html/jsoup/nodes/Attributes;
    .registers 4

    .line 158
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 160
    iput-object p0, p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lio/noties/markwon/html/jsoup/nodes/Attributes;
    .registers 5

    .line 119
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 121
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_f

    .line 123
    :cond_c
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lio/noties/markwon/html/jsoup/nodes/Attributes;
    .registers 3

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 148
    :cond_7
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    :goto_a
    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 128
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 130
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 131
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 132
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_1d

    .line 135
    :cond_1a
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .line 182
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 184
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->remove(I)V

    :cond_a
    return-void
.end method

.method public removeIgnoreCase(Ljava/lang/String;)V
    .registers 3

    .line 192
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 194
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->remove(I)V

    :cond_a
    return-void
.end method

.method public size()I
    .registers 2

    .line 220
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size:I

    return v0
.end method
