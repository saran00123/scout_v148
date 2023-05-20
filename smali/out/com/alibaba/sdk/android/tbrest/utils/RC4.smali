.class public Lcom/alibaba/sdk/android/tbrest/utils/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;
    }
.end annotation


# static fields
.field private static final RC4_PK:Ljava/lang/String; = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRc4([BLcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;)[B
    .registers 8

    if-eqz p0, :cond_44

    if-eqz p1, :cond_44

    .line 66
    iget v0, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->x:I

    .line 67
    iget v1, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->y:I

    const/4 v2, 0x0

    .line 69
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_3f

    add-int/lit8 v0, v0, 0x1

    .line 71
    rem-int/lit16 v0, v0, 0x100

    .line 72
    iget-object v3, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v3, v3, v0

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x100

    .line 73
    iget-object v3, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v3, v3, v0

    .line 74
    iget-object v4, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    iget-object v5, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 75
    iget-object v4, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aput v3, v4, v1

    .line 76
    iget-object v3, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    .line 78
    aget-byte v4, p0, v2

    iget-object v5, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 80
    :cond_3f
    iput v0, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->x:I

    .line 81
    iput v1, p1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->y:I

    return-object p0

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method private static prepareKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 33
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;-><init>(Lcom/alibaba/sdk/android/tbrest/utils/RC4$1;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_15

    .line 38
    iget-object v4, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 40
    :cond_15
    iput v2, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->x:I

    .line 41
    iput v2, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->y:I

    move v3, v2

    move v5, v3

    :goto_1b
    if-ge v2, v4, :cond_44

    .line 46
    :try_start_1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x100

    .line 47
    iget-object v6, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v2

    .line 48
    iget-object v7, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    iget-object v8, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aget v8, v8, v5

    aput v8, v7, v2

    .line 49
    iget-object v7, v1, Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;->state:[I

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    .line 50
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

.method public static rc4([B)[B
    .registers 2

    const-string v0, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    .line 16
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/tbrest/utils/RC4;->rc4([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static rc4([BLjava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 22
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/RC4;->prepareKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 24
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/tbrest/utils/RC4;->doRc4([BLcom/alibaba/sdk/android/tbrest/utils/RC4$RC4Key;)[B

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
