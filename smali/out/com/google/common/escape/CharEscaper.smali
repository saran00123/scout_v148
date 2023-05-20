.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "CharEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .registers 4

    if-ltz p2, :cond_b

    .line 166
    new-array p2, p2, [C

    if-lez p1, :cond_a

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-object p2

    .line 164
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot increase internal buffer any further"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_19

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return-object p1
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    .line 101
    array-length v2, v1

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v2

    move v1, v3

    move v2, v1

    :goto_e
    if-ge p2, v0, :cond_3e

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v6

    if-nez v6, :cond_1b

    goto :goto_3b

    .line 117
    :cond_1b
    array-length v7, v6

    sub-int v8, p2, v1

    add-int v9, v2, v8

    add-int v10, v9, v7

    if-ge v4, v10, :cond_2d

    sub-int v4, v0, p2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    .line 126
    invoke-static {v5, v2, v4}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v5

    :cond_2d
    if-lez v8, :cond_33

    .line 131
    invoke-virtual {p1, v1, p2, v5, v2}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v9

    :cond_33
    if-lez v7, :cond_39

    .line 137
    invoke-static {v6, v3, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    :cond_39
    add-int/lit8 v1, p2, 0x1

    :goto_3b
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_3e
    sub-int p2, v0, v1

    if-lez p2, :cond_4e

    add-int/2addr p2, v2

    if-ge v4, p2, :cond_4a

    .line 150
    invoke-static {v5, v2, p2}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v4

    move-object v5, v4

    .line 152
    :cond_4a
    invoke-virtual {p1, v1, v0, v5, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_4f

    :cond_4e
    move p2, v2

    .line 155
    :goto_4f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, v3, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
