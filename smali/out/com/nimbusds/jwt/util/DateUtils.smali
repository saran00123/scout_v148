.class public Lcom/nimbusds/jwt/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSecondsSinceEpoch(J)Ljava/util/Date;
    .registers 5

    .line 52
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static isAfter(Ljava/util/Date;Ljava/util/Date;J)Z
    .registers 9

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    add-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isBefore(Ljava/util/Date;Ljava/util/Date;J)Z
    .registers 9

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    sub-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isWithin(Ljava/util/Date;Ljava/util/Date;J)Z
    .registers 8

    .line 145
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p2, v2

    sub-long/2addr v0, p2

    .line 146
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 148
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1f

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-gez p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public static toSecondsSinceEpoch(Ljava/util/Date;)J
    .registers 5

    .line 39
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
