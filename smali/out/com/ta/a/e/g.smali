.class public Lcom/ta/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/a/e/g$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Lcom/ta/a/e/g$a;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 30
    new-instance v1, Lcom/ta/a/e/g$a;

    invoke-direct {v1, v0}, Lcom/ta/a/e/g$a;-><init>(Lcom/ta/a/e/g$1;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_15

    .line 35
    iget-object v4, v1, Lcom/ta/a/e/g$a;->a:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 37
    :cond_15
    iput v2, v1, Lcom/ta/a/e/g$a;->x:I

    .line 38
    iput v2, v1, Lcom/ta/a/e/g$a;->y:I

    move v3, v2

    move v5, v3

    :goto_1b
    if-ge v2, v4, :cond_44

    .line 43
    :try_start_1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v1, Lcom/ta/a/e/g$a;->a:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x100

    .line 44
    iget-object v6, v1, Lcom/ta/a/e/g$a;->a:[I

    aget v6, v6, v2

    .line 45
    iget-object v7, v1, Lcom/ta/a/e/g$a;->a:[I

    iget-object v8, v1, Lcom/ta/a/e/g$a;->a:[I

    aget v8, v8, v5

    aput v8, v7, v2

    .line 46
    iget-object v7, v1, Lcom/ta/a/e/g$a;->a:[I

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v3, v6
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_43
    return-object v0

    :cond_44
    return-object v1

    :cond_45
    return-object v0
.end method

.method private static a([BLcom/ta/a/e/g$a;)[B
    .registers 8

    if-eqz p0, :cond_44

    if-eqz p1, :cond_44

    .line 63
    iget v0, p1, Lcom/ta/a/e/g$a;->x:I

    .line 64
    iget v1, p1, Lcom/ta/a/e/g$a;->y:I

    const/4 v2, 0x0

    .line 66
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_3f

    add-int/lit8 v0, v0, 0x1

    .line 68
    rem-int/lit16 v0, v0, 0x100

    .line 69
    iget-object v3, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v3, v3, v0

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x100

    .line 70
    iget-object v3, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v3, v3, v0

    .line 71
    iget-object v4, p1, Lcom/ta/a/e/g$a;->a:[I

    iget-object v5, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 72
    iget-object v4, p1, Lcom/ta/a/e/g$a;->a:[I

    aput v3, v4, v1

    .line 73
    iget-object v3, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    .line 75
    aget-byte v4, p0, v2

    iget-object v5, p1, Lcom/ta/a/e/g$a;->a:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 77
    :cond_3f
    iput v0, p1, Lcom/ta/a/e/g$a;->x:I

    .line 78
    iput v1, p1, Lcom/ta/a/e/g$a;->y:I

    return-object p0

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B)[B
    .registers 2

    if-eqz p0, :cond_f

    const-string v0, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    .line 20
    invoke-static {v0}, Lcom/ta/a/e/g;->a(Ljava/lang/String;)Lcom/ta/a/e/g$a;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 22
    invoke-static {p0, v0}, Lcom/ta/a/e/g;->a([BLcom/ta/a/e/g$a;)[B

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
