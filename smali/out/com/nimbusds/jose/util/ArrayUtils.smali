.class public Lcom/nimbusds/jose/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[[TT;)[TT;"
        }
    .end annotation

    .line 40
    array-length v0, p0

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_5
    if-ge v0, v1, :cond_e

    aget-object v4, p1, v0

    .line 42
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 44
    :cond_e
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 45
    array-length p0, p0

    .line 46
    array-length v1, p1

    move v3, p0

    move p0, v2

    :goto_16
    if-ge p0, v1, :cond_23

    aget-object v4, p1, p0

    .line 47
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_16

    :cond_23
    return-object v0
.end method
