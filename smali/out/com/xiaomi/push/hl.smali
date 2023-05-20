.class public Lcom/xiaomi/push/hl;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Random;

.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C

.field private static f:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->a:[C

    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->b:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->c:[C

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->d:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->e:[C

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaomi/push/hl;->a:Ljava/util/Random;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hl;->f:[C

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-ge p0, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-array p0, p0, [C

    const/4 v0, 0x0

    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_1c

    sget-object v1, Lcom/xiaomi/push/hl;->f:[C

    sget-object v2, Lcom/xiaomi/push/hl;->a:Ljava/util/Random;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    int-to-double v3, v1

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v3, v1, :cond_b3

    aget-char v5, v0, v3

    const/16 v6, 0x3e

    if-le v5, v6, :cond_22

    goto/16 :goto_af

    :cond_22
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_36

    if-le v3, v4, :cond_2d

    sub-int v5, v3, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/xiaomi/push/hl;->d:[C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_af

    :cond_36
    if-ne v5, v6, :cond_47

    if-le v3, v4, :cond_3f

    sub-int v5, v3, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/xiaomi/push/hl;->e:[C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_af

    :cond_47
    const/16 v6, 0x26

    if-ne v5, v6, :cond_8a

    if-le v3, v4, :cond_52

    sub-int v5, v3, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v5, v3, 0x5

    if-le v1, v5, :cond_82

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_82

    add-int/lit8 v6, v3, 0x2

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_82

    add-int/lit8 v6, v3, 0x3

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_82

    add-int/lit8 v6, v3, 0x4

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_82

    aget-char v5, v0, v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_af

    :cond_82
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/xiaomi/push/hl;->c:[C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_af

    :cond_8a
    const/16 v6, 0x22

    if-ne v5, v6, :cond_9d

    if-le v3, v4, :cond_95

    sub-int v5, v3, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_95
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/xiaomi/push/hl;->a:[C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_af

    :cond_9d
    const/16 v6, 0x27

    if-ne v5, v6, :cond_af

    if-le v3, v4, :cond_a8

    sub-int v5, v3, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_a8
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/xiaomi/push/hl;->b:[C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_af
    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :cond_b3
    if-nez v4, :cond_b6

    return-object p0

    :cond_b6
    if-le v3, v4, :cond_bc

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    :goto_24
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_35

    sub-int v5, v0, v1

    invoke-virtual {v4, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int v1, v0, v3

    goto :goto_24

    :cond_35
    array-length p0, v2

    sub-int/2addr p0, v1

    invoke-virtual {v4, v2, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3e
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
