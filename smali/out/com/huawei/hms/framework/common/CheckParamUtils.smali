.class public Lcom/huawei/hms/framework/common/CheckParamUtils;
.super Ljava/lang/Object;
.source "CheckParamUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckParamUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNumParam(IIIILjava/lang/String;)I
    .registers 5

    if-gt p0, p2, :cond_b

    if-ge p0, p1, :cond_5

    goto :goto_b

    :cond_5
    const-string p1, "CheckParamUtils"

    .line 47
    invoke-static {p1, p4}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return p0

    :cond_b
    :goto_b
    return p3
.end method

.method public static checkNumParam(JJJJLjava/lang/String;)J
    .registers 9

    cmp-long p4, p0, p4

    if-gtz p4, :cond_f

    cmp-long p2, p0, p2

    if-gez p2, :cond_9

    goto :goto_f

    :cond_9
    const-string p2, "CheckParamUtils"

    .line 66
    invoke-static {p2, p8}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide p0

    :cond_f
    :goto_f
    return-wide p6
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 10

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-ltz p0, :cond_12

    return-void

    .line 79
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method
